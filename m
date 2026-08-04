Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B96A3F1659
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785860434; cv=none; b=rRDTPhUH277Ijmx5bJYT88C4yaF3EnGHOAP7jnbFbBhkYyfYNd8F1yd2D+ZESVCYskx/WQRv3+vzByrcoo0ScX29KmCwdMENGIjotp7L/S8hob0IzkCoKfo3quSWIZRSM/z7yJ9MuvhehFZoci+rmRrHAhO9ljg6TOfCVAs982o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785860434; c=relaxed/simple;
	bh=8Uh8bhn6kaBbfunyh8nXPqH7H1EtC3l3oMCKSf4Ggow=;
	h=To:Subject:From:Message-Id:Date; b=RNCkEiZ/bthvCYqnwXaN16nHIbOLLxItEdn0K0zE49gxMpndZQTAjDTM7pAx7lFX2coXDZ8gdX496ES5xWdDr1WaBDFXBTkfOkwNragUwEhIZ7t1iMMFgHe3fMiBEXTatxdmk/8xl+Zs47scvsEG8oBpV3FYMeKxYozPAX24PPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSXN2vcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSXN2vcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC812C2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785860433;
	bh=8Uh8bhn6kaBbfunyh8nXPqH7H1EtC3l3oMCKSf4Ggow=;
	h=To:Subject:From:Date:From;
	b=ZSXN2vcbwz4ZFTWA2Y/eF7B/6njxegkzhT4OmiButY2iCXGrSVgdD911hzOuL8j2/
	 LzzqxGhcE2BkAnHfInGoFFwcTipJB1TLlIGiI2iyCmAudObF7zSePn2y6HSjrLN/Av
	 z7KmiuX7uTzmdO9hsysWhZMKQ7W3raWHOOrEOcH/zmFtR1dgrrXzgUOxLz+4xdq2Jn
	 fd6gPAxCsd+pD+ts7xujU9tUWBDyYOzS1JSiRaNVOK2STp6tMfDyilpOEy13e+ix9U
	 D+tcaWUiOD1pJPGtRJyVAxTgYtYMfFh+muIJMXVTLzjSnpGE+tXkISfmUgRightotU
	 3uyUxxxQLd75w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB843C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586043369.4370.4915316847914457033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a576827338ea72630b20169d0c8605cce12035bf09ca4cc4ece5576c5b9b4833
Date: Tue, 04 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785860433
