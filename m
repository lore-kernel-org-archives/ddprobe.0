Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F7632F764
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788525634; cv=none; b=c9+DRMpzJJ3mJt1+zQlovxPcDkCN2mxR0gz2vpPeJMWU7xVYuHivdOVy6qXX2lb9gqYP27/q4h+x9b4DvUASgjehVC+cjp8a9K01jGxmUcariL2m6a6/zRlndcFNo3tB/2WajlIcsv4dqJwjTbKCW3KWI/pKq2C46wsZ3onvgmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788525634; c=relaxed/simple;
	bh=4vDzhatEDga2ePzXmNmQu/yThBznUokl8gZwrqPF/ys=;
	h=To:Subject:From:Message-Id:Date; b=VvRzLq5ZpZL1zWUdNkb6ohMc4Od5JwF+WNI4JsrrSoOhT0uGK7zUIndKXvvu35kmiZIty2XwnHD1rWcWuH3WzSpwLooDOyYEVnut8roQs+gEu2vSR/wcyd2s8yI+N7PBtk5Js1NjVidGU+BfVkoRDndahXsagnU4AIbUWz4XT8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIjEJK2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIjEJK2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE301C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788525633;
	bh=4vDzhatEDga2ePzXmNmQu/yThBznUokl8gZwrqPF/ys=;
	h=To:Subject:From:Date:From;
	b=dIjEJK2UMQskjhpLQ92+pYyKHNz+j5An3IfCgOlhtan+tvX8Vo3+ILZM3irvLIt/Z
	 AEiJfPCHoePDcZq+YsJJVXxwoDhg+dUyYBdPgVaBcEWul/ZFOxkkDmNqYO4gpZoAKc
	 MKRWIQgifu1gCIwgf7fHbNW94ggQLGdIKG+PbAh+z4V25JiqfJXTScbEO7jLP5UsuU
	 tuxKSAcdbXOLWQFyxDoPKjAYQ/CHcdhB+R2cAIbQAlVR2XxkygBXl8XKSEX1dY3z7M
	 HJheYC0K94yHIWB9irYx6uDtrfElCWjpraxnIhNuX3VXFJ3j8IW2jhU0vMiaedPSQC
	 bNrenrgKEXQhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8510C61DD6
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852563374.28551.6102259240012198096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da45f4ef7b500955c8a8a2d428fc6179f558e389b125ac929d8e56feddcf08bc
Date: Fri, 04 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788525633
