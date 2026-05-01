Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8723A874E
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777643254; cv=none; b=bIrmSgtR9zVGw75DBDxusdeNlBIp1ANC6gYk4zV8GkuizBvKjJajmV4gKUB+piQT666REZhEHptFB2RLVjUZEPg1H6vmYeNeIQvXASKguWTkJIpwsyezrSpIj6pMwaIsPBhRiILeGEoNlO0p+L+rsltUp/qZtVX50JWsnwmV0pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777643254; c=relaxed/simple;
	bh=vlM+VNpRW9+6o5zsBOhFrNpmdr/o2ICy/HW0VhgmFgk=;
	h=To:Subject:From:Message-Id:Date; b=VIxgJselkoaorSZw9/w6PicGkpen+ChhOgZrtXlhERgDvURLNxcleSLKSZmbRb3fcgZo8f9l3V+L4rePvckGDfA3m4ChDGQQtWWwmqtk94EPDgeePFD7g10weS7EOulbaD8/7lqamSfvTOxbYLrV+UsGu3yk6JEgc37IeypTKz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awoBH41s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awoBH41s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEA6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777643253;
	bh=vlM+VNpRW9+6o5zsBOhFrNpmdr/o2ICy/HW0VhgmFgk=;
	h=To:Subject:From:Date:From;
	b=awoBH41s5dQVkynxe85M1xa/m1De8Dp1kj5ZBH7WhyrQxrzr5xZ8W12/1ZaCJPqfD
	 rAxXgGvK903s1uLOILd2G/KNVAAmIOX4nFg42KbxPju4ovs7W2zlwn6NPcg5GgGxWN
	 BvwcbKHPgYpSjazl9bp/yOotgKGgl5sYnzpAuXGyL5Gu8kdKFGZHcXuF1QDnAxYIgC
	 KOKNR45eq/VA3nuENSgrb5I4ZNFu9ghjD3yjNUzJ/oCxGv+N/byvt3DTqM3ex+RXQ3
	 Mk0Ca5QlvUuW7gLRZNemtbPshZMMwEu3kFxkyDLgRrhXVtzNk4bL++Z5wf2HCb/thI
	 5zfjtBw7PnH3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9F9CD3424
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764325368.23859.18340362782194892543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9594d8b31901a5877fc6db143cc3950666290a770ba7a35957a693ba05fe38
Date: Fri, 01 May 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777643253
