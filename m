Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3263EBF14
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770856494; cv=none; b=VLvT25tas1oJCMSSFjzmoKeof4unhl75z1dkZJH2w6hcdwjGdEYFLNsW8ghBVnLpYUV70jFog96iGpD6PnVhEn/0r6mmB3jTBcF2TraYBpwfxeigvDW75DKhdT0GyTjAw/an4t5L62UUxcuMqw0ZUjXs431jL6ItPnvuSnj7lwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770856494; c=relaxed/simple;
	bh=rc3N5f923dxziuW7nLli/7yeRV/grYsz8+35bsf/UUA=;
	h=To:Subject:From:Message-Id:Date; b=lq+qmG78guaGOcRLyOkqSnLavZuCVdXvioDIuJH/t8wdo4CCbcR4fn+VU/FsPKYBCrDq3Qb1BVE8rrGVS8wSswy2JUZiFJeYdX1CoumCTfxWO5+B8iRHvgSdnXWq3P6ZH5GEX5YyQbuBjFauP/0asQX/3SRIuUXK3R96OODM7kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBuEdtGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBuEdtGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD038C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770856493;
	bh=rc3N5f923dxziuW7nLli/7yeRV/grYsz8+35bsf/UUA=;
	h=To:Subject:From:Date:From;
	b=KBuEdtGZ79sVOCBE8LilU58KCg5N1884g9iIVeUbHw+vun0p0Bc5mmKs3rHuIh/GX
	 A3wAZLZ4TRf3vH2oc4LLetA0cea/o5+hMItIkusd1A6sT3wVILgB7ymog0Zej/nirH
	 AC5NwiE5AIFOko++9qBr1TBUkLmmRfvUXtzq+k/tmI96dMZWyzaJ96EraU02a4smjv
	 jHwpCTzN7+7CLGlllTBHjlXTFciIcpVznW5DBPMAPNIyNzBpGX1vNlhNyo7FrWTyC7
	 UxMFvwRWh5KrObApJzkwhOwwIE9lNoi8VGxMsfIqBHXjL0XFnKXjYQ+ZKmpR5GhoXw
	 9LQRJu7CjdqVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB393ECD6FC
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085649365.20078.17329940032710238293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2955aaa0f08f2114cb5f4ee833bf226a6bb2e2b4fa35d69a6bbbac7470d0cb19
Date: Thu, 12 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770856493
