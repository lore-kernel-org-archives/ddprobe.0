Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C5D32E729
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783086514; cv=none; b=ked1+MICL+MC4VVKoPix4BYnJzzwGR4Yab3CDZViwhTZhBCuEF522G6NxTMBTrEjkNd8G1vXOFUnmobHfg67TtFcN1Xgq3FBSnyYYi2goorzuHjtgjkyU/7Dp3XyQNrEE3gmcxR2EV+gcbtGV88/E59lNywWEbZv6ilBqVBdGbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783086514; c=relaxed/simple;
	bh=4CcrgNqDRVWeuVUKYKl2ouCBNWxR6b3uMPo1IXrrvX4=;
	h=To:Subject:From:Message-Id:Date; b=TuLJVDElWjN+AOTSZfbKxoZEl9oVs9XddL4YoM1mst4uxsTj7LNPr8CjLyInMVpOZ+hvtp8sAEhtFmmdkEiMjGLsMHvpHx3D6vvfM7fTCREa/Ro4yI5j8026WitOyL7R25nVTwJkB5ybfw9xbalWv/XkapjkG2eOTtzRhaGIfCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqNJUfX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqNJUfX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCDDC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783086513;
	bh=4CcrgNqDRVWeuVUKYKl2ouCBNWxR6b3uMPo1IXrrvX4=;
	h=To:Subject:From:Date:From;
	b=GqNJUfX94kXnn4EXktGIu7P4eMA5k13N6Fh+4De74X4KvPhgFFnb94hglJ0R/0Qpp
	 3fqjMxSBrvwp87cxabdI+h/2dX0SonA30P7ZbVR9WRQBRkdJ+yyMUziFvqeCOugRp0
	 6KTHTaG9rsqvmzVZIemdaA0qNPlRoH0/Rbcdfd/FNJthJeS974EwbXWQIYbBDNb4WG
	 yAH+0gG0pJ+r/Mqr/Ow6THpIP5YR0gtJRTEoxLawB38JxHWcIrLZuOs+Opdv4dDunL
	 0udGnG5QZtBkyn4uUTvzTSi7I28BqTQD3O3+PTpsAnCL+wSYaPDnEptSA+ZEaV2ag6
	 EXN7MnyqqMsig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B0DC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308651368.12792.7940980038066282238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16a6c1cd6f1aa91a2fa4b108203e6439e9136d1420ee8124fea3b17e06b29f40
Date: Fri, 03 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783086513
