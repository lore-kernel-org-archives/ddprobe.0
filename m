Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B79175A7F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790503234; cv=none; b=IJB7VI7N5YmggWPEWe7sMVYMsvfp5ZMIHAzJENUdL/flLVS5wqbtzkEC2LzXM6XuEI/iZ0zneZwtQtjspNaDvhrCYl38ncNySvUveU+oCac27DpxLjsA8jfc6JX0kGrw02hXDz3TlGHBALvijQnvD2Q3p9YVZ9OpQDK1jXkYCqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790503234; c=relaxed/simple;
	bh=kYpboU/TOgJVsReYlr4WQRpN2nXSjzAb6uQucpp10n0=;
	h=To:Subject:From:Message-Id:Date; b=A5G78CD/0KGYiFORD+mVJ6ydRUPJ/so2qdCxxXSmyQ9sZ5hqUxIq4v6Hnv9hZiRSAKZ05D3mfLwEwMTfbkP/RmOVnu1ufrpFt1Sq52OrR82Q4BAGr4EfKsSQZlpXv1p8QN4x8eKAyMNNjeqBfbZqCyIPv0uEiZUlayimwkoZKso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aavic5z3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aavic5z3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC356C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790503233;
	bh=kYpboU/TOgJVsReYlr4WQRpN2nXSjzAb6uQucpp10n0=;
	h=To:Subject:From:Date:From;
	b=Aavic5z3b7fuAk13MgB2oM1TubNfKRPXRWlEwJg4INcfw0o4/EpfaTYIDELMvEPtL
	 sdxyZa1e7OTlHW0ANTgwN0l3EG8RcVRCbTbXU3MVpUJiEKXaruNCuFFgLJtFWHxoRo
	 WbVqpGDVFvB1Xg+y2m4Bi1pMQ+WZvjtdRmK+gThnZlSCM4GScUrd3S6mlYlwuDsqsL
	 63Vrw69NS7chn1OlU7qndxWk5z9nl7KEY4O46Zf2BDdbXoKHRiVR33qmolXW11mfeY
	 xnL7fa/KndTeqhZNtus+WOF+isaX1Y3F9Cdo1SRc6rO06AKLNrVYOENVZeHoTnIvAH
	 /wqg01tbjIW5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A964AC9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050323368.5630.5568366948856020308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 442aadf22deba52db94be3bebd860575de0ceb1825660278f22fca99df8f70d6
Date: Sun, 27 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790503233
