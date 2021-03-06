//
//  WVSAppDelegate.m
//  WeaveScheduling
//
//  Created by Mikhail Larionov on 7/5/14.
//
//

#import "WVSAppDelegate.h"
#import "WVSMainViewController.h"

@implementation WVSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // Parse
    [Parse setApplicationId:@"MhPmSSQ9FXm0fe9iEdHxLwKBTbld7Kq67mX5d7qz"
                  clientKey:@"YisWNb5gN9QD2PMpZWzrGWQetiXaZ8GC0CH6wVVO"];
    [PFUser enableAutomaticUser];
    
    // Navigation controller and main view
    WVSMainViewController *mainViewController = [[WVSMainViewController alloc] initWithNibName:@"WVSMainViewController" bundle:nil];
    UINavigationController* navController = [[UINavigationController alloc] initWithRootViewController:mainViewController];
    navController.navigationBar.hidden = TRUE;
    navController.interactivePopGestureRecognizer.enabled = NO;
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    
    // Navigation bar customization
    navController.navigationBar.translucent = NO;
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithHexString:@"464545"]];
    navController.navigationBar.tintColor = [UIColor colorWithHexString:@"48dc9b"];
    [[UIBarButtonItem appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithHexString:@"48dc9b"], NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, nil]];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
