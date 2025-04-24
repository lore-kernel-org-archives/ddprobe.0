Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F7719CCEA
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745482794; cv=none; b=OHSbCgiqh3tSE3VbLvhytmnQgibmazYyTBga11L1umtSiBC/h1h+SYa+HcwfyhNQZCZhjOlw9zbBNnGAKkUbNE6AQ0SSvNhFWFZ7W7Gjikp40f7RqkTSqWyC4LWYHMrY5iCCZ/2rTztn65bk+/dS3YfLClKw4ETlGErUHpOkFGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745482794; c=relaxed/simple;
	bh=v4TRtDUUCaP/GpyNVIFIFF0Ut8DFISf5ZUGSA8qVOkI=;
	h=To:Subject:From:Message-Id:Date; b=oGTQHWBw384dgS2vNh8XYZrYh15UrlQidFqMhRvh1eu5EqHic18IXiFf33J9JEwAqrCMqblxnl2u2TEDU7Ml4J/QeND+bJVe2e3pJkUaB2wzw2/kHVUF4KcacWL9HLvN40rM7vMO02CD1m/j1SW4aNs3UsNYrQUCLuS0aTKO4hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCYTmeWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCYTmeWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F846C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745482793;
	bh=v4TRtDUUCaP/GpyNVIFIFF0Ut8DFISf5ZUGSA8qVOkI=;
	h=To:Subject:From:Date:From;
	b=NCYTmeWDjovPvHuZsrHcCi8VIkFLcEvnTErT7NsrkuC+GPSDoNFRybaECH4/I3M2y
	 n06aD4fHIu3+FQyhCnkMcNb5cFKGXRt/RXPgrn3KK9nsT8r7nwZCODcybW25gwRAHt
	 acmVBcY/FLFpoCcP99vBLcEEAcnR6J6pj2KMhjS0OGEAiSz2S8AQi/TRmFeAApLJF5
	 8ZTzf5aUyGGojMtqVvLekRkyDj7djKBUQHfbYe4n8hjjPL6V0kN1OK6lCkGcYsDOTg
	 Vdz1xBCU0jx6/Wq4K1sRdmPlHEHAoxGGpKjj+mRC3gCUCgRCnGVynKE55K4TtvQ7t5
	 ZbrnnU2vtDXcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE56C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548279357.25516.2811496016659691914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad5275dffa8547a2901c9f85be6e9398c5d177c5e6c2df92f684d37444a6b82
Date: Thu, 24 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745482793
