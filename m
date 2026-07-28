Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518B73AFD1A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785246034; cv=none; b=Z8Zjp5CEslwLp/uiBCXTSAV1aXC+oC+xz+9demGK1JkWw8elp955SQn90yYXtaGjipyYxz0+2sWx9dxoe5v9kPIT765wStZuqanVals+5JjTHbnD363HlE1/KsIEt1wyjBiDwUqOvwZSCz91K0Sjkn88HFhG8u4jXWCdmQWdWGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785246034; c=relaxed/simple;
	bh=S7ngLLMQWuQX4Kilfu2N6DZ4bsRUYfuPNd7lI3aAS50=;
	h=To:Subject:From:Message-Id:Date; b=W/Xb9BZsjdp2oVjo0YACy3K/NvzyTMjSmcInnEdxFQYQ5Md5dBEktNPcGJMU/boUyOGhU+pKQPRjtxWu7LqXzOtuadtxJqKRPIAOKszb+BeHDlt5LumTZANeImYlTle5jES1jIUhEDkJprSydYnFT7afU3F2EcUSSvbja2a2RYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwDob49u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwDob49u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0110C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785246033;
	bh=S7ngLLMQWuQX4Kilfu2N6DZ4bsRUYfuPNd7lI3aAS50=;
	h=To:Subject:From:Date:From;
	b=lwDob49ulkSuP3HwfX94cXU+cm0FWdkbvlfw7gzLuADPnyehcuNWm5LhnhdzGKby2
	 6ztSOcCiJijlMHHPNUWp+ns88nOsitowlEpR5fpoKkM7tIh/mEFkxM8ELbNjIhyFpJ
	 qzov+zFqBc/FetiZnrm/MDB21cE9pRux1tHq4iamRSANNPTpSgkz2D3/Xni7pDPQPf
	 NLvZBNF95WFoT0Tst3Lxjr5pRuJFNmr26zGk2R9pAOsZlPNhNw+sAQNmqu0CTHsC8Z
	 IQM4yZ9aL75xuhoGZ+M3/H/wwRHXDft/zOCLyzJ9+9Y2p2f8NolOBptW3FrMfySmh7
	 cmjih4KtjrxJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA811C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524603369.9097.16592153577839854771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4dc913a04ca257838dc56ef0bc0a9930145c34b3da304f0e3232e175b6b501
Date: Tue, 28 Jul 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785246033
