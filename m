Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED971D9337
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736163954; cv=none; b=ExHNM6R816/53bQOgHw4BtCgpubrUTqBhmJHsRrxjfb1sJ0PQEpT4WjwPIJLIvBkvhw2SQgxbjrE0Wf60VuLiQsGxtr72d+G2RITdx3JGPn99TXs5hQFiCzfpypq6HpXk9EfaRI34wyizRvAHXXSXmSlNat1AQDHwBYOS7qvZdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736163954; c=relaxed/simple;
	bh=umZSAu1vrq8Lworma3Q55tBIdQAaCSNMCQUPHWwLaxA=;
	h=To:Subject:From:Message-Id:Date; b=A62OUqiaFovW+xQd+a3096fBLlcOksC7Rk+omFQgk9Nw+vFgVBWGsdjQFyUfYWYWoIZorJm94ug374P2/ProbjvL1iR0wZiy66mLcATCCeCdYCrMt8wDywMqSnMQ63f/mio4rjGQ8UAaZ/JBIDranngHr4EtVovI5EHOz/MJVSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GyCfBE2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GyCfBE2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C1EC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736163953;
	bh=umZSAu1vrq8Lworma3Q55tBIdQAaCSNMCQUPHWwLaxA=;
	h=To:Subject:From:Date:From;
	b=GyCfBE2wyKshPCR1Sjn3LXDv965ZdL/Y4LTvxi4MjEgJN281aEpahQ1E7G4zxnKUZ
	 Feu4bTKJaul7wgIPcbddQWEKh/V0/vVbgNKGKs0iBIIQtCrC16U7BD7m5H1IYfQ4vF
	 GOVH++P5L3LMmJ+UDA16S2RGsZbzhsAH41kKLCAc5Bzqcs5PiwNLhA4b2cl5tPNq0U
	 CdsrejQv1kUK8+xbYf8Ghc/V1qkWtfj1f7cPYSe8QDTNhiGMPB5k3/Denoe2K581LI
	 QzIvaevXnU2ZRe+PVub/Y8aJIo2NYQCSwLc/JFTw72o2FOmaYgxXjWHXzGhBeXwva+
	 YIkj0tFWXiMyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94264E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173616395359.18803.15897241898693837130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348aaa518b9e85fa3c1f7f79e14da101c8573aad0c5b58a1e7911372b20b9ba9
Date: Mon, 06 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736163953
