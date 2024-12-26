Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3429B323D
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735245954; cv=none; b=H1B9WJAnv1s5CJNRgzzEQZeyzRkMKf1OE63dU0XItScJnum3spFJXNuX9duoEBr3wd21b1b7AoNqVqsVPD9gv1LvxWxe73u4jGoSWF1Dw8ztMzg/k4z2P0dmjPBJ0D5MFDOZSX4YCqivMcUxCxDO0KpMAgAvEIvHXklYSSjY+4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735245954; c=relaxed/simple;
	bh=boBQ0hpj6wqzNFpwIm1P2c44D0ugnZon0z4D7VgPR8g=;
	h=To:Subject:From:Message-Id:Date; b=XDVPwzQHvPeHsSPXDPJgEZ3g0XxLSrqRsy8Dx1hnSZuqXEtKoQ53Q/3Ei3egCw0c5Bulw3nDeg2NQkZPTakYXkH+iy57Z/kUZ1OtmvEYJPLb2y4bA0IzPiloHPeSQLQS1Tw76tUkTo2pLzjTBAq5seHokahQQ8icRRWYJ6iPkwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8hrYgi+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8hrYgi+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4303C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735245953;
	bh=boBQ0hpj6wqzNFpwIm1P2c44D0ugnZon0z4D7VgPR8g=;
	h=To:Subject:From:Date:From;
	b=u8hrYgi+BhLilvH3LkyuHe8GPJaOapvTlJFC0gWdg+K/pXTTIorgEBJhVnC2cZ5Ol
	 9B3Hqjk3tJuaQgeRaKG9vPoWAS/luXqlIMH58lzXejMwk9gtA/3KtIUmpZQYOsWuxY
	 /5xdDVOObsGnJds352KN9Fww7mQY7MeTaTR7SGTNZF5cR4IZT0aCvWU0pWrx5QonJh
	 g1n3WFABv7WfkSgMISC3TLGgJPLr6YamLkB/HGhD48f0ZGNYQ6LsXWqVmGviF20VGF
	 6ixqi+e3eKmLhq7x70u5QyoerX/mkLIAi6BXyonCG5mczTPmiil1Ldma0As8kJESiX
	 5RqoSPZaKaa+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AFBE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173524595359.3765.4011754102031671364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee5394d9bb512f83fa1342f096c73524e4db987e58ab768e7eaf1e23b66af1c
Date: Thu, 26 Dec 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735245953
