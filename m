Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB1731AAA8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768511034; cv=none; b=DO/YfXByM5LaS+f+FGNbbua5yYus06LTTwbZFszr8a5o54bXJgO4SQ1JWB/tlFt+qzmq85ljc/uBtP39tXzZ3fCZ+5HJASidlEj+E7zeuhXMzPVQ0Bf5pV2lKD4AljHptFpNgMAU/A4Gm9+u/MRDwapcS6STKH/Hx2MkI3Ej+es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768511034; c=relaxed/simple;
	bh=3WYf07gsEiSKWAfbMc1dsJmnBPbVlS4rrYN3CH09Tdc=;
	h=To:Subject:From:Message-Id:Date; b=K/QHZLhNnX49fgp/lbqKlgJnEBm6uxYDlWHN4J4gPGUf3U5JBgOJj7H34jkPUMFL8v3Zp/uWgxbS8z000WC75XWtikn4TloLQDV7ksGHS/bnKWIIbbhkScaNMZQHQnP1ldVTq0jnnL1eSgwI1nyRHgw/Cn2QjNWNj0ybd5VFGeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2LLsYV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2LLsYV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55FEC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768511033;
	bh=3WYf07gsEiSKWAfbMc1dsJmnBPbVlS4rrYN3CH09Tdc=;
	h=To:Subject:From:Date:From;
	b=i2LLsYV+ij4WOvGBRkA0AdqKwjY51+xgRHfJPvPmrcUad854zuLAbhRLp8+fY2NEw
	 f0vKNuz3dZlMyIsxgtlWTVIv5u52B6cZbY5SbQrLzyzmQ9gYItxyxXzfzTcuZgl46p
	 bF9mgsuY7RhIJ/25p14ZZbq+rs0uV2VT0FfuNp+Im5exFFM/tLCbRIMktoYshNs4I7
	 8VIFHpm9EHNYJ201CREuvMr3bdWGOOPJtp7QtL5SQimEdUpDqOAr5/Ogsc0STROpWO
	 8qboPHtWx3oQc+MOdutJz/SKrhY3mJ7Das5G8MJy/HM0+q+Q+Mjnq+/Ep4pG2K8n5K
	 P3xJmQRpS5yKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907ACD46626
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851103358.15108.5281222420022202024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: becf1a10439967b8d80939311d039b9513480e160bc70c05e0b5218938493b96
Date: Thu, 15 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768511033
