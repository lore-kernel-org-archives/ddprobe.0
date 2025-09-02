Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F8A2E03F8
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756783794; cv=none; b=lxwNFTOKrGmylrsn7mVwEvBvyT83H87dJT/DuRW1QtYwRwQQxbiPwPoEGUcFN6+VHio4+Wn4wHhlbya9ndrhX1ixKvt67JdGhVmSCA8GqOhM37jNUsiBFnMSiMNikfHscBwAYV86jPNmIIV4oXBtMB6/0im1laX5NmBVm2/CpLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756783794; c=relaxed/simple;
	bh=SHFeyrUg7tlsxLlxKIMNTEg2T9ZA+Lf+RsTIhctI0+0=;
	h=To:Subject:From:Message-Id:Date; b=dyl09ZQH/JQWy0UWmbLkK7TtGE1twEa0tyHhaw2W4VHonGwaZG+8nqj22apQADE06TukG5T4x+YBwK7PDcikcYBQcKxqud+6/VGVd25qsbadjDqpLf2h5jwJa7AKtC3VVNpkyW2RLLQ5lmIpj0QTmp+RILHmngpvSKyF0yL4c4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miwnoMCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miwnoMCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C2AC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756783793;
	bh=SHFeyrUg7tlsxLlxKIMNTEg2T9ZA+Lf+RsTIhctI0+0=;
	h=To:Subject:From:Date:From;
	b=miwnoMCgkZ2cx+gEIz6ud6gy+VDanL60/Jshu+AVwH83dfDXFb44VqfLLQlzpLDqW
	 TyK8HfOssLDt+wwFLsc6rQv3jaQm7YLlVrk0wASk/2xQg+bvX3PJblkwYY7EutWR4A
	 fdf9fL4p7grLMcC4q8s94v1TMTja/q0Eco02i3+05AKC/yh4zh7jL7K5l3cGyXO9t0
	 VZpbLDK2GZXSCSpYT7Z12FjWJ82KYS9hTYFnNNsVu8Iv7eRcOjR3+IXlLEcPu/rSgn
	 FeR4aTkVgc7PL1BD5kS72OBFWsug2aImUKlCP/bHfQMoyTB8DXdfkvinytG62AXvP5
	 327EE5VLaP2OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5CDCA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678379357.8075.6576901547457966741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a25b4d6d8048f8c2a6c5932133838e56effd24975efd60584e4b9a9efd83045
Date: Tue, 02 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756783793
