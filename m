Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170B935BDB1
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767725034; cv=none; b=AOjtBfPx6P913XATI/ZkrMLnqsrWxhdeyOxJkKfFgRXZjZeGaCKCtAax6+4HvJCA3bbkLiTPsYCIASupeEj7/YQ0meeEpVgpc9iA+CUrIy7KUtuEfqNv3Aoho7RbbY0mgtiyzFUOXoLQMEsxR04Lagdbb7/dTgPxPEgfCOeLTiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767725034; c=relaxed/simple;
	bh=GHptVqrJf7/qb3eW9eQGaVkCr3qbMofnwpSaoiUO31Y=;
	h=To:Subject:From:Message-Id:Date; b=mMJpdu3jZRt3jHFTo+4CPqrYLYpNI4YapeZSfEg3KlG8IxRhsaZMjPhFk2ghqol6PIgJEMWp+OSVV4vSURmqaVTwciL4Mo8J94eQMtSN+hO63hpJPd2Tl2hzjco5ZK7YsIAxr2UgSPGviEVQ7ttvVzezecHeE2Bvgapd34w3/gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7CN15H7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7CN15H7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBDEC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767725033;
	bh=GHptVqrJf7/qb3eW9eQGaVkCr3qbMofnwpSaoiUO31Y=;
	h=To:Subject:From:Date:From;
	b=u7CN15H7DPPKkhtyYkPA7bwvT8TqTBcgDRmCfRKZ8+GMfdVbNNVWUDnQVdmNI81XV
	 52f4eLuwnhyEPN9qPucLqvjJF4oYbILnUKhi2WZ2P/Vd/7+XiuRdoetUccn8iFnUyo
	 62xyVwEvy+eRrov7AkRJSER6mQpGrRKv54M5qC1DLsqITL/J0ZTP5eNYwLvgp3vVxg
	 bDrPmm7abHQVrGCGrgmSm9+pDdsFMd8FCzGAQkwf0ro1laG1Ry/TygmJIK64A2TIjp
	 pVo8mihgbk9vfTMViDUBbJV7E7mzIGiIbEZEY5OanZpXMT/vw2DqwJiyxdtY+evCI+
	 JcOSvsBvxMNkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F007CEFCEE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772503357.11074.2483775944629283585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292f4aaea6af7a82b7207bcf7ff908ab6b0e8cf3fd0601eb972bff5430a4929b
Date: Tue, 06 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767725033
