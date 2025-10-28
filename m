Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A132D948D
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761685794; cv=none; b=I8GTJKKTY+ZC6ROpPuVm+NEwmYlYWJrZInjHU6LtMCwYAOxm/E3Z6MtTfyU95VaW9KQ22392sxItNW3YmoHsB0EfkG33ir0PareQxSYAXT2PoNjyCRLjCHYcHHOcf9FbhVmpLMaUBZSfyC78p3nGpOh6C4CVHpRUmF9a4OMLsBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761685794; c=relaxed/simple;
	bh=GBzX0X2qmvIx6OcL9uLQ7jmZwO+5nMJg2Yqj9UxvJZ8=;
	h=To:Subject:From:Message-Id:Date; b=LjH+OwfnBtFC+6iZ5xQ8wR8pGdegn1lPkNFbvOeaISIOQ/HI+uqR8sjyg8oPsDeCufqKxLS7vplkf0IX2iwrobQ4p9q36z1U3QS87fsAy0GEH51SiVaq3rmja5JCG7hKni7k1UW5FQ3mEF24LfBNBCHmRndHtcKxtkt8zXkzcWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMjjUhKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMjjUhKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A97C113D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761685793;
	bh=GBzX0X2qmvIx6OcL9uLQ7jmZwO+5nMJg2Yqj9UxvJZ8=;
	h=To:Subject:From:Date:From;
	b=WMjjUhKwa/Wh20YXRTdkMM/KIADPl2Pm077fJcNzVmkmkmS4aSg06MVJtSr/ZT/Be
	 aQMS6KgIohRmIOdxQIsIHfQMwH2bTNmTrOQAxXD2k7lABci1SWSezk6szalyUNjX2L
	 vOBV3dQ2a/5M1A+Ks7Q/Stwlnh1Am3JHOJKb0FiVblJmOjzk5nl7e7FBD2GJyCvtw5
	 fdd281dGIok2p/NasQbDjAfsZHlldR4sDNmQ5tmliQcsvYsQF8XHMTDfmIRcVB9NvZ
	 X4o0kSGal0M16Rf9pi+OKO4kpJeM+D/BItIWXXtVV8aqSrZUnqN3cloLi7uSM8RxYf
	 AbfhW7QFEhmqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EABCCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168579359.15173.15538113323695712502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1993ee5569468cf0f5ffa1731b1a6aefcf0d8d0eb10b0213599218f2580d0f17
Date: Tue, 28 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761685793
