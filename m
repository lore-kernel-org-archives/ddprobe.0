Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219E73C944F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774602894; cv=none; b=nLkxNFVyOS9kK3N2L00XyfVRcNzECf0JeCEaIdsMD04tmu9NvvpvDa3m9hvIgdanELVK6jvc3MY86zzFRWNvSW5TgizRHsRanlMUKm3SWE1y5XihbPyFX+qm6Or21ZaIrUCHtTJnirUR+gL1h+e59i9L/AiB+rSabq8aTCc4PyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774602894; c=relaxed/simple;
	bh=o0px/NrArLIOtgKv6ipNvEfQdDAyaEk0ly9xl9loOfY=;
	h=To:Subject:From:Message-Id:Date; b=Hpsjj5/5YslyJSrtDHOAB2bGKoKdx/84KpkopQue6RBPCkxI2FvRKChsx20sfNGWNSyVmefeIFa8CVPhSmsGs048gyxsiSHNwPYg02xjLFXjxSJOASH0h7vecMTCIsCHGF6lGUrBDEEvFsgl941W2w99jzNKSFQAAtEkx0qP4fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACJAChnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACJAChnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE04DC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774602893;
	bh=o0px/NrArLIOtgKv6ipNvEfQdDAyaEk0ly9xl9loOfY=;
	h=To:Subject:From:Date:From;
	b=ACJAChnG1GILdlhrQJpdDq/vVKNNzv1D6PONfsagn1VFsUYu6nAthRrEmermuOuX0
	 H/DS7Lufy9TD8RFIXznQ4Wk79lniuRcxIDhz7DjUiLWFy1VgVU0SIemT+rtCFqGFYA
	 wgccF+sNi0+mzoLsBn8a0hhyEgXqemRMqwYTtPlkQuGXcioxul5iDOQV5+A0fqR7T/
	 qwKXLD5sFdLe+1wYGY8SMjrXJ5BJ2Y0GKv31mQrVI4FSKR+rotW/3FPvcQ8yK+l8kf
	 Bbi0TMxu6CC7gSkWFisQm6CxTnr7bNUgGuOkHPlB962NLj1ApHMs2I1Q7P/uFPoEgq
	 AEoCFFlzlKiUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7FE10BA458
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460289362.13095.5047862224169328347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ea42eafae9f206d7e650f370a392441fab56671889d2d137d62eb1422f1704e
Date: Fri, 27 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774602893
