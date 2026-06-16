Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38287380FCF
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781584594; cv=none; b=VjrRc718rbXeypwteTZnzaWzonAaDuBxPOqDVFY1vOVgy2vODcm9+jTcDWl8Q1jrLK6Y5UG8n5/dMyTCMBPfPlNEA9fYInYIbPnykzv9IcROfxv0/mViBa0WQ9Y0GYNuMwdT7J8fby311L9p8/VdRJOgQB0qzkkImQkD850LFFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781584594; c=relaxed/simple;
	bh=UHarXfa1UxEkJF1peOnz6KzB1yTq/sFQ9XsGy+FSaBY=;
	h=To:Subject:From:Message-Id:Date; b=qy6+K8BRLinUkYIfs515KNnOVMVr7sZNJy3ODUE8PB771+CWB9t5eqK81gCy3FXDJaN2oRKSYHOOkraR7Ep1xXM78GstL1xJO9XTsc0p32VMuR5QpIlW75JqXynf0JhMeeKg/JpI4vLumNNlrt3niteZ+Ip1XX8bE+2IS31IdEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrp4CkSB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrp4CkSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5446C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781584593;
	bh=UHarXfa1UxEkJF1peOnz6KzB1yTq/sFQ9XsGy+FSaBY=;
	h=To:Subject:From:Date:From;
	b=lrp4CkSBCNUp/aw2fDa+DUdCSW56thKjfp005yC5pBtTDps2lN02l8OqMJpH2ecGE
	 TdZxvJonIt/n85RTRZN72GG8rdz92wwWUiScZUjkul8moqfi6Y5uP8m5x78rqqH61p
	 ZS6mU2vrj5bNgwCANYLMtCqVWwC62QcCIIsZzSvq6YNmaSo01bChG7XVbeIkAwiVcu
	 ZR4jn3XBspkae8IxUWNH7ZVUW0w2JyfhnPfL89t5t+rrEH7o05heZUig5vyQif2LWv
	 kLOvyYhs4agIYKnXy4Nu4WRtAzWNKYUdh4w3dghbZ9Jub/CXNk8AI4l+5WtfnsVwDY
	 TihEqpbqJnz8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6169CD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158459373.16779.12570411163215638260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 984192d5887ab6bcc15067438f659bf0a3b5de58ec0338a928ca6225bb96f24b
Date: Tue, 16 Jun 2026 04:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781584593
