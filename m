Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0AC288CC
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752199194; cv=none; b=D22EfvDnc3nh/qRygXSkzblvdUWRLmSJp/qLzw0rO5RLjngVoi0IIfSi7a9j1lovPPaQQCGp9dP8kkMuv3pNdnYnSDlVDpTmaGBHmFicLmshRGsRf9Fp9yS/1x7Gmw4qwttdnacBPg7Wwtn6CddVZuD5p8Ijl3pzB8Ul+8JjgHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752199194; c=relaxed/simple;
	bh=LmQL//YRGmots7+wp09zMN9mPU/T3Iino1laQMvaz4M=;
	h=To:Subject:From:Message-Id:Date; b=hi3dRZyDHfpQviZnMm+slUDZgm+7XX2HxV2/Y3AZQfV8O77Gu5AYaXWdzF/BBjrnloHNeCe2RC9brYHS5iGx5Uukf1dMDEL4Ma/3dcZGaA7iSpi3JHqUujPDcbUcaCOtDerB5XEjSjJ2pESHzWjbGoe+omASmeHyyGkO49YsY3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjwxZKfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjwxZKfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35CCC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752199193;
	bh=LmQL//YRGmots7+wp09zMN9mPU/T3Iino1laQMvaz4M=;
	h=To:Subject:From:Date:From;
	b=bjwxZKfXjbOHUT2pq5wuXoxjKGnJYNAsnMX/jmdumOpqfGcKrsln6nXgPrJS0/WRa
	 CHsbr7hM/6OStGEM+qr9wskKExyncfDoXXAzSS8RWnICUws58kG20FoGk6rxHi2q5c
	 ixd/+xcI8rlkvvNz0IMpyWaJJnKCmz6je4CSeOnRHqB2HFgSDp7jgrZCjFVnDByEv+
	 C0kav4E9MfCKw9wRsZBenBNeDQdPmpalZK/e4D7zFYW1b3VQDUz9BB0Yig4B9tRz+e
	 VUBCxCa1nPVHgcv9Ok8Er/N5NBANceAXFQnsGzxY9Q9jEjIsdXovuaCDaJIvlu8hqg
	 oOTP3FecUr1DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A6C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219919358.7158.7082592790108906880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03dd118940b664023b463f7cc4b199cf121f33cdb3f1705a4ba79e13aa5adb65
Date: Fri, 11 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752199193
