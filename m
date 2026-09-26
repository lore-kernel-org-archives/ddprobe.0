Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AACC22FE0E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790418034; cv=none; b=Su8NpnJkP94X/Foyxs7dxK8BnhMDnQDgZBNQ/J8+kIafnkdPqIwToORvDNBfoT7/v4zN56tjAf8HSiLEH/NBqj7BafpAuuwOz+ZC44g8iNXqWeQYWhvqxnZA8BasEXVPwoAd9iTJnNfVHErNaT8KKPWjtQRJWiuByIx5ekVflYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790418034; c=relaxed/simple;
	bh=T8rhXaxscAB8DWGBKxm069ocibydaLG4Yv591gVG8x8=;
	h=To:Subject:From:Message-Id:Date; b=C/JaJIvPVIkIGvxdq53zuO1cEbHNcNMp5b5oqYnacQUeMsh/K73n3rLOVM4muuis2uGqJGt+81xcaREJS9c+wRZoRyA/tnIhGyhq0LuHh0xEaI5qSiipq85NGafhHZHKaW3zCzzpCn7jOG8mE27Xy7elmGzxqI2e/4W1n/Mdumk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAH8rAYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAH8rAYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6ECC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790418033;
	bh=T8rhXaxscAB8DWGBKxm069ocibydaLG4Yv591gVG8x8=;
	h=To:Subject:From:Date:From;
	b=AAH8rAYp0pfH2ivkDsm9h1cPEi6+yTK4+T2GSGgQ6DEQt1NyGRLmF8iheXRNb7QxR
	 LGrS2od3nMAxebvPoAz2gjI1xpLqWmRFpojJFOcjX8m6XHwi3bxUqArW8v/zGxjOMo
	 p1oW+wpv4hCv2oRBNvXwZC/3kg3T5i6a28H/tR9qpFN1j5/N394DAaUTbfCwdaUe9L
	 ULUUKPxeAuxeYBBDClqdriKN6a6VRId+L70yc5YVVC2fHfhI6qqHmGkNnjiGd6PRvA
	 wn5W9Xdly+t3kGOFc1ys2nZcPCLtteag2+b0By9KxL4zxl0FMYSUiNvAjfsMn/Qo0v
	 Q9Iy0j8PtdnXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA670C98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041803369.11073.4691615662253456561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 274969cd837722084a5167b526a32ef3d5028c511c4dcd230c81eaf542e0b2ae
Date: Sat, 26 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790418033
