//
//  AppDelegate.m
//  mangoExample
//
//  Created by jerry.yong on 2017/10/31.
//  Copyright © 2017年 yongpengliang. All rights reserved.
//

#import "AppDelegate.h"
#import <MangoFix/MangoFix.h>



@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"demo" ofType:@"mg"];
    NSURL *scriptUrl = [NSURL fileURLWithPath:path];
    MFContext *context = [[MFContext alloc] init];
    [context evalMangoScriptWithURL:scriptUrl];
	return YES;
}

@end
