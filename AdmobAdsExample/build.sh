#!/bin/sh

mkb --buildenv=SCONS --debug
mkb --buildenv=SCONS --debug --deploy=android

adb uninstall com.mycompany.s3ehelloworld
adb install build_s3ehelloworld_scons_x86/deployments/default/android/debug/s3ehelloworld.apk