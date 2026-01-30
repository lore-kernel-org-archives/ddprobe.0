Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBAFA2C0F81
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769805833; cv=none; b=AeEGJAJEAXmIsXf6TjjkSY84lLzzyh0aRJNTAn5DwUuA2Hobostk+SaLJViw/RUawYr2oSxqksrOQwkNSkhvmCi9deQRLXPxs0cRiwfbBX7RN77PbvC7svP1Aoz726FeDfustjLaWl4bxurtIqBiMyl/Ow/s3B8bOfAvycm3yCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769805833; c=relaxed/simple;
	bh=J40Pp5nyHwgD+tw5jh+0FnNTrWcynLap3aNSqBvO3JE=;
	h=To:Subject:From:Message-Id:Date; b=Nyi/8OSVQ+MtRsRkVNLGHp8LJr9p0V7tbmTrco32WPjdEQq5guRAM/ZsIuDP3lc2O4g2Nn7d1nQaYgG1UXXUywQFoGJqWuQmvu73z/+ubXq5GMcbHffrLzodmKelr0or/otPD5Z0shQFCjuzLEQtWdSW4hB7/T7LzdueYJQepLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlzqIVm3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlzqIVm3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F146C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769805833;
	bh=J40Pp5nyHwgD+tw5jh+0FnNTrWcynLap3aNSqBvO3JE=;
	h=To:Subject:From:Date:From;
	b=SlzqIVm38QfniJoqj2P//RsyEeyRk3QLAwnWkwPUbuaRGuHjsrId1eowSoNXIbS2x
	 HtwVDQg0riyzt5UZHnJKcAkwhvfzuM2wjAMKWfp8XU3nheIlGc48a/5g6SeV9NASr5
	 YX5eUDQ01m8AhWtObQU3VnAgKDOW3+3BL+FCqsgdMYAl9kMwmOlXzK9JbNz5OALmWr
	 mEJdwL96OKM2WOYb93/qf4WlKF/TxnaNjzvwiagaxbF+SO6AL9Ero5TDAHMGcTzI/0
	 /pQZZ1ol3qA9t+kSUNSBJQwjnbIKMs8G6v4oy/SRp2xLfoLuRqMOAdYOaLO3aefPad
	 P1tvMhU0FWfVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B59E6BF10
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980583358.3549.13249590464522269044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af54429e0ff101f6bf8ad339f762522f7c85d1c34843243ab1c7c2b90a06a937
Date: Fri, 30 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769805833
