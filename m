Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F0E246797
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768728834; cv=none; b=SAhCZYx4NtiDyo2zHVHnqBXyZKXCSzV3SbO+/+yrcQis8z+jjRmqi5DsiCPSli7c+/abn4D6ixsDywd/GJG7wZu3bJbTFc3PUq3Q4rUwGKaTMIKJl8Tz/CoJcdhyzNspWUdupqVH+vmM9UyQ6s+j1a0YPTtsrbbunT0SnF8Vz48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768728834; c=relaxed/simple;
	bh=EkP9H0vLM86nBP6ZRWP9sxMRaHQgWQRn3+t2NSfX98Y=;
	h=To:Subject:From:Message-Id:Date; b=aVdnupHv+m41B1oic/n4MgqZl1kJ11eHwaxMc01RJSSAs4Oj+fLUNbP0Y0eNI8I6Xpbmbu4IPdIBd690rb25/iGyhZvbsmyKXObSfQ0p2K73IR3CetaGcQXmzTlrUWkuZyUUMLIvBfzB6uLvD4xvpt8RyYOXjY+hVq9nTJrktxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAI4oS13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAI4oS13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E70C19421
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768728833;
	bh=EkP9H0vLM86nBP6ZRWP9sxMRaHQgWQRn3+t2NSfX98Y=;
	h=To:Subject:From:Date:From;
	b=EAI4oS13xMrdWGiEXh2iqtCsjEQoR14cL2Hfimn1Gkdoj4BnFKhW3IF177xIjybNJ
	 dUBhuHARL9B1s+z1VGoQZ4u/eIXgFnFoSr4N1kRqdZZyTPfMNxt5X/0v6jrrI1/xPL
	 IfNYoREIIyCG7NDQ7JlKPwJD/2ErVvBLwstuu3hMmjZRg6QlCimZOkjpUbaVIElAUk
	 gPmRFHPs4tiiC++XKoipiH/0p2RkE7ffWsDwBfqsIexfrGBMg5TnPYrG1rCiIVM391
	 SPZnV8TI8ga3QKSYYxNBpufcMtjGR7VZYbyWdclvbiLunk1UySrsjKAuFg3RH9T4Kr
	 YorCEpaVWbnKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92360D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872883357.21774.7226341412720093715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765bc4c30165a7d7f28eb928f7cd2a087c285100d986abe8f6ae591bca100578
Date: Sun, 18 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768728833
