Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4E83806D8
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777279054; cv=none; b=r/5fILLUsTdlrQhR3K2zcFzJ9PkDEyTHBexH5uDyAzPOmB/1UoV8P7X0+42cqW8r5dWz+F3ggKTXdCUVtPljkw5v45qcbBeL/gfuAMSH0hmboCSFA0ARBW9xYMR0jiVzpxHkpTWVcZr7rLitnQ5NMA05pXouIV1z2Qpp7de4pPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777279054; c=relaxed/simple;
	bh=d6y474tLRCr1ZNWJhrc/XYVMXSM0rzA9Nycvt9n3oiI=;
	h=To:Subject:From:Message-Id:Date; b=sGtDoDo+Ic+PtdpN6M4hUITEmRDZm//f3B3m3SQEi+X5ptHwiPl8qMXiNxnDZU+OM1IPVP4pqBAGSEgjmEiN8HSXv09JoktEH1c6PFpzO0Oz2wzpivOUVtBYPu1RKD+KjdZOQu1IEOoYrs3i43YDonLpgJ5tgZF1nZfBLqfENLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6cEHl2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6cEHl2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD202C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777279053;
	bh=d6y474tLRCr1ZNWJhrc/XYVMXSM0rzA9Nycvt9n3oiI=;
	h=To:Subject:From:Date:From;
	b=H6cEHl2zMe+z90noCYx3KJKiCh9l6TAXrN9g8t9xxY7QR33+ab0UwrgOU+/yv0RyI
	 zq3lvh7vw92YUFsAS5yg5NNn2xGyO6PEVtejfkmT+ROc72l3asZIKSvlyVHrbxaAqQ
	 P2kD2KGIEQpP2v5e1jWsAfIhvG3FS5k8ogZIkseICRCOBhxc/fjRTmJc0kiGF7/VLF
	 yv2gkk10jI3GkEQtrRLvGWwwSW99mblXf3QC0IK5TZQuVRBwn4EoQwIxyT4vnoc0+C
	 hxY6KV//0ph2hjsS5fn9zMq+Gufy32fm2D5mt7VKMLaikyyVdEim4T2XA/Vqvxi597
	 7C4jM56hnbKHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1F2FF8869
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727905368.31472.5092446806981151797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bab160ec774d0a7bd3856c7c7b6ce87b4d6e86d5611f567d6fba49a2cc15095
Date: Mon, 27 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777279053
