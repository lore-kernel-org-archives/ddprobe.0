Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27BA154BF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765040573; cv=none; b=P+0EaSwoNaF1sZaYbkaabExnQthdX9k6EkQRW8w7MDp2DMD60p3nQb05rsYk/UePS9iUpSjpEb/TRGIkMKZl4KZ7LXojlRZvnUHOSI/QeZCeHsyCkRpDiVGAxpTxXH/tvY+5IFIkRZ2yWCTcO3FrZh1F3KIk2Uk6I6PaxXhrs8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765040573; c=relaxed/simple;
	bh=PKue8yse2+fDMgilRBiAVtnxyJ6vBhksPM0zQk2zQR8=;
	h=To:Subject:From:Message-Id:Date; b=GB8Dx2y2f2Y9AdM/x3V09WNFNkccaU7ESAeMZBFx7FhMTeXnv7+gOHnHJU3eldGufFMaRxbmoVmAWTjFvRb7s/kvoi8OyaNFY7wyWsmt40Gy87d5SaSmGd4J3snWYfaNxeVeRGzFLqbuBAZOMdtWA0eQ9miuvzZD/aCFAtEFc04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZZcabx9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZZcabx9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9090C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765040573;
	bh=PKue8yse2+fDMgilRBiAVtnxyJ6vBhksPM0zQk2zQR8=;
	h=To:Subject:From:Date:From;
	b=aZZcabx9VFYhfw2nvxvRdUn3WyLYbxCwklqWAoKjzyuvR5sS4U8x5M7wuzyA44rcc
	 N6z8taDcUKQ10IoBZ6NvQZ5qLuRHrUUjMqRcYsPq2Xc4At38NCdJFaSTkq6TlaMkd0
	 tQd0tImOcN+sO8f9YnMLc5oFAEr0BcLDElkGIrftOzKJHzs2uWxzh70HXGfWAMoS4B
	 7d1fPpJYp6aI/i1+Cy8t6ngRRTD55z3QCcSEQSK+/IpuMSLiN1RqwUt3GXsTyi1P24
	 sGnkXkDbOoAFfsuVPAARL4V/Dsu3GvJcN+9mM1cqYzfr04FGRbAphqMfVz01ZwgaJQ
	 2dM0uErmX/XMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98552D339BC
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504057360.18305.8580179252405332976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41df322a7cad7000b55d5a32de8a0f26b738787cdd883f82c9616d0941d2bbba
Date: Sat, 06 Dec 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765040573
