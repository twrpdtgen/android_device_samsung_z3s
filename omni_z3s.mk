#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from z3s device
$(call inherit-product, device/samsung/z3s/device.mk)

PRODUCT_DEVICE := z3s
PRODUCT_NAME := omni_z3s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G988B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="z3sxxx-user 11 RP1A.200720.012 G988BXXSFGWA7 release-keys"

BUILD_FINGERPRINT := samsung/z3sxxx/z3s:11/RP1A.200720.012/G988BXXSFGWA7:user/release-keys
