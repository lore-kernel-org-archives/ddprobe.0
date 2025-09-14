Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA51487BE
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757843995; cv=none; b=Zs4SAclDxGsphpfpLM1hMZ7idhLVdPtVeYCwqryxVws8nonfgfitBZ6TLXzfJ1MHiJR3zeWxRo/ESXJ52+G9/wnBFvQ/r9WMD1J/rAzb+b0RzsdFsMRvgpgKp/DxSdGKOLn6z8RMec20qYW53/OJFLD94qKFa5HBVCdtB3aImVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757843995; c=relaxed/simple;
	bh=rEFgxpu5g1qait93HJST3G4jOeT21CRd5SJGKGxtZsM=;
	h=To:Subject:From:Message-Id:Date; b=HilRdJcguePs9bDsERVMELJBRBWbeK1cfpt6nLrPyfW1V5EGbU+SKeB2qD7nRQrVuCvKUEgvmlEJx1MxeJFBCAP5ZICCEbOpXy7591Ejo8LCTGl91kGnDDkMQ7aj7E6uRz+YCixNxXJkmOzm6ZjsJL+TEgHpL0TbFzih4ZWi8CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjkfYsaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjkfYsaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF89DC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757843993;
	bh=rEFgxpu5g1qait93HJST3G4jOeT21CRd5SJGKGxtZsM=;
	h=To:Subject:From:Date:From;
	b=VjkfYsaNssvcjPrQB9Z5wEbTAiGGtC2Tc8FSWvvc2Ght63SCp6nEnfunTt8Seznvq
	 niAnc/ts+6LlJONBaestxBPIqSds1WdoJkUhzm99J6aJ5NUXsbU6pa11cv1636CDB9
	 xGkOisS31QLA3hxB+htQ5SJWlC+Mvg7MWdI/1t6eQBwggsBZGZWh9wrWjvcQc+K4I6
	 ywYCB9J5jggW9gDo5vw5r9k55t9jwTiTdOVwo8yIAa8qOwuiACONZSSmXiQHQ1y9cF
	 YNy/nUv6feUtZEEOI5PXXF3xwgFPyvGmL9mY/IuUOvjkrRPOWcic9O0AniX3Cf4KLQ
	 c9Pv+PHhEEpfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99755CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784399359.10633.11628477274302444701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8f894e7d982d0735bcd7994c40a516e6ceea0834c7953787d6c5eb9082765a
Date: Sun, 14 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757843993
