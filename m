Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887A01E2307
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763554914; cv=none; b=mec4q1Gnn6bo+RTf5QORNr0+RNZGYH5Ia1WzL6u4y7q99tEh6Ur7O12cnDxYInJzyGeWelOghAtMM34Qv3LjTg3y2o7R9GHAPEW97Mvf9gfDdGmcVadIZZxf2jaPszZNZkeQDzrmOh9Usa0S4qPKgnZXhiBh36bJ7PyiCrZkoWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763554914; c=relaxed/simple;
	bh=Fj4UT80maM75JEJtjEW+3NrcTsaqgOORQO5jEJXJCOU=;
	h=To:Subject:From:Message-Id:Date; b=ZUmB09XxRkrOK3Foa81zmmAwKLEB0HyRjJmbo063AnrPZzj13hgR6O3TtsccloNjhhh0m4ecEIIqvpkQPjE8n9Keg6M1X0RARTwCmODtLmGkQRDqH6uIoTMdz5fo1T1DWOEXyomT6x5GHcMhHM8rPwaiG5tUu4DkGXXZpCnObTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbJVKRv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbJVKRv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D676EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763554913;
	bh=Fj4UT80maM75JEJtjEW+3NrcTsaqgOORQO5jEJXJCOU=;
	h=To:Subject:From:Date:From;
	b=sbJVKRv7ueiZVezlFm+9f1thNjz86fctUJO+7YF83CFpwkdMyUdujFdnQm6G9j5rz
	 PIy73A3HiwMdD4FrRsngvodOHCB7qFNN/sitYXNN74c24pUdylO2KxKsf3hFLEcSyK
	 Cb38gVVDaosFgrN1T2u2uSReLsb0FBAscA9ZpKyl+t/kg3s1VSbRxP4Q63HkL+hZcJ
	 k+/jxXcKZnckVpBfHQtfvpLxDLrK7Ve2VVlFM38FkGiI7FiPopq2p3xILGQRS8ToNg
	 FT8md5PfGJFk5T9b43pBjB1SsV/Bb5oJniFuaJERH2Dht0ghnlXKLP4gJugaIMp5QX
	 3PJMXqLHiHsfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CBFCF31B5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 12:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355491358.32297.97090880060990165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d8fa4baee2ab3f7519801f02758997bd6ab7d06863162c7da6da359260128b7
Date: Wed, 19 Nov 2025 12:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763554913
