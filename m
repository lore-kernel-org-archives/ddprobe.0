Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4973594A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777805254; cv=none; b=jB9l7OsncmsNhK4kFrUC3OxvG8YxP1ii3Y2DK3ssHJtz26V1O/9XKtu3ypfp1nB1IxqTS0wva8u/xwi79xPiJKTnmdfxt136737jgGfPt7deItp58NHB/KRULf8CuRO2AGM0iJgJ6Dg/+RBHvdZ2GUNaJi3ERFjKzDOLVQH1Azo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777805254; c=relaxed/simple;
	bh=SvUqep8wL9xvcMkPsy93WIUEhajN/Bwknuj4RulR3Tg=;
	h=To:Subject:From:Message-Id:Date; b=gsCTi+keRZEk4S4cqIC1eBABQ/lJ3I588Gm317IGq7GChAVTCqeBj/KpzmbcruKymfpMGcOmKidVGDSyA22ThOo2fMpn/MllwfJjkNyc5Y1eYPzxsm8TDGJZkIAsP2zbJ9RGS8IX1XX0yaEEedp5loF0TuuHnS0Zl9QiTE0a1R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPvWa8xJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPvWa8xJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C62C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777805253;
	bh=SvUqep8wL9xvcMkPsy93WIUEhajN/Bwknuj4RulR3Tg=;
	h=To:Subject:From:Date:From;
	b=nPvWa8xJYMw/rBcyeRkyy5hNFj/0ls3W7/ooBMJ8Y19JBAXVLIrUSUUiXRtESXQMF
	 iVxaigY5spoAQXunyhNCGhlPyk1cgEIAVOas/bKFMC5n2Gble9sDv4NOSzWTSQ0hwG
	 o7thE0K1Oq95Z3U894uppAD2n6y9xMvZWWit+DUkzr0bHRovao/WjRgEIz0Gr2i1AV
	 Rh6gMj4HvUI9cGpIyoHetVS+61ScEqfcm3i06glCAZIkOSd8V24Do7ic+ylwNC9OGZ
	 RSWdHXjiEZGzp3rkwf4qL5x8AQeTWNM0IdM3oKvm6soH7NcS+TdTsRf+yi8MdB18q2
	 GRakOApW9EmbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE52CD3426
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780525369.28487.16774653221765968031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7a9df26df467b8d5278b46dda0494beaf60d8d4c5e55cfa42a3648631961a6
Date: Sun, 03 May 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777805253
