Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A16A2EA492
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752247194; cv=none; b=h7Lue6iKpMGbiMzmq4YHmXn17+3rbhGOmCFqRfmOmjrT1pr00gp2e+snfFmVjEM/slw5thVePtJWV+Zpc+3ZMv+4U9lF4L5i2LpxmbuhbOPrs2aSmWL6MBE9n5S+5TmLD+9rLSktXX8AYRNV4a69a+hRLJGN6cUAR2PQz9kmuWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752247194; c=relaxed/simple;
	bh=DCMTGbDfIFDGf9jDF0BIztW9+h1AtpB5iHHbrl/fiJ0=;
	h=To:Subject:From:Message-Id:Date; b=LALNCgBFIz87dk8n87Np9ubBOO5kT/DMLL8zdnKyPBaFGsHEIJH5oj+r5B1dwVL8GfP4N/x1PV+xIJSW9LidVGFXcY4R6OtmZ6ZgyX1etFyb7oay2XDz7Xypdh6wR0mI1igByoByn0VVAuWTPaY+DxBIN6cv25Ro+uNi/LDEtJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/ZOt22L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/ZOt22L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2518C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752247193;
	bh=DCMTGbDfIFDGf9jDF0BIztW9+h1AtpB5iHHbrl/fiJ0=;
	h=To:Subject:From:Date:From;
	b=c/ZOt22LiDbiGR3mISG10va8mI9ZMN8yop2kkcx8zxFEX8gpjG4BmonkAytNmotCi
	 kG4NrHW9Xcu9hV2g+lr4lpLluoyJ22OiKzNGYM0sCYinQ56VlvY1Gc6IG+CfqIKjWV
	 lHMr60R5IPuiec/la0LLM/VjZP0zXyyPe+fkQHPJMCFcL+tpjMl/lLA0IcnmMcCyiL
	 vBiSr73GtRsKnBIcL7MHWfzUbTTwhaOf/gy6URStPkVzsmUL4dEMazth0JIfzoNbE9
	 eU7+NoZv0K7WAhzsgKP2tleLhiPyI6hvZ2My3BI793mFHhqya7n+p5pgTtfsM8/00C
	 8oZtb4SaI2PIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904CEC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224719358.19342.3769595793358545463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f568ff31586088fd58cbfc3a827da288cb5d23d0c7105df826795ea997956d
Date: Fri, 11 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752247193
