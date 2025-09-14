Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2741A3D987
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757882394; cv=none; b=UjBvNIKzleAi9qxQgNoX9MJyCjOv+6Xtenbl2SO1ZwDjcAqGDv4mwVqGzyqlxgkj7dr/3Xj/z2IEgpe/m/cofnhzEMrYSdBCiDRHrkj6M/dDYeljAODV/2X90YgK044Fkywlt4vpdTYCfqpM72aNy3y/+f0G303E2McT/sSi3mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757882394; c=relaxed/simple;
	bh=/Qt8U9H02B5vICilWqdX7RqtsGDZp8wycQO6OSwqCO4=;
	h=To:Subject:From:Message-Id:Date; b=kzdKOlUCXY2gpEepJ9HrI0znKwSHF/laDWM1QNhbJeQiN35lWxfWh3BPQX0F4stHNgLCEdLYeiwvFu/3ErXX9EF61lh/nmbR9wqw1jXxScRgRExA6syr0Xl59JKPKQxXkfsiAT1gNFyPMydtp4ZrzQjdEdZbKVz4bXcMcvYRFZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jp31w1lQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jp31w1lQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC19DC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757882393;
	bh=/Qt8U9H02B5vICilWqdX7RqtsGDZp8wycQO6OSwqCO4=;
	h=To:Subject:From:Date:From;
	b=jp31w1lQDR6jwbYwCMqvd1F4hdPEZeZLBhrXhW89jJfkV7cmBy1TDYAFLmL4qMsaW
	 iCtIf+Ix8tGtlpPYl9WvvfB6C/CIN9/vSZchrpIRLUZuJZ5imDRZdDmdSPp3INy3sg
	 aQ6xLOHgCMq9pOv1UBSAILz7kwrsggZehJmMeB0SGaA3d4LsVi/1vmyP4BX+p+Ryjt
	 5//OnrFt/WG4/sD1I1V4ntsbaIZwZXIRNRrCqz1bdBO4D6G8/qVQ+DKyGT57N/s2W8
	 kYv2UR33H9Q+sGA7/Rx+BkRdepn9dyd1lkqFirtHOdsRkRc9mgUiZpBxHC1SAVziNb
	 ryJV0ocFySulQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99663CAC592
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788239362.6419.537459083148050394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb36084cd67f2b45c01cd0f7e08ae3530703206363c838c47816852d4befe229
Date: Sun, 14 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757882393
