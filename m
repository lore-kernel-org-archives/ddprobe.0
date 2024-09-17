Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416B614BFA3
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726592754; cv=none; b=crh+lLP24Ao0tybPldZng5cqO4uSgAjpYe/FzdldGaNhTfLgTYt4NA+jfuqkERYLMHHLWZQf4mMONttYijQbE0bHgao9zfNAOTLVLPwt+PT7fFez8/5EbfTTKmAsKKvHG9qTVZ9+rx+2l4AXsYB1wbrTtlQ5XCrdWNKVje2acLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726592754; c=relaxed/simple;
	bh=wv+r4zGlYeK/WxwGVU/58UUs7aGP3zNo+4xsUl0RXoc=;
	h=To:Subject:From:Message-Id:Date; b=RmjqpKdwCryQm1jv05XeXATdRII9rR0OB1nHYbAQXqhkbH3Ln729Wsl9AH9y/MFKjMRLzqvm8jBAxUbtKKaHiYQz3TlgNHu5TVFOinQ8F+n9TfN9vG/1R9DZgIe/a7IvfKT7y6l3PdKv2sNaE2TGKTElJNqzdCVDPBqywe3yJoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuvXTOs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuvXTOs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5DFC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726592753;
	bh=wv+r4zGlYeK/WxwGVU/58UUs7aGP3zNo+4xsUl0RXoc=;
	h=To:Subject:From:Date:From;
	b=iuvXTOs2O1YHLGTOvo/wbwuO7IMB+LPtpFxKC7786RVSdKPu/zhDGTarJrU8fCnCX
	 F4NhVQPTwrMZW1apeWbjEJQHi3EFEIulBGsUCR2lI3DTDNcwXgQI59hd178Poc+WzS
	 060JQpXg7Crzo/4lU+vamsHhUN9PXkosomxEj9FT6lImuSp4H4qnk4SthiHro+KdTP
	 o3VnQxC8IbUjLhEqVw0cXUFRgqG1Kj0GKtQzz4tZG1D30/rMgEciqM9VcIbWG7fQoS
	 iF9jx6VCD8PNVwz5yl1Nn1GAgvNhr5J03okbojlj3+X0vgImdKvKytlJw0qm2Wk7bn
	 cJ3u5vhTy+vUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A15BFCAC58E
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172659275364.11680.9672742561480609576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed0e4eb3a8024f05a30ca41de6708e6cd253564499e08e4098c77e94a02b863
Date: Tue, 17 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726592753
