Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFCF186E2E
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764646374; cv=none; b=ZfojW+7WRre5eietCSjq7hvmlmsyJoy12U9W+w2NS+wpxukwIX3FVpwExWBGkR/ekWv/OFoPWjGlruAgVK3rAcRlpRiwyJ4xLrCUPSqNh8sgYwyHUyKhrOTzCdpUfM0Dyfx+C3oO4eJc9Q+oecRX19fJSW4RiGhNsJ7Bmkqxb9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764646374; c=relaxed/simple;
	bh=X0PFfTISvCnv9qXumjSKc2R90fz3blmrKpMHaxFrWMk=;
	h=To:Subject:From:Message-Id:Date; b=qz/6h73LaByO22o5SpRlFMIZeS9aTw6hgkpxcBx5g0GsoPpWrw8pl3yleFnIfhStwSnFPG+IsD45/Z19rzaOv62uCZwPlZWp8HyYHj9x6CSW8u+sZ6Pj313ccmd/bHxemrey86pLLN/sySECKV2gNoAMW+V1OKG3f8aIOqRwlZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1xXi1x8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1xXi1x8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6255C113D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764646373;
	bh=X0PFfTISvCnv9qXumjSKc2R90fz3blmrKpMHaxFrWMk=;
	h=To:Subject:From:Date:From;
	b=h1xXi1x8UJQo7700DxOkrXEcg7xt7EoyQH/InV4c7IvFARFRsGJA+1igP5DkIbgQ7
	 mS7UNmzc4kbvKH1d72WfGj5Euj56Dnvpf5ZCTBPeQMsUDqcNbd0kBBvNBzaYuBYZ6a
	 mRsRX83ZXdLeYPOy6Y92jeKX5oLJlegaY+xsNio8oNBXCP5d9C8W/8+jVG9aMKrCEm
	 yWC/yRsBr1SCGvr10WI45rSobl4Pc2PbE/Isi9PMIPqpUWnYZZflWTiFKHD7977Oz9
	 Atwn5UMq5Mjhwis5RIGrJnEFcn1YTtTVrFd5PXX2/BvDe4cZ2HGV9rcSENE3ltm3s6
	 PQTFDcHMjEVCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91504CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464637358.1096.13768324558352426925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19fccbaf9f7ff8323cbf2f0ce49c757bd906a7b389658db95b41cfbc0968d6c9
Date: Tue, 02 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764646373
