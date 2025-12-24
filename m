Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F8A8479
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766610834; cv=none; b=rcwkUBZTZUjyrAgfY1dquhrow0Ivi0a+vxOhuKdiY4HBV3Es5pRp2eaQD+moQ3YTHBC9wbuTiYnBrUYRny53y3aiwhK58sywwHUfHzdCw2f+HSsakMuDKj2mArFMbU5TUO2fyxmj/vDHyvdu980bWeSoy5SH7+3VJ/WCW61S69I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766610834; c=relaxed/simple;
	bh=BpobRWosBJUZSFvzKf5Vua+ACEgSC6VRcl7UIIGCJ3w=;
	h=To:Subject:From:Message-Id:Date; b=bZCoYZBmdIJ7JqEah/zXnktaiL3me+haPIrm966XaGo72Mqrc29U7Wl2HRyvkAFBhUF6hWi4WE6dwGoYSGIBR8bRmteWvQk3fVgGX2DFRsCC0i22IRLuMWylvPfxB0YZdbmDiTXDBkCRpOBYpeAmXU+1iWKgiT981JIs1aIuYcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOSfCzTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOSfCzTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C68C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766610833;
	bh=BpobRWosBJUZSFvzKf5Vua+ACEgSC6VRcl7UIIGCJ3w=;
	h=To:Subject:From:Date:From;
	b=TOSfCzTXQVM0hvBfctpjb0enNRy0RoUcmXynC3m8r8D9hfZ45Ldg7SoUb/GofAwRg
	 zvFH7KgbIsYyU5LBFQ4fkHThUwQqFm7QDiSOZSQExPb1bqK4sk+QYkX8brp7p2XZjV
	 iXQz5KCtab4Vah7704NesLmlwJmjdVJcpCXg0dKeL6RtzyClZOmLvef2aUFUUn1koY
	 jz9w+v5p/Nql5aug964V+nt8QaKR7vKya1drIcDZKnmtkO/vXTLZdzCDjD7YBMGrc+
	 T5ZPWMq8CP86ydfhTFRFy6Gf9dIL2Jaqhbf2oo/BY9CRSQIk6Nsh/InNDh5oI9Vc98
	 htmpbDFZ5k9Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B84E78491
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661083357.13908.17725774809063734618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9b0e5016a7606f7893bdd1f238b8b3630152f6d5ae60fd6a99a97560c5a4d3
Date: Wed, 24 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766610833
