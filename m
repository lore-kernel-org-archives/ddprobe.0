Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45F026561D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757621993; cv=none; b=BXROoGyTINk0scI8nx5o6dimXNPsr6dsr/y477yISGADsXrVGkKZq63EPUCP0zW7njPDblKKGcYw/fpQFtd5rsFTkpgh4qmfN8CtGH2WgvPsS+/Hd9sn0sl4+8YtRqvznPm5ohdSPSNvaJ7/B2s4Ie+C1TafIX21Prg+b8Xk97s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757621993; c=relaxed/simple;
	bh=5PITsDc2UCFu5jyVUsg0e7HXcyduTwXxQFHP7KAbw1k=;
	h=To:Subject:From:Message-Id:Date; b=pcful7ytu/OQLOKnO5vmytGAutuC5B7q2SUrABYbHpyDQPMaxnV6kWAW2pBEuEtm/IsRy2onQOUwpsuhNhu5B0F6M4JHX4MNV6uJOlrvekO2ihTVfaWnSpZyhqtu0nqyTdzsuocMLcSOycMaZfdmnLbT4QE+jtA0dhYMdB3yhOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u77EoY5b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u77EoY5b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35D4C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757621993;
	bh=5PITsDc2UCFu5jyVUsg0e7HXcyduTwXxQFHP7KAbw1k=;
	h=To:Subject:From:Date:From;
	b=u77EoY5bsxIs+uvNWTwPCmgQlHIlifBFzlC/Q9woQmXn35u22BOma5SmLrR8Px5GR
	 BRmhXtPZ68b+iYHe5CB50WxmBeZx+UfMFHcsKqzHeR0YLS8BTzSihJlzSypL3EkHkT
	 FWeeJicahOCoJ39vj30a0Vo5fsxFkAR3e2ooafHoD82N07owrIMHhmb8EveMH5bSmU
	 DEPoAveXE1MWHabauATvxFGVZlo2UIl7JBOqH6X6HR2nl3BbGSy9bhNNbL83RbhZUy
	 DuOC3z40TQ65/jHKuaAlgvycROSm8WhN7uznv6wpdH/m+bjCzrKBfU5hCdirOjEk6u
	 8DPeCByEXDAtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A8CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762199357.16878.5138503639893059693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d55719b29bab2f1ee0da1f72c54af361e1e547ba3707ff0bb680dc06277b429
Date: Thu, 11 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757621993
