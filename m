Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE74273FC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715902343; cv=none; b=fccNXZNzyYhbLYTecLJiNUx0YGq89JJoM2jj1N9fPHHAabcSmmbu95jwKOkN0n7TbGWTQNW+1Cv7Sp0YTYkc/rcxpuRy2+NXi8MBP1uxBPMtLadaltppn9GaFVOzYMotTx/3U25nPzM0pTAAgzWavo+bFlBrnZ75gnjnefy+wAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715902343; c=relaxed/simple;
	bh=qrSaB8AK6931uD2aD4W/E8/6UXNMmEA/YAeLC9Wh4rM=;
	h=To:Subject:From:Message-Id:Date; b=u/W10ZcI7nZDUHlGqJISDCXxsiwnXRSszbM5nBsIGl/1h8wSBSzgodl/Pd0wvjReSgl3fazzSZGwh7gYEYT0TL0icboOBtBd8mnhClNsTPW5npEGhJgDZ7yCA4T5LtAive7o/lxfKZQFFw7ynuPDtDSkwmvoZ6fJvYz4Z2Ma96k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TspcfrEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TspcfrEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E89FCC113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715902342;
	bh=qrSaB8AK6931uD2aD4W/E8/6UXNMmEA/YAeLC9Wh4rM=;
	h=To:Subject:From:Date:From;
	b=TspcfrEEVkPwuPE02xm6rks/el2UjVNf9MIkgqeTn/5Ddt/g2tNhxGsdwbb5RzmJo
	 EoGB0jDwKVBTkMO7cNkabJy5nrgiBda/p8xWKIdOFvduU+HaF8T7S7j2YQj7PUgnZW
	 sy/tapoXalCv/wOvgJMURsG+eaVJ4x4k615J+4StY1L+r5rjsIZzsSwscJVk+K/NMh
	 4kq3CyVmnqsEEL9DU46mSQ0lZe65RyiRceFXrghIEIoNYqMyVoxCxloqQv84Y84jhX
	 vcdl4qAdOiSYr93YPRDaDfkARLPQtGh6DYJHPVAihxLtZjDjbunJ/ILWzyC0LyQEds
	 A5SjadOaMi1vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE84CC25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171590234283.13822.6600128219588420677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6370fa19d3eab64a0e0386feece619e0912a36cda742e18734b758a4f186247f
Date: Thu, 16 May 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715902342
