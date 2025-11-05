Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE53E22D9ED
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762357194; cv=none; b=c8tLDW7zLEYl/Zk/zKMV1o76cRszf4RUroQFtaYRbpPB8iZS9YdEemID9b1ahbP8AjVqQd7W5fBTDhiswff7wJnbRfyYgKvZmWK+BW2jsniGoLYvQkGR4z8MY+2C5qDS4TfEevUB13MJ6xWpn8CT4fmnO7DewM9wr1TYGrIf1U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762357194; c=relaxed/simple;
	bh=BzFYZ+Qx+XQ0oe9kcfHQJjcSN/ZuHUMqpv28y0CASeg=;
	h=To:Subject:From:Message-Id:Date; b=Fms+Zmh9MvYqRd5EhY9MCAkAK1bRdkeaNDqrKl5SgBcBHayi0n+yYbk/TRu/Sb41xuEcVwvLhhM0jAdq04pUiOrWDJR/WdUoxDfJslLMR5dMEv1bKGOQGpXG3bbAm9mz5KibvibjKi81Ii+AxF9lhy2X55sRhsaLNQxBu2B325g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=up0im53E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="up0im53E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6CBC4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762357193;
	bh=BzFYZ+Qx+XQ0oe9kcfHQJjcSN/ZuHUMqpv28y0CASeg=;
	h=To:Subject:From:Date:From;
	b=up0im53E/xnoDoXHWmZO0h5yfP2ZcJVzAq3xJFH44wEfBdlY7db3ulDeM3zu5dgMf
	 ssHNLqe4dWEeHIpkyrlfIZVxOWUBXbNZvypATWAhKpsUbiudNMV3oReO9KXwUpqxv2
	 I/DejzzJ8xOEhwK49Q72r3uHAU2VaTKUI7+eWiMcX8SXXHE82p4G4//ArSUVhR+ftZ
	 jNvTMTsHXusMcD2jQBQ88eMXHSWJTs+DnsTdcBiJcHT5sgxYft2mhyPau/ZbwsnClL
	 iOblNMtFTayRcMipXS0oju6ve7ltHnd2PXlPKUHy/Tzn8Pik/ZOcAY3P4BPHUJnY/c
	 bNWG+85U3rKrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90194CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235719358.8164.36044442082577183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9280d94523c0de686e9825183ae4f0334f32a9ba2b90c7b2678385bce8f86c53
Date: Wed, 05 Nov 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762357193
