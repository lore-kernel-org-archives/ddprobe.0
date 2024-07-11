Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D26116CD1E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 16:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720715243; cv=none; b=E0GDMYFjfIKjkqgdtjjAxM2xRpiJSnUSuwsC5gTAUzr35A9eLD1A2Tf51+boPqa9QqptMWkLAZ4wVYA7aYELaQP9qMb6Bnz+vcK/oJVq3upcZbgBBqiuRmg7FxFhhwlL+Rkn2h5YkeLa+Y2iTZJi6Ytpnzp/iEEj4hQKrOpZdkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720715243; c=relaxed/simple;
	bh=NHgBaaN9F89V10WxT0SGO51Q0kw0+KPgF3mpg/PXl7s=;
	h=To:Subject:From:Message-Id:Date; b=R6pZrVHdRcZxrwL1Q3aklnIOs/47TyGSn7+MXmwV45jyTOd0Mgtz6QOSQQy5wdJF3fbYKjZfigSyFmYshccY23KkVnxRMOg+6GyEDpgw7OzpEwtDhBhOcc9OH1yyeMjD+Esqxw22G0P0zH5k3P8SSdDJ74MwCgSePJMRM5byA0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlU/6KiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlU/6KiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDA21C4AF07
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 16:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720715243;
	bh=NHgBaaN9F89V10WxT0SGO51Q0kw0+KPgF3mpg/PXl7s=;
	h=To:Subject:From:Date:From;
	b=nlU/6KiFKleaHzK/Ss23T6PjvWYIexYWwH99SiR1UsIgFcRrybCBhslOPNhXz8DYi
	 xOPU7dd5orttmMUU4lPcbCzRsKkCWm4GPpvLm7pywNvVCBudE5bBi8FwHo+2//cr8i
	 WB2fog1QCV6p90pbQJ4/8rYYTJUMBU/O7+2pjSP5Y+h8vkHON76yJpLojTA4euhiL+
	 Akk9LPaICthGf8Sjy0yqExE2GbMWyoiAeFh6vzXvFvYSuvjWyxFqcZ0bQcrAHAeoqp
	 BO+eYcPQlbTMk9lqVuTfH33aRBgv8Mh/yhI2ANvZMReGqqS8xxlVHFbr1ThsDqMuaq
	 XfVvYsv/XnkSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDE1AC3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 16:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172071524282.23966.8081655152171114147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e5d85fa43ccebf8e160130f52e160bc4a106ede3aee52385512741dfb59564
Date: Thu, 11 Jul 2024 16:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720715242
