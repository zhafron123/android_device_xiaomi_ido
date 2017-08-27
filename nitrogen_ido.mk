#
# Copyright (C) 2016 The CyanogenMod Project
#               2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from ido device
$(call inherit-product, device/xiaomi/ido/device.mk)

# Inherit some common Nitrogen stuff.
$(call inherit-product, vendor/nitrogen/products/common.mk)

# Provide meaningful APN configuration
PRODUCT_COPY_FILES := device/xiaomi/ido/configs/apns-full-conf.xml:system/etc/apns-conf.xml

PRODUCT_NAME := nitrogen_ido
BOARD_VENDOR := Xiaomi
TARGET_VENDOR := Xiaomi
PRODUCT_DEVICE := ido
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 3
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Xiaomi/ido/ido:5.1.1/LMY47V/V8.1.3.0.LAIMIDI:user/release-keys" \
    PRIVATE_BUILD_DESC="ido-user 5.1.1 LMY47V V8.1.3.0.LAIMIDI release-keys"
