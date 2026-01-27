Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA49633468C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769507033; cv=none; b=AP+dQzhieVN7mO5mrbiYE2CxXD83D/cGDKh5bk1487m/V6WRV9HZRy+c6LjpRDc0unkYJLeJ3J0MJyleEPxR597XgXgAgW+bXvvhUCaajEzFDSnFJFkKz1DktISbxAC0uY2ou9zT9X0y5omd9/TH9BsnRd8OYyAtylI0S1/3Fac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769507033; c=relaxed/simple;
	bh=k01k4YaeqqaQSYvOlCBmWqXSNRm0U68Nb7f/JneSzc8=;
	h=To:Subject:From:Message-Id:Date; b=L2ME+mC0yB8uxg8OETgUEzdRbWyBUKXq7uSSCh73uocXNmaR3P+aNYHg2SVAmSyMl1TxHgCpQ9eczTLlUPNAOvhjwwcRGGaodK0dPmbYT/Z+izUgHbPZTcAiw5+P8zjTJ05faOTaN8zC9qUQdQfwgYl87tt5mxv6cym8mYak3P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0Af44LL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0Af44LL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF378C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769507033;
	bh=k01k4YaeqqaQSYvOlCBmWqXSNRm0U68Nb7f/JneSzc8=;
	h=To:Subject:From:Date:From;
	b=D0Af44LLIvmuGizqr3GTRUE+rIMs1xKuU5soPP6LtzpYyuSSGCxC2o/jMgV6bDrd4
	 qvs+NH9Qwp9EIXRnNuzS32L7sacqDc2MLhRr5S/zrYY+BXSafYolNrw0g0fYFHgXTW
	 of3CoOwE8hkYaW6ttYuG0hsfjydqgmXVqfb0HEwTrMHEmXMzl/2iXs4r21y0Gg9gLy
	 Hky+kvYDcPFD50VoBsA6pS7VJBTgEjjUR/QPqwa4IRHlKr0qTrGM4hLCbhPtHVwSD3
	 gXO/RJT0hfgpgQw5zSyObqlaGqsyNYbfPXZFYaUb6D+vocZ/FeWNODr9X9mFIrEtCn
	 tzVFfeR/kDXUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44A7D2D8C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950703365.21728.649009674025559523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f989a3d8993480b4020978ad662ab494118551cf3c40b08b2902166ee6630b4
Date: Tue, 27 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769507033
