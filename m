Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FC0361976
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786867234; cv=none; b=a40z1bXKkXW9KraxnvcQZUhrwIfRsMACLVvG86FHKJL8dxHbuKQkK/Ly6+hcpnWQMSrjbGUHQxmxi4enrasK0ZILoEFNIHhSucoN97BEyWDjMFMoV01asJItTEwZaUUeSNChgnqyjmYdc+TJD+JXnI6vaZL7u4PRG7TXN6S7O9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786867234; c=relaxed/simple;
	bh=mA64eazK3ubdCmThwCuuJOgYO+OW6c9YfnIwDSz4MaU=;
	h=To:Subject:From:Message-Id:Date; b=Xgd8ro/4b5yYae3tu52ol2D0mKBX+HemgluYAEf+U30oZBdxQ/W1KW0VmW19JRlXcNjf9rFCvtgGtR2ON7+aF7KQOr2uq0+pp1UhomcACqM0sx2FPCn/6JD4AAaBkIMVQ/emc0kk7iNm3aPPrtGMR8j8wBXXUeZnF4zW1nh7gcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMzxp+XV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMzxp+XV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E1FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786867233;
	bh=mA64eazK3ubdCmThwCuuJOgYO+OW6c9YfnIwDSz4MaU=;
	h=To:Subject:From:Date:From;
	b=EMzxp+XVQm30JpjgYhUO/Bh52pMpwrPGrkGpifsbrCRvC0GW1obX4k7KJztmzCmgt
	 d1YaN627+H88PC/tVmhsh9lfCJNq0xGxpPiv6TiXuirS6RQmpCZd74/Op3UQSyruNF
	 3BGXkq3ckCjW06t3BuSrTzkbuwl7CzBCpiWA5XC30QAsSXmJOfXpt6EOzTE7Vo7gcD
	 5S1afyh2FO9EeXYxPpEkmtgLd382eU0t+ur3ImYTlrQQAmQ/IgM63JWmy5jUJ2sDrz
	 kVGW44tDFSSGfUeq2vUoMwk4M5T78evGRJ7ErBMP6PWir8xw5kFSDedisk0l4BNeu2
	 w1tj86UriG4pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0604C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686723368.29852.10136802553604322936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9591f2f649ee40f19e9ab1ad982421a797eb6efd439958fd5185414299fade
Date: Sun, 16 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786867233
