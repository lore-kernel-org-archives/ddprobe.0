Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D4B239E79
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750931394; cv=none; b=dyiAdpwtU+BzcLrHDZyb/muB+kkxq31uUZJRD9lO5L3vyE1VJR8rxAPknOjbDmaW6Rt8AsdNVc4GHDoOd/+TUgFHzIi5PuQeo8plVhbkHOEyKTWaXItx+IpqvxdLjmpbLrwz1xXqK6i1WzQWlyFhgiWHr/PSDYINZIGi78yvzR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750931394; c=relaxed/simple;
	bh=YHDWWN/lV2k4C50avx0eeExJd5pZQ2rcal5QaiYAzF0=;
	h=To:Subject:From:Message-Id:Date; b=ZXJtRygRLLnusR5VLmsCrusbF8+K1WAyiwBiyoETvhEO0B4nnr4x5PxzvORT1/Cc+KcYLJw8Bze+GXN2g9rkIeluPaCXuW2hvrkEA69PgAjn0Kok5TclWu99iDN1vXdmutsnnDVy3Xas7OvKqaPhd/blxPzDCX7cw9SeBGK3CUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6j/bdz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6j/bdz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4155C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750931393;
	bh=YHDWWN/lV2k4C50avx0eeExJd5pZQ2rcal5QaiYAzF0=;
	h=To:Subject:From:Date:From;
	b=m6j/bdz5Lm7rW4VcVqo12Vsrqo+P7XDnzxNELNLTSJgKVHqIXKFSUVXI1a48z6gDp
	 c+F0+H01yAOmap+KSIcR/7wghlE3hTgaGVzR96S4/nWmtSx126df/10tnYfGbatVHr
	 pOsKq22x1kzut0ZkSp+yxtXBVkqtwQeqFI4g6o2GSmI3oO+KYNbiqK9KecW1OTAJkY
	 twO0nTGMB39WsO4ikPf7wbzKWRiFf0RHHn949cbPG4wuMJuKiRqkyks5wGFo5jgmYv
	 PAlAvx9MMFEc81E+qpo3I/SGhIYb/10MjwFwMeh1fXVyi3p+dcIrYKujC83kz70aaB
	 vtA9n2i/uJcig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F2CC7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093139358.5541.13723838234583886891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed673e2d1160dcae99e42219e491cae14cbe5236e8f3830c3a00532f659b5b1
Date: Thu, 26 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750931393
