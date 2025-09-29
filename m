Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3451F2FF66A
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759150794; cv=none; b=o7SijRvQE6gyaRhWQ1uwBhUUywIFNvFaAWBdspRQCPbFhLkYiB8L7ELyE31iouOnDbWr1x99C+zZikWuSJowzywDAz2lRo+dFBBqbQx+Sxnl4hU0+4YbnovLI7g2NYDaiSmtbaDxDHUZXeNudAfu6Q894mv3YdHEn4eCDQW+COg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759150794; c=relaxed/simple;
	bh=6Wb3of74e3In+klhBp4zxq5udadW+o89mnPYdaSGDbo=;
	h=To:Subject:From:Message-Id:Date; b=rgnx4RkyP0WEt176r04j48wtwUXF2oQ3IpQZ0kyT3nznnLPvXTmboZPtjw5E2hHwUtyc20UV8V+XOkt4sBlBc/mMOQtMUrnSJgiyLcmS/Y+PiNn/NozDZrslCq1x2lDiUVB1fFL7Xs9stp2iucOPhPpzEYjT2EJrjbSu7/esF3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWjSwwrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWjSwwrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A483CC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759150793;
	bh=6Wb3of74e3In+klhBp4zxq5udadW+o89mnPYdaSGDbo=;
	h=To:Subject:From:Date:From;
	b=AWjSwwrwOrDQ1WR5ZobGfcPZBWIRvxxw+KGDAbcHke0abfDCrxyvF40yAhYrnF9WH
	 2OwHn7Wp1wV4KYd2ne3y9sK9psWP/7JLTr7sD7crRaoeRM7V1RdrDqYjjP+ZaqWhsP
	 WcPakCNAOKbAoXSBfjAfTJQ7ORBriJclY4DbVJb9HdR35gGveYB44cY3n5EB1aC473
	 50r0x7Zw0c3wsva2ZQldckh3R6pIg9lK1mHj6OTzastfXsjZepy+W5na5aqGW1x/WA
	 rzsV0hI2r/xCNh2Thd22RQn2/5syxo/XmvANfEehJCcdyrsGUNz92e7E2/0bXrL1g2
	 rGq4ekqXklfwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97950CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915079359.381.6448013167236195578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 063425c7278df0946f9f3e2575c927763efeedbca904f0004dfa2ef20165b9ae
Date: Mon, 29 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759150793
