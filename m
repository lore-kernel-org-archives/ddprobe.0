Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2160518DB02
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755054594; cv=none; b=c9PvTGchu9f1pLKbiCTmJJdI6pI1Ep/YYDgPkZ0lt6HWKrz3haweNnJaZl+pL/H0WiRZPapWm9SDSJs8sXYiN9kJQw3npF1p2/7SIGrHfhrTZxRVXCTieIyZWJHxF7UYPPbBrfuX+bUoJATWaf+EcmzXEO9B9vs/c06kb4wTmQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755054594; c=relaxed/simple;
	bh=NOyuVIg3S9zZUj9sw/SAMSHwnXuydZCut1YyLc1e1c0=;
	h=To:Subject:From:Message-Id:Date; b=EUCFXpMYvOp5iM4dMa3F0YHLBsGfpF7qYNbB0HJ/k4WfSyv/yL2er7xuCfhT/DRp+nI7Pq7IJS80Wtez9PoxZ/GtlD1UZGbCEx+v2TmFxQbIk5K7TMBnLoiudDaHGeb9U8YeD3wMWMybNLGkRG6Cmci1F8lPPSJly5waOhdtqmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZd+O/1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZd+O/1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC29C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755054593;
	bh=NOyuVIg3S9zZUj9sw/SAMSHwnXuydZCut1YyLc1e1c0=;
	h=To:Subject:From:Date:From;
	b=iZd+O/1R7gy7TEDSHUrxLiymGVbO84jgmYVCo+a+f10lJQFm0OPrvHAWlVOlXNitH
	 6io42r5k6oXv2MNWsu8WxDiZhKGtRCghOGnpwEpcrWSk+oUBQrmRj1b398V+YHIAu8
	 bSiXVp6vpSL1vbL3BFZfTwo19JamcLvN0OEEAfTE2Jp5FCrY5Kuk0iqRb2wZ4bQDd/
	 yhsRytLOBH33PBhRg9Z6Rcdd3dopHsk433m5AUZPd+ss1hiHYqc09xBRWpuuEcWsFi
	 6ad3OigpzLZnt6IOF23GnnxcVBaOGEeqfJMhmgQUwjKI44aSxu1eJLt9g1TSWTYmZm
	 4R1NfmOsrYGOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E337CA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505459357.28323.6475875755380787454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c0bdfd3916533d1d4c3c51babeef147f93e17bc29ce42efaffd22cf5c5abbb
Date: Wed, 13 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755054593
