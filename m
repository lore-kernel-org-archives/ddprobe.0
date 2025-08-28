Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF2030CD89
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756370994; cv=none; b=Ehks1ymqM7pVxZveUs2B2TD03jAkBS8pkxNHUuaPzaCOnFja4GrRKqm94SgerJLC8qbln0igO9E7tYGTxbIPqMOj1VS7bxteB8mvjb6cbpAuieY4ZQv9Y8wKrDvUuDQLj6pJctAf5gKOyyZVXt3jr0o4jMcQGS7e7iXPoNJ4W4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756370994; c=relaxed/simple;
	bh=g38IBXlzOqMgv0VOCo9W9Yj4NRryKc3tqX8sFXleDKw=;
	h=To:Subject:From:Message-Id:Date; b=BbE3CET4hOVresL+qfqtoYJgKZQQsNSKwqwPCkmwzARuCY0v4cZElFFJcngFkuL+NWMG4KREWPyOa7VmpH/+Y9zlqxhBV7rVkplgmPoGujr03DxJnIUocHUfUpFHCUouIsLvY/64+YKC4RTQEED/oQKS+LrDdc2amTkBrWTa9Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naxf89AP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naxf89AP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD99C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756370993;
	bh=g38IBXlzOqMgv0VOCo9W9Yj4NRryKc3tqX8sFXleDKw=;
	h=To:Subject:From:Date:From;
	b=naxf89APRs9L9vA9QuQBWQD0mKhnP2K8oimhdARQMWQasRRArEvvuTbh+0g9ktliq
	 nTjMYkYvtljgDvN+LunYCWWwZ1BuSstshZkBhs1PC0+KLVpS64S3Lt2dAH9G5mBrHF
	 8RoGmwXlUkS4aDgs/GdLeEtjGa9tfZiniQ7rJLBhx/cpbc+XECxEV1y+JZTD9mtgdQ
	 92yyCU+JYx2woAJL3F0tMRS7e0jIQfTaSl8fZ8rvJWKoZ4XWCOioMZf7UyVPzf+rYP
	 x5yG+X7fZAo/OY0DR4H14FzuwjTKyX2qd8TfwyvHdnmSIPmCakIkEtm3/uSRWCTSCA
	 oQnhacamfbskQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A99CCA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637099362.24204.3496610751742620821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e680ebc44bccdb614039a5abb6002b0a14bca6d149720e67c1835cc6437f8414
Date: Thu, 28 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756370993
