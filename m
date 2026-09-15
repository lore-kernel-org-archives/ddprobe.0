Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD5225B08B
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789439434; cv=none; b=N4vFs+VSEl4Q7Uw8p5gDOWUOJetOcJ99GX/SDWbVUARNnL7Y9xKcEStF9uukfYKZ2l4kCwZPmUpFfdHprcFnKY3dJMErqQ9MEsfCLCuYGIwXKdRTMGGyzACZ4PnnF6NC+i+i/QBePJKj4iN8eTVw/GjLHuTUUzFrpWJGG67vCMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789439434; c=relaxed/simple;
	bh=7/zCNoPahcC5QyFCaop34nFgiDCkGf+y5MgBzQEYy1k=;
	h=To:Subject:From:Message-Id:Date; b=DI3sgsi9Pvs/XdoWAeweTP/gZ8gUTlY4a7d/AF8vzEuQrH0VTS1rtW5NkgDn43aBenYT4YJp+MGkEhBEPGuYRSgfnxZyJQVD8gSnwtTkhUCFVWhsCVjRKhAkuP/e6PIqsuvxaZ/lx68p2xT08bBAPSQIX0BqNZLsE0mQvPGXxjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKbVJo2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKbVJo2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFD2C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789439433;
	bh=7/zCNoPahcC5QyFCaop34nFgiDCkGf+y5MgBzQEYy1k=;
	h=To:Subject:From:Date:From;
	b=sKbVJo2V24UWzZntw+EclwOEws8Y/a6NHeLFYrXL2aBtCWFglgDeLBhj9Lu2p0Vi6
	 WvgEfVEAgR5y51OOGAJowuYyuaXPnkzeyFM6zVwizGzlIlDSzAGKycUHYtFkYHyVRi
	 ORTnAia5cPNJGi56AbGR8xMVx0nCR/9/4xoSyTkgojPoXMQPAuWrclPYNICPRWlOTK
	 9hjQcqigaY2EmMtA0YxtD1jrydAU6/US9l0WTM2jB+PPuupiGVj9et/AbLZm1SDAjM
	 UasUBxOsZQwihwDLF9YxMLUZSHFa4khI99FQhxR9gfIyzpjG1Ih7DfGqtNmnkAhf2K
	 nmh9VEvFqoWKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A919FC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943943368.3690.13697246310865156195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f1d9cde9ae877227c661e230cb5ef68f9dba171e706b789ed59dc238e3cbeb
Date: Tue, 15 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789439433
