Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6EE4137A1
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789461034; cv=none; b=GyDRFHyAJOaMVm1xHhf7GbgsZ/lePvGQABL7QZlEDeljUu9FNSqpBSFjp/ZXMtcADT1McQm5OW4WvAtkplXx1vwbL1TetT118JiLbnxxvIBETaIclW5i2lMyD3Rrzi17Pq6JK8aHNtNFNG77xnJeXh61HvfJWGa43zvEl/LBOhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789461034; c=relaxed/simple;
	bh=aUmjgO757Yq2xt5YsFW3ux1xyxYMlEmblkYzOiVwqtY=;
	h=To:Subject:From:Message-Id:Date; b=NJ+/gOHKI2hnKio+OxFHOGXmNhT/394SR5O6eM52Ve+8rN/8aGVg9Guoz0yo7Y8Re+3d3/xcHIJ8wdToHzGSeRXFggxZzeaeRY4V6z94hXFOXtScGvjVkPtlT0Iwol45tDt6YyCUf+ABBwYTsDlZZWMZIZ2aZFGax4Mgx+PINZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcR8ZLRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcR8ZLRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE28DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789461033;
	bh=aUmjgO757Yq2xt5YsFW3ux1xyxYMlEmblkYzOiVwqtY=;
	h=To:Subject:From:Date:From;
	b=tcR8ZLRKlWR/p8KxwiNv7lqNXSiK9ZOqOpltJkddg5wFY9gTIUv2qGFlk4zkehxbi
	 pRtDjqkcc9BwB+SoxWnXtAiMTcpASpDn4G8vvmuLV5yV30qJYgBfpQL5rOu7B99GvP
	 7RReQoA+hM6Ea6VXWkSkHZ05BcuvbRCWZF2wMeS9imULGzu5pPiDQ2kuX9aeJKBzfX
	 bTcLE/5ZgREfr8RTqZNjU160DslbUx0RNife5rTQEaivYUqFD+6hXGLqFQXaIAYGjK
	 QTAd5YWkkDclDAVRPc4iKgF/oJ1tB3C8dOi4ui3gfuVT1ey8nt6pyOQoGwqEi+V26V
	 LOzGY8f2Nr7YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E5AC88E73
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946103368.23597.9464230343539555219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c26604d0abfe52a55640bc0b4061d662590b1545a26ceb8ff3b76bcaf4e4f6f
Date: Tue, 15 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789461033
