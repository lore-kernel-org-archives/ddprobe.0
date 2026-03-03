Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8307747F2EB
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772561694; cv=none; b=eVFl0T6p9pUcwmxx1dVm43uwKIWq6JNEXbF8Rckld1GD5pcCGLXehQlG7C+y9vs4aaGbQU8ZDc/TDrtCVWYbvaj3v1gRTOsbbm0GpXSlN3Wtp16ATW8I/IKNw6/g+sYVpWUlfRWLaaqV4X/U4uL96aBsWlbbcJXLdmYAR2ug7bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772561694; c=relaxed/simple;
	bh=FR4j0pqhqGLQELjGV1geMvcNaTINjSt3a1C9Bq1i0co=;
	h=To:Subject:From:Message-Id:Date; b=urlbJbGT9n4A+v18kasPy95PXtfl5bHt4hfzau0w/9lFiGGxLaAUuJ/efxvl/EkO9G9jYS64GsyiFf+xfGzJY027Qk49aac7j4x769sHOG9/rWMk73J2t9EMzoEwiHeDevGFDrDsT+PLBVe3Qq6ZLVUxTXje68AlPfxrNR6K+Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/06ODw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/06ODw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FE38C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772561694;
	bh=FR4j0pqhqGLQELjGV1geMvcNaTINjSt3a1C9Bq1i0co=;
	h=To:Subject:From:Date:From;
	b=T/06ODw6W8I47jmHwNFNLOYWTivKeuxifjbd3Hy1yDCVzkjYTM6jNV2ecVf7ikBRi
	 FRO9wsWl5It355p1CBBDMiYQBedpCIRlkbOcDNryfATWaxEa7229yKsLC9EEwXnjY1
	 Usnna2tuTOcDEof148e7w5XQSUjNMya+mCIH/zWentcKABvGEzSXGe/rMNUI9wYfE5
	 7uuaxX/4XBMDCMHmD9E4TQGOnmzPRex7cN5y6ncEmuLZLibNhu37DB95BEha0If59F
	 JJgXA3BW/5+aE0RZMRFCJDhyb35WdnLRqpUtltaFS9kGIP9UzyWmh3rHPtBzcncfCJ
	 kmCxUbmXL/Ymg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFADDEDEBE2
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256169380.28601.15417441146129772621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c1642087f8679541a956b8bf3777e562d1f12ed32aa345675c7eca92da752b
Date: Tue, 03 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772561693
