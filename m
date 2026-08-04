Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419D143BDA9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785850234; cv=none; b=W4upfq69vr++a25q1Kb4tJH9ppgYB2EYNWur6nGA7fIx9bjKMEtiaFod7FCvHcBE7pB34drLNbZtqQmFnByd48Vx8qey8K8Iu3xRhRzADSCYx6V3bj1BD9qDNsrmMGuHZEmWAGFNbpPdaEUjkC6mC+SBWf7uw7kuYm6q53P+syY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785850234; c=relaxed/simple;
	bh=hjVLJQaAPI7CapCZrMAGSGNLyPwgU4fPfZ2SiL/qLkA=;
	h=To:Subject:From:Message-Id:Date; b=aIAXLFT0mVYu+8VTu+Xya3ORa82npufZx9p/kXV5D1j7Yx1okEAE6AGM6H3zuccRvb1uxJe1VK1IBmsyQkf6r2OVhCGmL2H5bnHW2QM1dF6LRI4oGR4ofDVbqw+fi8Jrx9Iu8ZKMgoCAnUEv+4qAM7nwmo+K7K9CXnEmqdfNESY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJAm7rjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJAm7rjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71D4C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785850233;
	bh=hjVLJQaAPI7CapCZrMAGSGNLyPwgU4fPfZ2SiL/qLkA=;
	h=To:Subject:From:Date:From;
	b=tJAm7rjsszr37/wvy/NPHuulYoVwWac19Wxd7++lAwjjxLLthtZjKEMIcMw5wnZ6c
	 /lCfiFcnNFp/edn0Uwgn0uPdx6nTaRAQbQpqaTJ3yJPiGhcjzFVV8VXDQ5QKrCnGSg
	 dQ3w2DbgDAUFzaRl0pUsULlSiJB0/VgiJPTwpaBzd7cpoVdjZTJmpXE9H084fk2uG4
	 u2+8v4/CtKPTKB4XaCFgPR3bDVl+1cZjMjrlYCHDnC4JqZl1DfWnCLJw5jL7Ryv+VU
	 r/GLdRxMY8iatDzvO5B8CdhE7LmZqco+hD2WM5NZjKm6YCvdou6NW5Sqcf+p+uEFy7
	 8LPdkJwCn4ALQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2802C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585023371.22491.8174187242594107373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 688e646031289818555ce6763ca2edacd03a4aac1b881cef064e57cf0be4e0a4
Date: Tue, 04 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785850233
