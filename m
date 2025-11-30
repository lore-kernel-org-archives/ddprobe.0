Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B65229B12
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764532374; cv=none; b=oxh3npzCRCSthcTgNGPeQO85oWM3lCnwWa0UvF/xHENNjENajtp2l0435ELEbf3F8PU/LQ9n0QburiP1e0yiaMy+LbpYJMaL48CpgqUuIj7i0gEklHX0utocJ+7FqOie5rTKolV3HUfuZ2jr6VgkbGRiNXtC+2YP5cQrzfj2lGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764532374; c=relaxed/simple;
	bh=j/W0NkSVC1pzDmoMRE5VSvfIpRA1xJyWa9Mf4noOZ3U=;
	h=To:Subject:From:Message-Id:Date; b=EMo/zP/zGk3Xz2OfzV1K4EZaosQ+T50wW2q0K9pQPFA8fREqJslzBeLXTcZ7FVJ7GVoif4XqrPECHnxQkUxYH+pU/T1/s57tw4y09zFvywNpv+snsZJheafrTDcSAIoJrbOCWy5thOY9lJm+SkBvMisF2mxZhjNHNRyv53XtmMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DR0cnwJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DR0cnwJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C92C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764532373;
	bh=j/W0NkSVC1pzDmoMRE5VSvfIpRA1xJyWa9Mf4noOZ3U=;
	h=To:Subject:From:Date:From;
	b=DR0cnwJ3yaxRZCBTxbaE7qCQeGQs6gZIOmmOI3mn5xQXSaHwhlNBipAZ7696+ImYN
	 CT7pHEBWKb+aCU0Zwd31EpLCOpvDYjIUnjvhAB2Pqevo8UgQmMQcpNJ6e6tErR29CE
	 b5PanccQij9wtSejepotbZ2gRkx/Ubgq+UdQEQ9vM7jeN4edy/oD/hxfbSZ/4GBI8p
	 xME78r+TqxKANPp8wNvgw4H9njEiBjrr3OQUDi9tW/f+dI9Ep8fAQhFXJWqebMrFoq
	 qXpL0SdGA/E1yYRKyEypQZbVCaUawRtFONBshVMYdM4/vIymmyoguQTtXBKVl4HV5p
	 k9aKwyc9AXbcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BC0CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453237360.11271.16897720262115564798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a750e623ca799af8adfa80d70c9f1da16e8c4fa0c2449b817e815ed3d7010ed
Date: Sun, 30 Nov 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764532373
