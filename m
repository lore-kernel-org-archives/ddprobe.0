Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A8482D72
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718967743; cv=none; b=HZbJOSAUgrcatleSaWfl6uKcBiPOch3D63BNG80ilxZrhMkKebXyU6KusUvoU8Q0EineKTZZ9wpifxb4RCGRnTulFPXlSj4ohnOQYJnziJB1TQrBmlGQt7PQxc3wxwlVNq+GgTtOo48/dFov+J+0RZEYdUNriuGhSjasyNQmwCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718967743; c=relaxed/simple;
	bh=Xn6D2VQq33Xn8UN3hm7Zthpd+rmqch+3jJaUrPm1924=;
	h=To:Subject:From:Message-Id:Date; b=puBsRFJtSWwByS2PVYkQBfoTscv4Lip7BJhwOz7Ecfgq6yk3J+Yxt0M/XQgC0nDQIfqjwlyEsOlXWHFaTHNXaxhQGXcynEXt4F3Eiob9INvMdNjaZnsSIxH5I2ZTdB4YqiaYm9s9RUADhe0jrIgXpzBIDy/6pt/Qmgs6ALF235w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xbebbyvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xbebbyvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4FBC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718967742;
	bh=Xn6D2VQq33Xn8UN3hm7Zthpd+rmqch+3jJaUrPm1924=;
	h=To:Subject:From:Date:From;
	b=XbebbyvzEdCSephS9u8NUIWdC24d54NymFUFSjYs47lOB/HfcN+SxaErnTj0jXZBj
	 annX2b7wCPzRNy/cCoH7heQzvMazzIKeXpPjIXSNb1PXNAvFJCzZWoOzVTvGYfS6Ox
	 3lUejKHxLiiskpDZYcnolxmDOQ5O7GJ+a65Qbof4WwaKyiZNFGmGh+Wbilv1XklcXZ
	 5K6Pgsq20fw4wej/rRNtm9+rhtLLKbPo83CcAAPaIGwvr1A1vQErCDVBwOYWR8GdTM
	 CjeKt/GLgYlgOTf1aKwfJZycZpAt+tQyQf/6JAKRroQDDlGYggqGhAIm6Gfarxm8BH
	 Z4c1+/WQEbmoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB81EC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896774276.1049.7461746898831399813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d32ef32a51d83bef41507321067a0fb6f84764d2b3f58c38ca36baada88ee2
Date: Fri, 21 Jun 2024 11:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718967742
