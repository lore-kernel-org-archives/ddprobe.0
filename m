Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D44113EFE3
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757612394; cv=none; b=TjMNlHGTXj7WIMoVFxveyknw2nSnPkbw0uZlLIOXhkqibu+GMn4Po2POb3mXJu8jcM/rtcDyCu8a8EwYxfZT2x2whHa2rxd08pLpsosGieRieVqqeNr+FfI1zFcmP00S+kO4mJh5HpbmiBbn6wIab+4YaVdRtrtANjfaCjT742A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757612394; c=relaxed/simple;
	bh=AX0m8SXU/T1hIG8faH/OFghCc7Dk6AbkVTruq0ekzcQ=;
	h=To:Subject:From:Message-Id:Date; b=RK0PxcQgFZund9BSc8uSUswM075pfORHK6CcWFAVSIyoaYxPPz+ntkAFKSL2Xyl63fA0hFXe68itpHwILpoB+TYkz7g2NOJhmGwWSJw22SaPzkLwblADBxAmlwDofQ5gmJlS6lSqMCpd5bVNL+P3mrN0oUmdkmsWyPiTacanLpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oo9rTHgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oo9rTHgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3E0C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757612393;
	bh=AX0m8SXU/T1hIG8faH/OFghCc7Dk6AbkVTruq0ekzcQ=;
	h=To:Subject:From:Date:From;
	b=oo9rTHgKF45dGY2D//IabTX2UeBXMG1cEvj1p3z6aE+ykKtt1gy8af8FNo6e/BOyj
	 r08176GNbA4U9kkBMUeMcbRxTHJTffURtXXu8TKL+p4Ho0bNjZzGvYLLBPVIJXwz7I
	 RG1zV6LWX28vcr8R3P+fZq+bmnAOT9AqWOL8VLKSnmTmhoYWrcYmCIcoLIT0XATtzP
	 KwH9j2s63uyUVlpDVsweJ/RNUZNOQuTDcid/Z2+nx6TIkSlAG0x4SPbfQKlBWAsd20
	 HtUWaXCXVM5DFaHb1Di0DNqI3wxLuRoAQ2y/I74ffrQbFbO+eBibxZEKDFNoplPqO+
	 Is271KQa3aLgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB9ACAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761239357.1266.18353996451186177421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87fa984a2ebdd0907fc7d3301bf1716b3da21268fe7f4cccfa78f71cb28f3417
Date: Thu, 11 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757612393
