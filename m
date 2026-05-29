Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379C6221540
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780020754; cv=none; b=tHKqMg3mkWLk62LryF/owChUmDNaGNFkJkTnayQpOAXR8BJ70+m42EzaGuMl9OTdyp32Cv3h9wSM8dNQx7eINdWKFY+Z9Wr3cwW+pWPg4TxU/0pMm9JKtCrdsp+K2l5+LAcbBvtQbMZqxohhqso/BkUbBgGcGFd7953xM9LqsL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780020754; c=relaxed/simple;
	bh=vjwd3w/s6N4tGFwza5N8a7g/zDzlO3ODvPHKqQG+gSo=;
	h=To:Subject:From:Message-Id:Date; b=WYi8z3FdY3j0uPOILtyzZ4fQbpdvuydfMw0HtSQpPV5QXX3eEO9PiTCxw7UhxJAoeYcg16Ls3/wWuZLrhN8rTqUGXcbmBNV/DxFln7556nckAZPL3XJAgC4JAtLJnVO7EUVFTLLycF3dFj/qVlUOOnDUXBOcJGgov/BkMNq4j1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCA6Y7vC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCA6Y7vC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C805AC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780020753;
	bh=vjwd3w/s6N4tGFwza5N8a7g/zDzlO3ODvPHKqQG+gSo=;
	h=To:Subject:From:Date:From;
	b=jCA6Y7vC7mjsMXmvUXQHvhLBVgMJqA2qwdvSHXXkoJvBJCrxijbtOVeNKBiiid56D
	 flJxwFO135FLNIF+Wp16HotlGJitcwq1a8j+pi3MFBlwWWLh3ahM2/bYqwaapIpKeF
	 GQr1me6o4zWvXF7FzOhknYbVE87EbPbiSWWww48Qq5D/gfpXMw4bu0zAJGb24LCwPM
	 3Ouawx3f+1MD2zsehbrq4ONPSi5SH8YEX668ItY5aMp8P3clUEhat8gJYlsk/Fbv9j
	 Mu6vkS0sGWfcEPYtLktyVIM0cuongz3s7AK51FO7rrGsg0hQEjJoLqZD2iYxob2YZ2
	 LNSMDeJX5wejw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9C8CD5BD1
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002075368.25606.17980121752569224613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca649eee8d3d4d88d7d971d02530a8806b46b9a2ac8d70b868d9bf296ce240e7
Date: Fri, 29 May 2026 02:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780020753
