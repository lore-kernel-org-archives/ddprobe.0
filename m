Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1890223D7F3
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764081174; cv=none; b=SxGr5WqrN2ueiyw2qQOOY4KYfSZvogS5Ikr1gLhxr70kVwRawljjnSTRfbkdQHhi9vbFRGxLCcYhqouNqkCMG/v5gI9C3PUvF+Lz0938c/jBK2cBA5cl6ePMJzC4cSq38racts/pSBW7qsuzdjMipe1QENAQDnEuA1dvRTD3lVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764081174; c=relaxed/simple;
	bh=BXSTJ6YNQgizY79II/yNuaI3PjKiRkE9cSBwIeGwQYg=;
	h=To:Subject:From:Message-Id:Date; b=oZc4CmLDqCPOnQ08fGlB6hMuikd9KMiUlKSA551vxCc0Y4nhZccE98esAGswuL5MEq+uC2vZSigJIvPsr01GL3qIHH/fb6GT+wPgxvkknqy6h0OTsnA5VWt45aqgF5zP841Hla8JYdEBglvvosusqZ1No1z7vVJZbO3nhv2OhKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucsfLX6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucsfLX6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D55C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764081173;
	bh=BXSTJ6YNQgizY79II/yNuaI3PjKiRkE9cSBwIeGwQYg=;
	h=To:Subject:From:Date:From;
	b=ucsfLX6T98ojvoehydIY+TA5dlNL2s5dnHfNuXJTtfj5yLrfsT6zy8eaHZSSzb30U
	 2RKJ/HOgmyIhbccsOSHIZtc3C9nv2p1GAg9N359ZdeIguvqognqjcDypwwleVnbxFn
	 4+SKH468mSihmanbLbo1A0FvD0ojod9CbP5pLlyhQ0L9qtSiun6k8UXXI6GqsMqn2l
	 5PeswYXwFZrsGOHzlii0ggGDsRpn6LQvSVcB3P9xox8Hw4gs9NBBSF1T3FxwbNegcb
	 lewKdMn1DcgLqd81rM1PhXvrRCb/ZMWkO51Vb8ea6/7SYNU7bwUKBVGiJdvovfIGbU
	 VBjtvzAKxS1kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90842D0E6E5
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408117358.8677.15573307017256194123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b84fcaf714ffac2c55e7e8341429f6901b67dcb12ae64ee9d2938ca5db31f4d
Date: Tue, 25 Nov 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764081173
