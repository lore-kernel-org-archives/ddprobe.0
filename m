Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC2256B71
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 12:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712926763; cv=none; b=b5LO1FLKjDOXc/e4mlb/CKc/nQqSRWCM92SAQoZ48xQViW25d7BMA8B4LgccfWxePovZnYZ/Wjb+CdnNdtLcDoLxn6qVJLbt/L0bPM60LuBJbMibqZWjsBqEyTJV0ERld5QgtF1Y+Np4akwxi3VeEzoYHkvibdTuJJyp04PUsFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712926763; c=relaxed/simple;
	bh=8QPLeccTe9WKuJTpaDLm3fCYA8h+aa4OV7C1cF40hwM=;
	h=To:Subject:From:Message-Id:Date; b=FTjt+zA9suKWjePn460HfSqIZew1r/Yc5yPqZeHsvzdX4Ks2uK/Te8xvgqspbZ8R6p0S3Jb0VnOfQynTNpcKwPUMIOtivSz1oceQYgAjVo5womLVHuN3VLRHGZkeoamEqO0Y7JJ9AOLTvt/OfAdUhOjGPPGO2r9CozD/l1abC98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSXf4ow4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSXf4ow4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE031C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 12:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712926762;
	bh=8QPLeccTe9WKuJTpaDLm3fCYA8h+aa4OV7C1cF40hwM=;
	h=To:Subject:From:Date:From;
	b=SSXf4ow4XrrwvFi9ffdt4Ek8xzXTQ5AcnNmiJ7p3ybJVXag1/V3DCjEnNJmWGKXiQ
	 dTSlB2g/fxhrIYRkk2G32uSDB0cipiJCJai0Eso1xCWxuLlFvxf2DvWNe1QTirD8DS
	 imUUmHd4EbxDVLCUfZj165v6lfGKPj43DOzMFVYYrmBtf25mzTj+DRFAM8nBLIBmDR
	 5ZZki9/fOX5KLPXoehQj0R51oAS5uIj7RezKdFBUHV0wyZgfa+DgTRtMaaQCsOz+y7
	 5AP1OD4kMqaMQgMM/QNVDqfbPyje6q9n2bCUaZewedLPtfDXEOInA2GLbyMQrOaUdo
	 U08jV5P8KMVag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DFEC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 12:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171292676281.13886.6968804831343451614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2bfc61179dddec9f6f25616cbc4f82c56e25584e80bb9ab51b4f0e3b8fbb411
Date: Fri, 12 Apr 2024 12:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712926762
