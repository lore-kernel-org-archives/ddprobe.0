Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C907239E65
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758371394; cv=none; b=fOsr66XTQ74ikg5ME/Dgv9O1FpctSClOUm/3SAqI2xthx6rwPhsSSTL5ngKtp0czs+FMVZ5Xzm4PVO9O8VmnhikfBdK7K5mWZTpGR0IQ3FYKaAxIbd7gCKnJyJOo9giupGiyY4U8bKYBIBywfDM2ytmCq2ClcYmYeQwMtZOJpv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758371394; c=relaxed/simple;
	bh=/PpgX5QI3fwmdb7BSXfPeJePJX6g+uozLWJo89fTjk8=;
	h=To:Subject:From:Message-Id:Date; b=kEF/PjzLt/7e+OUirzbbjC8J5TSDsqdbnqIwT69/88GwF0KP34KzhgQsZwBx9snTUtCXxVo2Lkj1AmwceSua3lqPW4Uwsi+mVc/PJcdVzpxyOIkf1m+RDd8zLc1r1vG47uBH7EGL1SYKl/x1CAopyFIxULMjZSviYYV1ocsQi0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S02mrA6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S02mrA6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B83C4CEF9
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758371393;
	bh=/PpgX5QI3fwmdb7BSXfPeJePJX6g+uozLWJo89fTjk8=;
	h=To:Subject:From:Date:From;
	b=S02mrA6zizQ9OTxGoDJw99fS3cDwGUNCLCBxUEdPLSnvXvnXNNBaiJ8Wi24KXraDk
	 YT0oVHWIOrZkJ+NG54QjFgwI+Yt9Hzv+Uv0ihb/rrAzI2yB+j4olGIrzDIIUiiHfOt
	 cEMlylqZb5yv4Iayv59GXFTDVFlR8VPvlP7wWI5dSAV6YeaMRo0jP1Zv/z4Ho6WbyU
	 AZEePqmNex+gzrBOk0n487AkxxhdbKeVSLLBpIOumZKzN6y7za1JKXQB170oo+6Vxb
	 3nU/zlVUgWWr3xxeOWqkGArWri4vwH2lAM9nf64qVgDE68srC4to9wUGxdtpUkWD8N
	 XAssWOKBgGrVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92764CAC5A8
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837139359.27248.16173315910940341696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6309bce72d2ca68e9b6fc44770af200a935901ec9772640d539ac1a2ae216589
Date: Sat, 20 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758371393
