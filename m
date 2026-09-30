Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00333BADA3
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790757634; cv=none; b=pkD4JCSaIGbhhaQVSSdZwiI8Q3i39yYJ6/vxd0Y8omjH3ghW9CQHNeA3Pr2GdWmhLWWSEGTpms5imtjYeqdrbpIGla/76Fzu4TG0oNbZ6U+PqFgEy9DjdXc8y3Lfh0AUidJKrAgkDmyMEUOa1Ybn5xmShx5BYvPMgwE1rl9phmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790757634; c=relaxed/simple;
	bh=sFXEHkGkX88U6ochxiBlXmYuIh8FXH+nNEt+J+F8huM=;
	h=To:Subject:From:Message-Id:Date; b=M7KtKZA/WTGsuoj5xnoCF4FtSNWuwiam6tX1uuhQIphNTs0mif/5lht5ay5r6EdcDHM9vcO9u/HC2Mj9uhVLE9CLANicqw+MhlbQokINZJ3IamrswTWIsp07TQQdqVvNfLwkCk9hWlC27Qpx4XL+Hm79U/hwX+iK6KjoFIhgrJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rp++XKGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rp++XKGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDC4C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790757633;
	bh=sFXEHkGkX88U6ochxiBlXmYuIh8FXH+nNEt+J+F8huM=;
	h=To:Subject:From:Date:From;
	b=Rp++XKGg53Slr64Ws4d7HUDQzSc+DMCy78TrCOwfJSl54pR/E0Rcmjze404s3lIvV
	 j340ap2+BjqM48Crz4g6cJjQRn8elF2OK2B1fgTGaKDb+A/5CyTWZ0gm1PweWBpqGe
	 1t1IX57nY3clFxgdx8eZLikymF0fyHwAbBmaZQ3URI5O0USOrM+e0BGD/PYfiAXVWe
	 rBW4oucTPln4cfv+9pgFLkJwsXtGFUjaHnjjypx9eOp4LNcFMtDPTAM+Zp+5zcO0Dq
	 vy8v+BCTMvrBFYKhbRGE0EKWcQfrxXRbHFIsKDJjPrwhAfxUnn62wl0v5b4EpMKilk
	 h8WR2mE38PEUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB399CA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075763369.31683.13590873331629261403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d063b138f3573a7b177b680df4812558bca944626e9db6a60eec03884d1e76d
Date: Wed, 30 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790757633
