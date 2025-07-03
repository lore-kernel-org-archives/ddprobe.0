Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A40E22DF86
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751513395; cv=none; b=VF7mQUdGaTVBgz4seDVkVErEQ2EGxe2OENm3BdTisvaCl4kZLRqPtd24AxZ++cc5f3AnNgecQo2OVOEgRv8XRP/k0AY6NDB84FddVmJTHFN+L63ePcWE8UqYBnqbFmtV3KlOXIhiB0cCFHtqBNJ88uuDsuvZlk6Sdmr+rmr7sG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751513395; c=relaxed/simple;
	bh=KDZ6fKOXyz9v3FKiRRAy/KNKmsk6/Hbxx5LfmS7aSW8=;
	h=To:Subject:From:Message-Id:Date; b=tBG4zXLfj7I3gKPCMwXfTgf7obyBXXi0P5tShmnZPUo62YI1U1YOGEyf5WJtyQH/npkwSaUu2qJyPR2cglAAgVtBlBMRQEuA/rSwFTXW0imhwQDxZwb4gPXvBEqRWe15o9jsrLOYeMhgcOMe/rZp6CsQ91w5HUE7iwp47jdoqRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8ETvzmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8ETvzmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37AAC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751513393;
	bh=KDZ6fKOXyz9v3FKiRRAy/KNKmsk6/Hbxx5LfmS7aSW8=;
	h=To:Subject:From:Date:From;
	b=Q8ETvzmQCff6friMfsH796WwaL4Yf97QWzl0fpTo7fwaV42ZRGt7QOfclFYGApx25
	 aKlI2snljAniGUKP3oTY4PxRA6e7cvd9h+SaGw00ud8VGx4A2OuC8pRCP6JMdRLFCM
	 UDCI53IUxJXZ5qtSz0flekh0uc9ILi2UOXIV1zduN9KdfQ87p/RapbZqmwbOtSRMMS
	 xhLqyAi965iqvlHWR0z9oMv2hR8B3yj4/FJvmXO36zjuuzWWHIKfh5o+hAqgoAHf5b
	 sqrsCFneBIizEWNBiTM7AhsIWSEiLKVby6w+UFf1AnVnc96z5Po0+GhYSZ3uz07oAd
	 aZw5uUAfUTEXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A02C8303C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151339357.4512.9773829638602974964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d35dc641b865f3efb6d67c0721dca333e6bbc507fbfb10990b65027bbc8d1d3
Date: Thu, 03 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751513393
