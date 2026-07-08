Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470CB420868
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783469914; cv=none; b=dFqKSpSmjiSSR4XDUwz0gwx2RMMvm2Z193nnD/Wk3HN4xplClf+kR0HgVJhG3EPOR+FaOsZzr5aXV2KI46jpvm1p2ZlTAbU0WgiMrqca59vVy5cAQj1pJfBmsYUoRsMNiaVhAL8gpKl3e6T83ugLFVSLPKjIWBY4Qns+ZM7Enz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783469914; c=relaxed/simple;
	bh=0qOFysNEbJvqIpWzIiTt5NQouQPdkKDS6BcYIblicpU=;
	h=To:Subject:From:Message-Id:Date; b=DtLDxIlDmpPoSRk6QPqaNbZcsAOfYa26l2KD9bVG4LE6jlAp+EmW90AFsXV1Wj73gxeZosXYyQAMEQMHCIKohHdo68gYPInoEIL+V9MwyHDQI3zTTx7pVpRjvrA6t7ESkMkgmykAOo3L908OF7tlpttxTPLgL9Fbw0ylesl+bBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpVqYvCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpVqYvCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B98C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783469913;
	bh=0qOFysNEbJvqIpWzIiTt5NQouQPdkKDS6BcYIblicpU=;
	h=To:Subject:From:Date:From;
	b=dpVqYvCnZ5xrGpXT3f4+Kt7l+KRiYdgg2gwqfYa4SIHfhVM35RCUMQQAmsinOCUPF
	 9JLCvn5nW+8SjWiUI5ZS3ZAPRdVi88P3ga5IBvswbx1zbj36NOKNYJzIOn3dvzVz9r
	 qs1pDUsV2IvFaJF69zIep61dvuZ0EqY6Z5Yj/W6f0T7Ll6/3mtUIRk4qH+kckWGSlC
	 VQpSFhu9mRrHUZ/UdWc6Cc7nTR71f5Srs/mqFKdxcIjmQ3HDF6C039MLqkqfIurWwf
	 DtVFKtlsqEIJEYDozi573IB+h8ROk3Rnmag5A1iujCT3wr1wCmvkYFWlj01fnDwM7y
	 XMnA2ACneq7TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3B9C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346991369.3779.9320502873900139216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb3aabea8fa525367ebaeac2b2c1e4bbdcf677baebe11699d31870bfb32797f
Date: Wed, 08 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783469913
