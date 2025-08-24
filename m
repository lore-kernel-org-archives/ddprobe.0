Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305B4166F0C
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756066794; cv=none; b=UkKpBM0ioZBVCS2VQwM5ofQYH3inPD8M9rZmb4Raal0vjE2Yw8YUxWj/8LQDxPCHyCFFpOLqgPwDkIz+XS13A1K+EPpdajgWPOoibNSY9M63GP5piQiuMy5NKZ3ToPL5rZGv9EU1tIiaoNLW68/tet/fYXJgkiBGK8vsUXnYxZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756066794; c=relaxed/simple;
	bh=/JWUegpksQwcgtgtwbETj+SLV1+ZRcrFur1Qs6E8Hgc=;
	h=To:Subject:From:Message-Id:Date; b=LNJX+HwPLgvk5Ak5JfAKZZ9eEYug8DSa/VsdvKvOTOIiJKNTraXO4pnAjYQzaxYGADdfryRF5OKD8NO4wT62cUp9ElqNHuJ30wrFO7LxWEo06lvTDzpMRszWIeVQ3821kaAuGmBrP+nW1Bayn8SAqRhOdcxLDtULsVFJNwH/W78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHdLRj7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHdLRj7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D03C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756066793;
	bh=/JWUegpksQwcgtgtwbETj+SLV1+ZRcrFur1Qs6E8Hgc=;
	h=To:Subject:From:Date:From;
	b=LHdLRj7aDXtrzTy7VT1kNrDLuFoURILp41+H2ixsa7u/EnpzC+tSkyXcMjfzvangL
	 59IFU8F7PPczvRM7xtovXEUxau74JsKGeMttCnAAWt3Dk59Vwe8WUBwTQMUD+rldx2
	 vljT7pVeKusWcA9u7jTifUIokuuyNNDFzAVGdBvd9xs08DpswsU6pfExCMZ6/VIQJV
	 +QdcCw0oSZrEivActv3pzhIJ4JKEHUbjOfU93+o2Fr1cRqZW906zuEEGZV0VcEMdAx
	 NZ9QBt8ti+sx/ha9qlbJLWX2IcCM+pVN5E9bWZKPdCJLO2im9s6trdKx42cAeC5s1L
	 IpOD64wAQQnmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB5CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606679357.25201.12048235421299331235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94a4cf17bdf948d1b884f656d51080d2eb8912fa4aeede3d515eda4b4f17b64
Date: Sun, 24 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756066793
