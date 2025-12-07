Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BC02BE7B6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765128174; cv=none; b=jhrCYNNaiMW4pbzTB+k43StLiWs6eSEvaKtZa8Y1PAIwAiDpUTPjFQFuFvAXijAC61ZJJNMQY8LUu4RFY8JvlsxwUjqQPTR8qJVan4euJuSjM/I8CHIgaL5fnFoODH2r/jYuppKGRDJpB5yjTiJTgGXO8mATTl6PGBj5IxodL3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765128174; c=relaxed/simple;
	bh=hX/BaIDvrcruUh72OKz7HZ8cHdrn0yVmSeBtsP8R5HA=;
	h=To:Subject:From:Message-Id:Date; b=uij/LaZ+MxAO28OWg44Z1A1AqoNme0t68cYRipbnGNRaIRs2aPaDb0MfKjjY2g7j02XDbvMw9ME3d7rsQMiLPuJn4gXxf1ZxAfC7bho/4dLXTDOfRM/sDuXOVTEtZYeYeKDymAvAQ89xAlP/VHfS768qudrGnJyHweI/gYjJpfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oy7v4yvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oy7v4yvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E46C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765128173;
	bh=hX/BaIDvrcruUh72OKz7HZ8cHdrn0yVmSeBtsP8R5HA=;
	h=To:Subject:From:Date:From;
	b=oy7v4yvy5tLU0CQIhIIySR2sMQqVX7Qd78g77x5y+N6F5MfBfvFeOKoW0wjEngk4k
	 PrHJT5eroVChBId9RSoK81uSKtBdXPsXuTzNtQl3JAks9Lj6esLI5mLSCCGtV9mkPj
	 IYpuBJfdKCMAo7Jd74mQBW8D22uS/+PDlmLI7Y08Y6FBew4g0k2BlnvVqx63S9lKnl
	 K6bLSRLSgBIhVBn1V8ZCusWIrHtM+oZTsrrLiBUGoQc7Dn5RuNEEFd1b20yaxPZHiD
	 Mo46ghsOM9r0jwJpisr2JGxV7NEdKl+owagIItD0I9dHSni0c6EuW4aR4OfhmONFtY
	 NkR2SWeXDZKHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF9D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512817358.31055.2439731786216717338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea14a324f8cd2f596d933d1e465a60d668573cbb2991f10e46a31ddb77dd1692
Date: Sun, 07 Dec 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765128173
