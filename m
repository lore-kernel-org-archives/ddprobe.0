Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3530F4D8DA
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728974754; cv=none; b=fC/e2m91odC6bwNaxaa2RuPKu7ygrK13ZGH5DMVdpSesQVDj7EJs3XbpWz2iorqj7YMpLkBCBc/hFV7Px6rfNocRzk1SzVJptgVUxKDBKzSuavOznJ07cTMcEjfFu+WuaaxBAez1MNIf//r5ISowpKRSllePqBzzWSgPJ7CZR8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728974754; c=relaxed/simple;
	bh=RkzyS8msAn4s7EfM6UsD5TtS1BAE/IhkzOcHl2034As=;
	h=To:Subject:From:Message-Id:Date; b=h2z2d1M+pWsTsgPMOZ/rR4CcGm/nS3Sq2hAIqRf8p1IckFOcD1/1l9wJlBDGBtLtDgM/obaAx69b0aYo7bwtksZCgrla0Oitk+3uxt625MBcDZ2Ay2iJrMrqw8ezp9qp5FdpC2AsH1vb0RnptVDxnA4tbHOD7upuula9wO1sWic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2HwPc01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2HwPc01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6595C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728974753;
	bh=RkzyS8msAn4s7EfM6UsD5TtS1BAE/IhkzOcHl2034As=;
	h=To:Subject:From:Date:From;
	b=m2HwPc01MY0QybZXrzhQExRyKy4NN7CSgHIxd+iwjmq5ZqPdfVPVSHE2KcBCDxyXI
	 tsNlrMnHpHP8FgaowyXSzgN5w8/F1yDX+0440LwJD6sckqvr1tZ25mEiK0E7btpWg1
	 nDeTXCximr/NCIRaJLchsw2Yfjtngfe1CFG0+58Vbg66h7tUmYJ2jhECfzXcmQACha
	 UgN1nlFEygprq2zikiHxc9y0byocyzgpprDb18bKu1D+hCF+FgwD3gHk7Hk8cugDja
	 0iHUvI6FXe+LqG1XN6G8VbQCDpaJJgZPZnVYBpyLB4aRa5hVTzCN9WhdzUdDHmwtWC
	 wYzXfuZOlZ8LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B4CFC271
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172897475358.21700.6906154604066091808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee96abf630ea3b13b135c0758a00ced81ba74b016477f219e41fb8344369f22b
Date: Tue, 15 Oct 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728974753
