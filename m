Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFAD20FA81
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764049374; cv=none; b=izB6j7iMfhkjpMDIDlsiz/GIZnSupHT8icS+zBBS+A+9zbrAcbqSERjwQ4AlVcx3sTwLbHQYLah2eoEfJrx8od5CGqmc90YSt1OCPOvySgHoCMCpY5jm4V/YSGhRzSyqqtbm7jSZBtZ3mxCRslaR78ChDO4MWiB3+37ZE6bb7t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764049374; c=relaxed/simple;
	bh=Nk8z9ukQT0SMEp/ZGfx/lA2feU/8ouhsHW9LRvKfYpk=;
	h=To:Subject:From:Message-Id:Date; b=tPasQR1JHex0j8GTCQbVpC9sCQVTdlgk4fsu/ew/stLMKZE2PeBZm90EFQ987j3BncyZ5jJ3mTBF6E0UWDtxwsfuG6MFj3da2eDxgeNy3xHIYKrwBN57OqcsHLbQdJ00mwhf4x98IacrOYrc9e/KX/GL18AUeqIIhO9+cmlKEPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qe8xaINX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qe8xaINX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FCAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764049373;
	bh=Nk8z9ukQT0SMEp/ZGfx/lA2feU/8ouhsHW9LRvKfYpk=;
	h=To:Subject:From:Date:From;
	b=Qe8xaINXKoWRxIY7l8rdfSvO4+X0neL/UMcohZnpjN57WuunEQ2FV3r6+R/AJYl2k
	 22Rf9jk4Tj0QHEQ10/pjIUO6D8AQx+AY+Do6jNQ4jl1yb4b11WTtwt1zEiZxfbb0tg
	 GlEjdOqNmzTBaavOGx1yqoTcwONXfe330lPtoEdVgqI5nekdGelbuagVv0mRNHxBW1
	 vG5WdB8be9mX/jQeZ4gH4YrGvLRL3fl4Kh074Pl7RYFrVijGYwQSikcq1BxhD0RBhH
	 S92ZNJbBnTqGfcrGn5WVdtyzDSMvpVZQHvygA1fDRuMOhWN73mwfxIDFSOu1mWU9BD
	 6rUs5PhQZXBCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CB2CFD368
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404937358.31711.1092178057693258408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea1426701e63d8bb9d3212053a320bf0d91184f9a01800a5707c15567521953
Date: Tue, 25 Nov 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764049373
