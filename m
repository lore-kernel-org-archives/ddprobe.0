Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755512A1CF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754564394; cv=none; b=EBVdnDe89qBYBCwfed5YSr17a23BzYnQ/ShSDFAUPBKOpsEPuA7oCU8hutYjitqcZPoOsmro6/S70L44Cwqw1ZRStW+gg3awsvMNPHZftjB65V7L7ecW+4guFarrRL4j5RkTZuQIrasHKzEM7Q24wifMRBDVbgPP6/xxU86aMF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754564394; c=relaxed/simple;
	bh=hRkQm5VRL3hVyl5UOcAXiTwXLBFQ2CPz26YkSGfr5jI=;
	h=To:Subject:From:Message-Id:Date; b=H+LgHF7tdlO7epIwD9BcgXn2hl2XMeoCFfquRCkNt86AcJPGQ8lmsWQkraTc8i/qBfRsi0MRBzDY7ZyctviNjCrQyIL7+jPuhQg5khAwPUErNpJHTonnAbO2u3RN6rI8isFSP+s7nFIHN1/GWtSTex1M/WVLbGnGkFhDT3bdHC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EjWt9ucH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EjWt9ucH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E863EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754564393;
	bh=hRkQm5VRL3hVyl5UOcAXiTwXLBFQ2CPz26YkSGfr5jI=;
	h=To:Subject:From:Date:From;
	b=EjWt9ucHV1Zl7sZ2WL5LGuy2EcpkqeBTmWzELERWDwwsgcTyjJgKv7LpISgPlz6Yj
	 yvHoh5aXntLn+3SpO5rFbdFy2LGo7WzLeaO8cIUJfP3IVxSCHWuvH3cDPsF0NY6rIu
	 uqeQQqnlO81/DZxF46lACUj66V3c3XWp5kuor6mKmS9kL49hwyHDmmIVXrogaGObIW
	 E0VVK33xMVOFfdvbImQs87tt2M1C5hkkVs75JCxLm2yqW/bmge0epi+bw3O7XS6evv
	 /9e55p0JvpLgEyq3UOTXrnhAvyKKl9bxFTc4FHtJuJa2yHsJnDiNBDF6R83gk02rzH
	 vFNEI7dLQ2aWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10DCC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456439364.16142.17743627493031459586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 861dff89e38894e3e59ec57be62381c8a9ce64db09e2ea62dafed367a806c1d2
Date: Thu, 07 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754564393
