Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AAB18AFD
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765649574; cv=none; b=OWazkuN4MFsxv9tgHGQur6zQwE6FpVAcYsNTUGRksknMyZHPHRcW3eAvp1dzJzwcNKKXMD4ekFkEBIOywdZ7YdukfqPlc/cBlN8v2X86j/VrPOUQXpVHzl6dtkSJ0y0l3Mo2TN8Je+3AkYnhWct8Veg7CkVpi+A9eTLb9Pe62CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765649574; c=relaxed/simple;
	bh=iXrPApoaglew1tx1bC17P3Io9VEertxExu4axdIasCI=;
	h=To:Subject:From:Message-Id:Date; b=e2T3omQMLBCBdN+jAaYyE0R4i1pe9umhk6wmSz5Pw2Rtd7oseG1MjRXMO3YQ74iQgcPUFa/M7acuWvSM4Otl/Rq0UsC5CHSLyHy+xR8l2l3F+uo+HjboR55D8nNY/EF1CbqBO92xCRYHHmsxnYX4lKux7pdfpvdwqM97ZwQhUo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqEYcW2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqEYcW2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D24C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765649573;
	bh=iXrPApoaglew1tx1bC17P3Io9VEertxExu4axdIasCI=;
	h=To:Subject:From:Date:From;
	b=sqEYcW2+AccsrBiO1qSWdbvVxF78B6Z1hDHbYvL9O5iEIPn7Di6Dclhnf8X4fYiFV
	 NWt5J+lW51LHdD1aNtGBzOrUBvXNWQhpXtL1MzcctEzOGCAJp+GIurvMxTGf+o48jN
	 Je9tV3J6bTnj/flhvoAncWAWCPk17T3vReaYAPZjDSBKPp8la47dzf92g2c1h5Q53X
	 pwnGvLa5YGNKdEyh1GTe0cpO3rPh7Y+Ncg+7tDFSl/MxfCp2o03SbbjLpji6ilsYvU
	 8PGUIPPE+pKQWDopk0SwED7CyQRsiiRlbU9mPjVaPv2iIyCtRPc/QCKES2fjTN7cSM
	 8dd9f5iuD3ZjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E8D5B15D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564957358.20508.5385576819629875180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5ea944af73a6f6b8a425e68971c380d6fa7862e2b58b46a1e49fce9be29be8
Date: Sat, 13 Dec 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765649573
