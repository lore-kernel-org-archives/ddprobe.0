Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CED1331EBE
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790570434; cv=none; b=urkixWHUQWDoTfe34HCpPk6f9EbVg2yxba0UXARulm3OlVTI3bSPtmPpA6o6cqdD1I4KNVYH59Nlog77MW50L8lvBkxHi1vcjHuB4u8qlkqBtYz7OMoLTmJRDf9W6oIUwyfxYtWf9thO5QMAwqaQdrTXuJrQw5T30nuF8VfG04E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790570434; c=relaxed/simple;
	bh=ynZWGFkTk+jZFgv0cnd3A+4qiLw6yjdcZ+ZGMGa6f58=;
	h=To:Subject:From:Message-Id:Date; b=qVB4g+IkSgYLYT2zlGR/OdPXcJ6NDy2JdrdU04f4R9qyP7UQcRqD/BmsSwN4eLfURRuEMQUJZo//SwYXVlkAwe83tOKmgA9X5AWdozhKno+NxGroBz7J+48Kpp62EMW/WAi1XCJyXcvAds3bUxs1cC0nbD3Qc9WEBOjbQA+dJaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGyK+nWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGyK+nWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA73C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790570433;
	bh=ynZWGFkTk+jZFgv0cnd3A+4qiLw6yjdcZ+ZGMGa6f58=;
	h=To:Subject:From:Date:From;
	b=VGyK+nWa/B5nQu8jwd+y5EnSVto6Jvlj4ChDUBe6TzjePCmLVwQH5ay8HsfCqy5FF
	 Z2Eh1XDVagM3eFQAkP4MXBbJaeFuMBdgsiCIBrcgct6RlRQxdQsaE00dwBIJ5woV3P
	 AtyXGVa5TO8O5GK+T0AszolBc5XNGiC4APHfpPF2CDUMlFYUvA5NQeM7aV2h5YjB8V
	 GPx4r5a9pg/eCRIbO+W6inomqjIVGZQXircaafyi07V/WVvCXn0IUiqthTn94K4/HF
	 ZOZ2wdh/54g6CMSj7ck1B8VzBKor7yiMEldGN01ZF4lxCMudHbtrHvzqjGLOxewH/W
	 L34hwI1CsDx0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0EFC9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179057043373.10493.17655348039550791958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e59be88fb839a0039b853c0b2ca99409d1c1e2ae7584012e222a4534b940464
Date: Mon, 28 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790570433
