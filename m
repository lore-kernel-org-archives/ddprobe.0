Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406CB378803
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779387154; cv=none; b=aBQzHzFLpn8Ih+ofzv+JsukXLgjQDsuOuC7sg+JGVBsUx+zxpoQMKJkR5qWHjzT4NwD+EQ0tt3Ak5PI21TVhZa1GQsq7NIrby5Aig1hRtVuvdvKLkuWM8GURjVDpDLXkjOiOSEVsgawy78HYdK9QuZQdVGOpJtGiP/ovPD7B7WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779387154; c=relaxed/simple;
	bh=wIwG29BByw+vbtuFmvXbwNQCGlB9fH/j5Uu8UfGQZCs=;
	h=To:Subject:From:Message-Id:Date; b=EyjloTl0Mf8T9ENYhhglplIyG7kex4nwZo03ZBgA6Hoj4mcu2yccClHgE8/rLyla+Wq2PdHLVsXyCLBOzqot1YCx39jmYpIz7dKOVPcwSZTxEKr7gLuneMHSDZY7Sd7o7HxrFBNx4BeN8NOyGExrNZbp/oXx8SyPYUODO88kV6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCwUmPe4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCwUmPe4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BF5C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779387153;
	bh=wIwG29BByw+vbtuFmvXbwNQCGlB9fH/j5Uu8UfGQZCs=;
	h=To:Subject:From:Date:From;
	b=WCwUmPe41IXWn/c9t5Q386cASDZlQstduW1jjV3t222PvgSGgRj9p++fVF8XXc31y
	 cpZm6zKKamFl0dXXc+HNG5IIIF0kiANXEjsZwcHEI32zhkw3HLoI1SkBdLfvHlUCNJ
	 HvBJTEKdjzxzMz9nwGXd13tbF8U2vzvQOm11T6mQOVfnsTFCibxz0kaxAOcL4WX3Me
	 IxoiEydWuixgWSa2ZIE982OQ2fSVe8GTnwc8PjVyzE3Dh0rUGbGNKL0e4pUzVWW6Ez
	 gJxB+V9vw8EzGE/VDPyUPF/MIab6+bwwunECrxGcQ98ojaDgPviRjlaRzMKGslDSP5
	 PJTUom3Ueiukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3EACD5BAF
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938715370.24122.3181408689398781618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f6942ca9cd3ce5cb7e3a63349517c068008a969c0dcd262a4d41a040520582
Date: Thu, 21 May 2026 18:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779387153
