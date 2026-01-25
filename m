Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8AD318BA7
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769338434; cv=none; b=FHZA7xaFdsMgzQUA7KjRypRtg/atArG4CKBUZ883uxXL71vWem1M+TG4d7Nrfcmu3OinamJhbKdYJUgfH9ko6fqlXOaRpXor5za6/aaRhLELfpEsDlaA0Lcv6YGGKYtY88NOW8LF5SNeRicJddgq5A4v1LY8s34dicopuR8hN5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769338434; c=relaxed/simple;
	bh=dmLbv0zUOe6pAEZ+Pw1d12XYjoT81bOSy1m8GC49eSc=;
	h=To:Subject:From:Message-Id:Date; b=O1k8t3aERdB7qsGheRwvSMXZpcySwrBporASy9qAIdgjok4x46lUTSIIHPrHQtxVZi8s+jpyGnpDd7GdbnMrxDI2jHzoJ+4eGenDOK3tiHTraeMOGPFMpPm1kmfJSqIut1lf8jhLgd1jdUzUXpGE70rmh8xInzQ7bB59aaVBkgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AM+/FsgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AM+/FsgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EC2C116C6
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769338433;
	bh=dmLbv0zUOe6pAEZ+Pw1d12XYjoT81bOSy1m8GC49eSc=;
	h=To:Subject:From:Date:From;
	b=AM+/FsgKaMHw9+5e17emo7VbV1xnMq2YJJoleN7ij93sO9fSow/mCpoJf+N9EjxoC
	 tUlLjK56yzAYeTt7ODRj8G1tZmIw29yBu0S3gGMPxS57YHf8NQIuafW8UTi+ZOmkxv
	 UmzVTC3h0tEgX7Drm7crk1uemmggyF1lxANPd/FZNRnT5Mx09V7/s7UFI/oNALTEyu
	 r1/XxsWzoC8RjQ9Dfo6Dj1/om/Cy3uBZfwGLG+8dIfbvVfvcuHeLzPQ5JZYCUns107
	 CWx2ky9M818RHB8slFUTdRFwsdzRfobAmjNjZO7oTqZmwQRAWagrQDNpfl5v5USVXB
	 BvEsAtV/HtIPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C1DE63C9B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933843358.1857.3094091140711259151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db3892368ee76578fa8b7b0f5f50836b2774c7b1fac6868bac7f4c2cead7115
Date: Sun, 25 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769338433
