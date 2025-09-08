Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128E44A06
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757366394; cv=none; b=lMsg33e+eYMxm3i8NATfiPpbABoCvy1G6tu3syoVHRj06ig2Ru2VWOU5J86KluBcBNfKxxyf8sRubv1X8z8zE9cLGOd7GPPw/ecKODEBHbmrdIrBb1uvGdH1CmFvVXkdILi/IN6LfDbV2o1fZJIgmjZWHKeoROXB3ut4I53937g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757366394; c=relaxed/simple;
	bh=PQzWDdrCZpBWG+iaeUWTWIQN6xNrpr4NVxhpAe1I8+4=;
	h=To:Subject:From:Message-Id:Date; b=Qe4BkQLpkacr0Mj87zCbvxZm7A+KpirajGLkNvMcSLIzykwt4KNQc+Tp3JUrPENbm323JV3Sc/ssrtJ5+b3wmXgkD2Er0MuruXxp7PrfW7lekfzGTjNIL5mvqYxUNwpO8IBpgNOr8vZsh0fiBiqsv2ZcyOhoWxumZlC6T8Fiej0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVUxL1V/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVUxL1V/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D933C4CEFC
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757366393;
	bh=PQzWDdrCZpBWG+iaeUWTWIQN6xNrpr4NVxhpAe1I8+4=;
	h=To:Subject:From:Date:From;
	b=fVUxL1V/XWvQ/GqAo4CqFBH51xBloy8ilcNeS4wh6s+w7+Aq5QqzxVR/5zHfkiwqr
	 1dnIIGK8SUS/OAdiMkwpGRwv4pIiRvSrTW/emmT3JpdQZsrfuIzrsejMZ5/bfIr4nd
	 Qq6rqH5vNbCtcJuNSrccrGiPty1A74n3AS0el7b9Oe0VqXmYGu25RZLTk/e1maOuyZ
	 s3y9jR5E5EkyVTMM+BrEdcbhdqaXRLDbGXhbGgweHmaDwLzX3LrzEtTsnsrCkGEKLB
	 iu2ARKgqruyGVZXUZKPXaYUW05ePhOR1tPLFSbaD2VgmypqjT5e3W8Cunmkg2Yb99U
	 dab9cZ157BqlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E3CAC582
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736639358.25309.3980843264726653712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea352ce63d2024734eb901d58764082f582e4642bb280d3ff23cf74bb8af207
Date: Mon, 08 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757366393
