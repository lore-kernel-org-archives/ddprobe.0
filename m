Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEA8304BB5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763591514; cv=none; b=kUhWXd7ZoEggMAYc/OUQIlr2XNQ/9vqRbbxPhw7fRey2DsGCAPIJm8v8DMzfS1G4i38Z0SZhxw6PqBgWwFF6Dz7nEPYVAlFpUiFNFJV4O3DozNuzvsFjT+2k9K2OTTJJEy3tNutWOO4Tl0P1UQDIRBOvxgCAOUhs5Mh3LZhep0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763591514; c=relaxed/simple;
	bh=23l9Nakx0ZyadBuk4d0G7vU5BBwzwdcgmte+jjX8lq8=;
	h=To:Subject:From:Message-Id:Date; b=tsRyIzQ0vejZnUZYLEFs+TZC3jwaB2ucSZdGBKCXP3R/Q4op+4ncx+df03EvegxZqTc9yxHE4ETtgfWR1HeJ9TfYeN5TOn3fYHp4woLlLhyNiS3+Vfj3f6dZzeGKt8Er8dS1N1UhF2xDYflkL3tIZKFxTUXaKaXBGGOsOwWAU8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClpATV6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClpATV6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6434C116B1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763591513;
	bh=23l9Nakx0ZyadBuk4d0G7vU5BBwzwdcgmte+jjX8lq8=;
	h=To:Subject:From:Date:From;
	b=ClpATV6Ywk34B4hGgabJaWtjzHoVmxdrwbYzR+RWnDL+uCc3/MDCndUH4MZDj5OJB
	 a3umtjQQozS3GfzyrGUsTDy1rsYu3cAjqSq2HfaWSOBA2sLYBCFqF3fm+qbCmQy9Rk
	 ptgPxBuvsWMKN9VT0UaIrA3E/HCx7Ausd+0X5YAk2FL38zWsGxkm6ezAwTbi8l22Wt
	 w5HjRabOnqOQAyhKecFn08kUAXOPIpHJGjm7P5wOGYKzO2nPi2ZNeQvoBFG3Jkc61g
	 65V82gNy2RyAdIuqZKyobbUEvwenkF9A5VGxJ2KM1faVox9L1+qQmi0tkr9POE8uDP
	 rmchrjq+KSyqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9802ACF6488
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359151358.26981.2261815350463435559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964ff18dfe7f19b77021f97437a179de2f4eae322cef6cce8e0eec203a6126e8
Date: Wed, 19 Nov 2025 22:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763591513
