#
# Copyright (C) 2009 The Android Open Source Project
# Copyright (C) 2011 The CyanogenMod Project
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

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS += device/bn/encore/overlay

$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)

# Init files
PRODUCT_COPY_FILES += \
    device/bn/encore/init.encore.rc:root/init.encore.rc \
    device/bn/encore/init.encore.usb.rc:root/init.encore.usb.rc \
    device/bn/encore/ueventd.encore.rc:root/ueventd.encore.rc

# key mapping and touchscreen files
PRODUCT_COPY_FILES += \
    device/bn/encore/cyttsp-i2c.idc:/system/usr/idc/cyttsp-i2c.idc \
    device/bn/encore/ft5x06-i2c.idc:/system/usr/idc/ft5x06-i2c.idc \
    device/bn/encore/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Wifi
PRODUCT_COPY_FILES += \
    device/bn/encore/prebuilt/wifi/cfg80211.ko:/system/lib/modules/cfg80211.ko \
    device/bn/encore/prebuilt/wifi/compat.ko:/system/lib/modules/compat.ko \
    device/bn/encore/prebuilt/wifi/crc7.ko:/system/lib/modules/crc7.ko \
    device/bn/encore/prebuilt/wifi/mac80211.ko:/system/lib/modules/mac80211.ko \
    device/bn/encore/prebuilt/wifi/mmc_test.ko:/system/lib/modules/mmc_test.ko \
    device/bn/encore/prebuilt/wifi/pcbc.ko:/system/lib/modules/pcbc.ko \
    device/bn/encore/prebuilt/wifi/scsi_wait_scan.ko:/system/lib/modules/scsi_wait_scan.ko \
    device/bn/encore/prebuilt/wifi/wl12xx.ko:/system/lib/modules/wl12xx.ko \
    device/bn/encore/prebuilt/wifi/wl12xx_sdio.ko:/system/lib/modules/wl12xx_sdio.ko \
    device/bn/encore/prebuilt/wifi/wl12xx_sdio_test.ko:/system/lib/modules/wl12xx_sdio_test.ko \
    device/bn/encore/prebuilt/wifi/wl12xx_spi.ko:/system/lib/modules/wl12xx_spi.ko

PRODUCT_COPY_FILES += \
    device/bn/encore/prebuilt/wifi/ti-connectivity/wl128x-fw-4-mr.bin:system/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin \
    device/bn/encore/prebuilt/wifi/ti-connectivity/wl128x-fw-4-plt.bin:system/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin \
    device/bn/encore/prebuilt/wifi/ti-connectivity/wl128x-fw-4-sr.bin:system/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin \
    device/bn/encore/prebuilt/wifi/ti-connectivity/wl127x-fw-4-mr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin \
    device/bn/encore/prebuilt/wifi/ti-connectivity/wl127x-fw-4-plt.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
    device/bn/encore/prebuilt/wifi/ti-connectivity/wl127x-fw-4-sr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
    device/bn/encore/prebuilt/wifi/ti-connectivity/wl1271-nvs.bin:system/etc/firmware/ti-connectivity/wl1271-nvs.bin \
    device/bn/encore/prebuilt/wifi/ti-connectivity/wl1271-nvs_127x.bin:system/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin \

# Bluetooth
PRODUCT_COPY_FILES += \
    device/bn/encore/firmware/TIInit_7.2.31.bts:/system/etc/firmware/TIInit_7.2.31.bts

# Overlay (omapzoom)
PRODUCT_COPY_FILES += \
    device/bn/encore/prebuilt/GFX/system/lib/hw/overlay.omap3.so:/system/lib/hw/overlay.omap3.so 

# Place permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \

# Vold
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/vold.encore.fstab:system/etc/vold.fstab

# Media Profile
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/etc/media_profiles.xml:system/etc/media_profiles.xml \
   $(LOCAL_PATH)/etc/media_codecs.xml:system/etc/media_codecs.xml

# Clears the boot counter
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/clear_bootcnt.sh:/system/bin/clear_bootcnt.sh

# Audio Files - Need to fix Source - THANKS STEVEN676 (SLUO in irc)
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/alsa/alsa.omap3.so:system/lib/hw/alsa.omap3.so \
   $(LOCAL_PATH)/prebuilt/alsa/libaudio.so:system/lib/libaudio.so \
   $(LOCAL_PATH)/prebuilt/alsa/libaudio.so:obj/lib/libaudio.so \
   $(LOCAL_PATH)/prebuilt/alsa/alsa.omap3.so:obj/lib/alsa.omap3.so

# Art
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/poetry/poem.txt:root/sbin/poem.txt

# update the battery log info
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/log_battery_data.sh:/system/bin/log_battery_data.sh

ifeq ($(TARGET_PREBUILT_BOOTLOADER),)
    LOCAL_BOOTLOADER := device/bn/encore/prebuilt/boot/MLO
else
    LOCAL_BOOTLOADER := $(TARGET_PREBUILT_BOOTLOADER)
endif

ifeq ($(TARGET_PREBUILT_2NDBOOTLOADER),)
    LOCAL_2NDBOOTLOADER := device/bn/encore/prebuilt/boot/u-boot.bin
else
    LOCAL_2NDBOOTLOADER := $(TARGET_PREBUILT_2NDBOOTLOADER)
endif

# Boot files
PRODUCT_COPY_FILES += \
    $(LOCAL_BOOTLOADER):bootloader \
    $(LOCAL_2NDBOOTLOADER):2ndbootloader

# ramdisk_tools.sh -- use on-demand for various ramdisk operations, such as
# repacking the ramdisk for use on an SD card or alternate emmc partitions
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ramdisk_tools.sh:ramdisk_tools.sh

# postrecoveryboot for recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# Product specfic packages
PRODUCT_PACKAGES += \
    hwprops \
    lights.encore \
    sensors.encore \
    uim-sysfs \
    libaudioutils \
    audio.a2dp.default \
    libaudiohw_legacy \
    audio.primary.omap3 \
    audio.primary.encore \
    tinyplay \
    tinymix \
    tinycap \
    acoustics.default \
    com.android.future.usb.accessory \
    dhcpcd.conf \
    dspexec \
    libCustomWifi \
    libbridge \
    libomap_mm_library_jni \
    librs_jni \
    libtiOsLib \
    make_ext4fs

# OMX components
# Addition of LOCAL_MODULE_TAGS requires us to specify
# libraries needed for a particular device
PRODUCT_PACKAGES += \
    libI420colorconvert \
    libLCML \
    libOMX_Core \
    libOMX.TI.AAC.decode \
    libOMX.TI.AAC.decode \
    libOMX.TI.AAC.encode \
    libOMX.TI.AMR.decode \
    libOMX.TI.AMR.encode \
    libOMX.TI.AMR.encode \
    libOMX.TI.G711.decode \
    libOMX.TI.G711.encode \
    libOMX.TI.G722.decode \
    libOMX.TI.G722.encode \
    libOMX.TI.G726.decode \
    libOMX.TI.G726.encode \
    libOMX.TI.G729.decode \
    libOMX.TI.G729.encode \
    libOMX.TI.ILBC.decode \
    libOMX.TI.ILBC.encode \
    libOMX.TI.JPEG.decoder \
    libOMX.TI.JPEG.encoder \
    libOMX.TI.JPEG.Encoder \
    libOMX.TI.MP3.decode \
    libOMX.TI.Video.Decoder \
    libOMX.TI.Video.encoder \
    libOMX.TI.VPP \
    libOMX.TI.WBAMR.decode \
    libOMX.TI.WBAMR.encode \
    libOMX.TI.WBAMR.encode \
    libOMX.TI.WMA.decode \
    libVendor_ti_omx

PRODUCT_PACKAGES += \
        libskiahw

# from omap3.mk.

PRODUCT_PACKAGES += \
	libdomx \
	libstagefrighthw \
	libion \
	smc_pa_ctrl \
	tf_daemon

PRODUCT_PACKAGES += \
	cexec.out

PRODUCT_CHARACTERISTICS := tablet

# Screen size is "large", density is "mdpi"
PRODUCT_AAPT_CONFIG := large mdpi

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set property overrides
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    dalvik.vm.heapsize=128m \
    ro.opengles.version=131072 \

$(call inherit-product-if-exists, vendor/bn/encore/encore-vendor.mk)
#$(call inherit-product-if-exists, hardware/ti/wpan/ti-wpan-products.mk)
#$(call inherit-product-if-exists, device/ti/proprietary-open/wl12xx/wlan/wl12xx-wlan-fw-products.mk)
