Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72328472F74
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789596635; cv=none; b=EE/rDzNyEztSH1eIBBMngFWm0SLC2tk3IRD1wKvXbhpLesOdIrVObqpy9TP6RIMi520vwuCCpB3CEi4txWD07jLJCltI8TGVed6uqJIRp7RDE0aYzsHy7EXLrjxCSVBX50ftUPeIQgOmD4e5oRG+elR5YKIs6p9YXJnacwooVq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789596635; c=relaxed/simple;
	bh=F8C9kSbhpThita0X6HAvxcIyYTaMpVN0HdHg8CW7om4=;
	h=To:Subject:From:Message-Id:Date; b=GtL/9AwtA4p+vRBqlnpNfve82Jjm1EGGQsowIlSN6nqLZbtmaagzLP4Y+c7ks7imEGzpHOvcAt2pzITC0/gHmc+GKoFoo5NJT4eC2KOlVK1pOa9rtYaUeP/0hFMSXi7Qq15gnivwTAal5eDdDsO0gIq21CauFq/QZznWAqOQI38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrQyE4aN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrQyE4aN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75AEC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789596633;
	bh=F8C9kSbhpThita0X6HAvxcIyYTaMpVN0HdHg8CW7om4=;
	h=To:Subject:From:Date:From;
	b=ZrQyE4aNawDGYU9MzcPYbHH8H32h1fgzlJchQ0V/Ltnlw3GUUzQiV5N0ghmiWjCDu
	 GNCNDmrgUU0ZATyns2OxUfrMEYWVDx1bfXryi0ikK3N/TsHm5wK3aKVduaiU3qy3Qr
	 r6nCNeCkuzSYrBtwpXfRwRLaQuyo93ZKf2eoLKsLEirt+Flrnqqt8Djch1zI5pqZsf
	 Wm1eD3LLq0jvm7BP083mq2LKadnvs3zNaVjtTOOL7Wu+APeHcHQN6yoMZ2r8/lEZfG
	 mcOfDX1c1HlqRv5gxDE2GyPrVFM3m2sOAG27raN9Bbw+0Jyn657mXgip62jFSegtXw
	 Yre2fM6uVFAOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9A6C982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959663370.28021.6564186227505094458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657b3a236d8d4547f6a5592cba069a7b06fac8e115b7ad1fb54f32cb8c0faece
Date: Wed, 16 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789596633
