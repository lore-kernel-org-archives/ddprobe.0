Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0663E0C7B
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784059714; cv=none; b=mk8BhGYyihJuma9Fk2Q6B6Eik2DXwnps+Rh++fQRZbgvTIBI57HOCVQNFe0Fiw978uQRtnKFOJ263gLmp28tfGMv//tGXwuXd7eXmba3M7EGELjPKppsSbmP8HFLBc4fF0ZZ3itU0Q9vBq5gMAQmjLz0V//3uqYRHmEpoiQrPyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784059714; c=relaxed/simple;
	bh=2bMQyoHJJxC1lXfptN+lglrgWYefQrUJ0SnbmKiOZEs=;
	h=To:Subject:From:Message-Id:Date; b=RN3tfZoaNSBK9n5R6FxDjue3DxNaybOK1kmRzQnnvCTXDPy/Ox8t2hvTlhxGbLrMp3g4bHE6H1cikwnNSthF0xigqtKqIM1i7pFYqmPKQK1Psaxr0WKI8yusnDIBjuP/WeLaT4tTT/n8tIG9QuxYrDGIi/9I4CFSm2wOmYuMYt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4t21DOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4t21DOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2B7C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784059713;
	bh=2bMQyoHJJxC1lXfptN+lglrgWYefQrUJ0SnbmKiOZEs=;
	h=To:Subject:From:Date:From;
	b=Y4t21DOrQZ6a4yfbvReCqhuDFQjLvYUexFXICpV6YjZXl5U++SmETKdeiSHCcefpZ
	 +v9oBu8N2DUkMDilW79HAyQOkUtW+bEvcd3uN7Q8BY/TkZzWKtusII68+ahCOjOQE7
	 wSAkhmUMgfKUTwdjcFFYQiV7uYL+ZRVgQ7J5ohRLFnmruML5NGdTi30xSwPBbg3klt
	 RcZiUK//I5+iQZKQI7UYN/MjQ447eyIxD9L+XcCwgtnLerOCO7muOSbLfa4VS5fx4z
	 mviufDaKQDhAfy3CYxr295VMckTcu2bkYzGINrAezhXat2q7d9WVmyXK0A1UQZhKO4
	 gCLm5NvREVMUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FB9C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405971372.23404.18303641996322322443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6dfae2c87e818bce5f360bc327701a9ddef9055606f2ebf16ebf975b517ddd9
Date: Tue, 14 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784059713
