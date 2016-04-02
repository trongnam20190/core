<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <?php if ($title) { ?><title><?php echo $title; ?></title> <?php } ?>
    <?php if ($base) { ?><base href="<?php echo $base; ?>" /><?php } ?>
    <?php if ($description) { ?><meta name="description" content="<?php echo $description; ?>"/><?php } ?>
    <?php if ($keywords) { ?><meta name="keywords" content="<?php echo $keywords; ?>"/><?php } ?>


    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js" type="text/javascript"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="app/static/js/library/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="app/static/js/library/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    <?php foreach ($links as $link) {
        echo $link;
    } ?>

    <?php foreach ($styles as $style) {
        echo $style;
    } ?>

    <link href="app/static/css/flag-icon.css" rel="stylesheet" type="text/css"/>
    <link href="app/static/css/reset.css" rel="stylesheet" type="text/css"/>
    <link href="app/static/css/style.css" rel="stylesheet" type="text/css"/>

</head>
<body class="">
<div id="page-wrapper">
    <div id="page">
        <div class="row">
            <div id="header">
                <?php echo $content_header; ?>
            </div>
            <div id="main">
                <?php
                if(is_array($content_main)) {
                    foreach ($content_main as $content) {
                        echo $content;
                    }
                } else echo $content_main;
                ?>
            </div>
        </div>
    </div>
    <div id="footer">
        <?php echo $content_footer; ?>
    </div>
</div>
<?php foreach ($scripts as $script) {
    echo $script;
} ?>
<script src="app/static/js/library/detectmobilebrowser.js" type="text/javascript"></script>
<script src="app/static/js/common.js" type="text/javascript"></script>
</body>
</html>