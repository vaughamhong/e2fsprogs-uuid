LOCAL_PATH := $(call my-dir)

include $(LOCAL_PATH)/cflags.mk

libext2_uuid_src_files := \
	uuid/clear.c \
	uuid/compare.c \
	uuid/copy.c \
	uuid/gen_uuid.c \
	uuid/isnull.c \
	uuid/pack.c \
	uuid/parse.c \
	uuid/unpack.c \
	uuid/unparse.c \
	uuid/uuid_time.c

libext2_uuid_cflags := -O2 -g -W -Wall \
	-DHAVE_INTTYPES_H \
	-DHAVE_UNISTD_H \
	-DHAVE_ERRNO_H \
	-DHAVE_NETINET_IN_H \
	-DHAVE_SYS_IOCTL_H \
	-DHAVE_SYS_MMAN_H \
	-DHAVE_SYS_MOUNT_H \
	-DHAVE_SYS_PRCTL_H \
	-DHAVE_SYS_RESOURCE_H \
	-DHAVE_SYS_SELECT_H \
	-DHAVE_SYS_STAT_H \
	-DHAVE_SYS_TYPES_H \
	-DHAVE_STDLIB_H \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_UTIME_H \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_LINUX_FD_H \
	-DHAVE_TYPE_SSIZE_T \
	-DHAVE_SYS_TIME_H \
        -DHAVE_SYS_PARAM_H \
	-DHAVE_SYSCONF

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(libext2_uuid_src_files)
LOCAL_MODULE := libext2_uuid
LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)