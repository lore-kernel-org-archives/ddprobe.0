Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215F3849C
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759629594; cv=none; b=dRT3MfuB2cnnvJrbaE4qh0Vp6fge6QB0MhN5XVbJ2EHALpE+3Ofbkj/d9yjp+CsiYZfAQiTAU3IYl/l+uFG65Bblil5Wt/0zdZoEBqrtRey7gsb0oOjtZ23WsS3kDc1C4XMuPOECmK+JX+y1HJ5Fh+0AYQcX655kMo4G85q92q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759629594; c=relaxed/simple;
	bh=f8Wlo9dtM2M60XsqPNpMKQKc1k5jSG/PxJh0amyXz/4=;
	h=To:Subject:From:Message-Id:Date; b=SUDb8VEZcFWNXADIAGIsIZGdHonzQ1+CnJJ0hDdVaciMon3b+kqrbfOnCxAqg0iqMIFxc+Mkjwh3Ir0GCJ5lVVTunpXymktml5I1M4fwGFe+npSve/jyyKiMmu70F8DZcvMo95La15VnBYi1k8kza+kCXGES3zayWQZ41vSA9FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ze4FtBoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ze4FtBoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6355C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759629593;
	bh=f8Wlo9dtM2M60XsqPNpMKQKc1k5jSG/PxJh0amyXz/4=;
	h=To:Subject:From:Date:From;
	b=Ze4FtBoLblRP427Mh6Kx1S18qY6e17c+yAq1ZQaCnErTn00QZMXmU55vk04x/WAAy
	 pngTvj6zPi3AYMl9qAzDes2CSAPEqqIceLO+7WaWdoZvRxn7pJ9sp0AMGHAMwMPUhl
	 wrIeNTAfPM9lVXdCgtzjGxG8++xYbiugO0XSvTsPIIjVRgwhNlfPp/Vgfl3tdzyd3m
	 jXv18v+fkiX2epQ6qxCwCtNcpIpHTAPFLszHlzmnRrl1u/QJTcQp1LcQubvpNkDX5r
	 EFhu/EcqjJRfRpDi014w4kGKz/37sy0Rk0hHJPROoVS6iQ8DG4sgO079xlbVaHgZ83
	 fOUvKszNnU/Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9189BCAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962959357.11363.7332653905712646196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab45b3258c8feae409bbe2bbc778b93ae818555acb7fe7802a861c432e67e905
Date: Sun, 05 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759629593
