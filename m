Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DF321B90B
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746003595; cv=none; b=kAPKqcIg4mbHIuz83zUEmMcevFCP4J2AICIRs+TviFc8tlYSbv1K8YX4KK8bQbt7nWVOld8WasZrAGy1lX1xBcR4B/tH5c+eRLssRcRmckmr08xXmgJvFxM7EIk8b/lvz5jUO63jyRTn0LAR4NvVDbdJ3Gv3lyNor94WjTx/BuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746003595; c=relaxed/simple;
	bh=neNoG50ZsWYedspJNU68L1+/hPCEXIXamGPlGEOrECw=;
	h=To:Subject:From:Message-Id:Date; b=otNn/NUq7/Uzndv1b/aRBL5VNe3A3rEM0zz+DZ3kMcpwLzhtKgeuvs1FWeRcEGLrhTV4dlyYRzHSGWeFXfXJjcUYtLKFzWkP4C205Hpjmt9z0kQmH2yaZ5kYT/hD76AhQR9WrRdb0mQUgCmP8YghgISbaoiCUNt/ENGLaIg9lyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+Avd8IQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+Avd8IQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF2EC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746003593;
	bh=neNoG50ZsWYedspJNU68L1+/hPCEXIXamGPlGEOrECw=;
	h=To:Subject:From:Date:From;
	b=D+Avd8IQbV6M7nD77oRSNK2PtZL0RShWCHUXgpcBAC23l/LOvWV3yPfJbJ4Vv+Liw
	 bQjfYEyJBav2r0WXuSfzAnWjj+vn3oZ0hpF8cu2d73iBV9O55lSNSxyQgozNoplQvr
	 8StkP/xv9t0kkB2qwVXBnYfNjNG8cfgxzqe60xIF0oRzDmb4btVpaA1BSMF/7j6S3i
	 2qrIfBto7kz+BOrUQWQEYKiWjO/XpTsMlRFRXg2HUgeNAz4Sq5gGGQaTuIlBqXoMqO
	 L3MxkiLEz2cdRSsPkz5uIEyQRUhzC7gyjMvOblfIDNF1SKb7iYwfFVUKpywHOLPdH6
	 6Mbdj7JSEIOPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE8AC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600359357.27585.4220396527076061745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cdcb368857f07181146940e6c98ad2142e3a0b68cb81f94b53c18e76489d449
Date: Wed, 30 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746003593
