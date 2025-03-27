Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0285C603
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743082794; cv=none; b=oy1Y2S2U5/UJFsPqZQP7pZEeLlBI3vs1kRbo1mg2gxrk3+Xnn/m8Z6u0sFEOHf+lgsV2H6dSg7VMGUKCeuuGqFtRRGxR1kHqiDcW7tyI3Tw7DHlsn7QVtvny32XLvemOfwHu1zfY8BCZOTgu8Ob/UahLL+ln6+u0tm8dprZ4khM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743082794; c=relaxed/simple;
	bh=WurhLiSvRh16kdCCSQoJWHTbqCEsyBHnCQ04T7d8CMo=;
	h=To:Subject:From:Message-Id:Date; b=H4dmKbdsQUeF+D2PfLIrVBRHxykT/godzA99ahns+DDM4V+p8k+frbq8sXSQAybfTXd24EK2Kq1vrYdq0MigkGEPamwwdixmV1FBJNmzksRMRGvN/sGAIVqiJlh1iX7AGl8fw9RXTcJVBBO+Tiruu+HgQCqYRx5IGsK99kgsw5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlTTn7Nf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlTTn7Nf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73A9C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743082793;
	bh=WurhLiSvRh16kdCCSQoJWHTbqCEsyBHnCQ04T7d8CMo=;
	h=To:Subject:From:Date:From;
	b=KlTTn7NffwjRskQD4jVAWp3F/zt0uXfTehXAknq0whvnRxV53WJCXdtA7gV9bv/Cq
	 FTCDacUAHBQd5ell0DcjEoVFaLaJv8c487KjGQeJuMkkIgT3MfA65ZeNJjGRjNjg6s
	 +6lbcjjO7kx4bRYy+7xvjUysBmy2tefQIFxYrjR1R4eqECe7DAvLYikYKbfJ351w6F
	 PXeYtxTvhoVIa376H61F3CUYjVecDonrt+RvvuX3RpaVAymrQBO0o00f3T7pWrPm/7
	 GM3A2FgfaW5yrCIu1NL6Rlk7kANkBAzdaFPeA30u+oKY6JfxNtXaTrJWangBrytom6
	 5MAIFAWGfcpAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974A1C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174308279361.4030.3516791922602796505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75dfc26e3ba5750152028f9564c72f54d371e8c7dc5e1f8d29f76ad29532bc12
Date: Thu, 27 Mar 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743082793
