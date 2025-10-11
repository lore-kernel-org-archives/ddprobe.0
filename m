Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FE13595B
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760171994; cv=none; b=BtH16uZB7HSuqg9kIxNBxMyMR91TuAvwphzfKmli7TWI+R/OxUH73k85zg84Mh1QkSNG1iYZkCL0j3/JRqErhtnS4SMTUSeyFTrZrgNM4V+gHr/n7SfxpIoH9y40S/umV8PFjkmccoMflorT3WQWUF7YaRCdRNKN85AFbdqS4vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760171994; c=relaxed/simple;
	bh=R4MzBxsREjG9i14vYIve+IC3Q3o6dPhgl7RG9bt+wKU=;
	h=To:Subject:From:Message-Id:Date; b=bm8MCVcP1u5a22b9bux0P8x7KK2KoXT+RJvElu5DRKt5TmYv2BCxwzYhwbhHDIvU7gMnyize1Sd/SCp4QL93W8n2Zjl5Txt4DZkOkD1JGjic5snpH5+9kHZp1b3bZnhlKfxH2aKqHR0odmx6scGZ36qd0Bdrmj88GJzFPVLyhc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfLO+8il; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfLO+8il"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0389C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760171993;
	bh=R4MzBxsREjG9i14vYIve+IC3Q3o6dPhgl7RG9bt+wKU=;
	h=To:Subject:From:Date:From;
	b=jfLO+8ilfltpWNKS7lD5cWbhnTUj2FSHTJb4oRe01lDVoQUJD7DZTjAO4b/HJ3FtM
	 4GZp2cF0ecOeBpsQZ1d7vbwcXiz8bzAOaAH7/kDv6A4+6GJCCVfNL8yjVu1+rYKilK
	 qGICoYLB4m/VkqmKPY8A5B3BUCPVc1pcv8yYHzNvelxoTSqxOwlKyrCQ8GfFUDRveI
	 jElY2mZ6VreGcDU2ObaE8eevNaAbNrHyTtOfZK+0kjf0diMPVCloVv5XMxM+mSjzCL
	 orLOSTvqQIaVNtmYFlGb+HkfUch8GfMf4HkSlXqBF6vy9MhCybiDJ26rnpepf8qf0H
	 69nu0WLQ8yR/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F65FCCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017199357.28788.4092185049343015952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e6f289aa260fac5fdae9638951085d511c2311e7520ff9e9035b46467d67f2
Date: Sat, 11 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760171993
