Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5223C0C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767758034; cv=none; b=sG3UUbRhRTk2wqrKC5+ts0L+ILWXps0nNuqRuT9ek9KeXE1nyX97NIITVgMti8dCpyEvyCciGUqGvqcYaUgssV/k5+jfHLRSBr6VOsOM+iYsulLhtKS0w3tTKx0w91DUw0Lu0edFJjxgZhpkZoD2Q/rP357fr7yMzLty4bgPvRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767758034; c=relaxed/simple;
	bh=PdZMSaVy2A7Y/UvN07x5YthfygAmYgjyZSinUkbValc=;
	h=To:Subject:From:Message-Id:Date; b=rCVfUurWjX9U+BR1gGhmSkNSJm8pXN58se/3golVwS4S94CDIm/8gLw8xQTJD5E8aPEcFNt/e5mfOsgtw1HLEdUn0IUJUG1NMXqbx8Ndy1ZUVSO2hnXqUv3Pi5JQfWeaLz5FQIk8GjpjpoTWnAa7WuL9zISBSG+BpXw9+oLBSn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rI2wk0j/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rI2wk0j/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4939C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767758033;
	bh=PdZMSaVy2A7Y/UvN07x5YthfygAmYgjyZSinUkbValc=;
	h=To:Subject:From:Date:From;
	b=rI2wk0j/JRgQfszW0kwzncGtxaeH8ZdzR2DRh/+ix++c85zjZTw/0iJ1l2D9nhfaC
	 pWOsw/9ynnCZxoo8oR4Betev4vzMCwG9iT4Ixmyg3EPOCD2kyRSHIgp3z+jNBkd0Ha
	 4yyN6VzqMBu3fuV3lcha9TBL7VG3LPn5ipDk6VI0nD3dqV3b9gxlepil1MkVzZPuqC
	 cFdX812sRyWMItWG2yJiqymE0iZT4C195xjYqocH4MLbI9OYO2t/9YuAfEsLXH90r+
	 DTet11xieYtJin25M97w9smXI7yAlS+Cy+PXu6k2QSdrXI48UoMy6DuM1IfKZMcOEs
	 aRni+wI+w9pUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D04CF6BE2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775803357.21735.7688486944854009350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6949123f87bc0592562541f1ad781e130313c67527f7f6de6db654ebe2c5cdb
Date: Wed, 07 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767758033
