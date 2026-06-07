Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA543264D0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780842874; cv=none; b=SeuxegPWpDuEYWqmA5757hkQEa0IcCrN8Hj08I5QQnrdCUK3VEyin+A0ehkYTMWlDWkRh7vccAGkoiNLGz9CANKKla8UNuPKDpDR4M1dH9Ic4A8OgOlgirsmjQrUAcOqFa9+gYUV7UuYmBZWfUQtY/KRSLPXERZ4Gy2DMjptjfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780842874; c=relaxed/simple;
	bh=u9EdRHKwOKpdo9DsFtnQXEyy3htRUbZ9qrqVEnOBw70=;
	h=To:Subject:From:Message-Id:Date; b=iZCaowBKOi2+2yn53eoNQR/59N2I0ybEZke9zV5aBBGbjaM0OVAsoZ9OoBqUu8aL+KWNAoZneuVf969erHgcZ9Mya4F96xhSwuK8E7uZ9G5BRNP7Y3Wk3K2bei2RkLDNWhuPBW24tCtDqVUSiwuPHUlczLeQeflZjk6lZNE4Plw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TS6BVtmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TS6BVtmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92D9C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780842873;
	bh=u9EdRHKwOKpdo9DsFtnQXEyy3htRUbZ9qrqVEnOBw70=;
	h=To:Subject:From:Date:From;
	b=TS6BVtmEz+gaUnSkWM0CeMtKR0ggRFZlfta1fOyW0RNKtooN4xuTSCe5r3rTakXCq
	 OioDt69ZJSYqU68g90wiUj0Tk+7hTU8lML3IqLIeyReBc2rEr5lR19DAhd2a+iW3rK
	 pF6YA44D9PopbfWSUpjGHpvE0EgjZJW5Bj3WSOU80vMXkw5G+1JpKBJl0NvrAX1LQM
	 9fBUWYDQfxQJDDaC48mKelvVK+0SUN8rTrfERE5guhgxfyKfTVB/Jj3qmxmP4qU+LK
	 u1nfkq21lBhArbB9F+294vhxI5m1zg9fIJ/2pWwgdlUlE/atDiJsE47FtzuZZ14WGq
	 ehSBygkK1Ia+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA15CD8C8E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084287369.923.17009817614826041494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d4410987a2f3348c184363911b3407b0e519f8f512f9b069c4bbf639d768fa
Date: Sun, 07 Jun 2026 14:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780842873
