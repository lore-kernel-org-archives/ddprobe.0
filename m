Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359B3EAC7
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759486794; cv=none; b=FmW+pnAi4ttOW7z7DBWg9vVG9NKIjGeIYc88lhsZUkcjoY3pwzlAFCZ7uzAkZKA+89O6M2KJoCtTcKCBgPWuA61rK3LY0vBHmk5pCCP6/hhNXZLzKVSk++5d+/z/8OjiCmcxmI0RJx3xAJljmyi/NT5lfz3d0HVTClW4G5oyPzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759486794; c=relaxed/simple;
	bh=zHry0yraYn7fJ1USCO/0lIjckzao2bklGu88aCMJZgQ=;
	h=To:Subject:From:Message-Id:Date; b=OEnK+LcfhvhF2AIqxiphETIkQ3K+KvqxWOiG8U9yzphAhpI2mcFWE7HzHF5khY5EHHdhDbtNgsOXGMP2yaK1vivT/5gj9Lu2alhD5W6piPz6+LSNaQ8W6AIcB8bOq6gVFGoRRTRq4AySk1mDUzkY3BtR/XOOGmkAD7EHIPURrI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J16TvE3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J16TvE3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8D0C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759486793;
	bh=zHry0yraYn7fJ1USCO/0lIjckzao2bklGu88aCMJZgQ=;
	h=To:Subject:From:Date:From;
	b=J16TvE3S/ke+h6JcJmYINYyQDbl3OOHFw6Wj45AQdbBFUb9zHacL2L8vfaxgGPgRF
	 u+Vm46mHr/0K48Q1DH02i1Aq/nfUb17DGjZaqIbsha+xDHRhyG57iOz3yAvvtzQKPR
	 LfPrGBXKoTlSTKgtibzI3snv9jE4PrcVKbEmzPsL3oD8oYmZaJd5CHbh/WU2o18lqM
	 aYE+fPuiY48VtsRSemLafTnOjqq4EG0l89Q+aY0qq0N8PJDQrN8LRIOR4RPxJ9ZR2A
	 w7WRexv6uk+y02U7Etav5eU5hitynT4dISfmk5TFlbctUVO/onynCJFoYqjCntEcHP
	 RMxzayguUjWpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BB3CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948679361.22542.11795703671378796266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad8bccb660a59e2104702f03a1d427ca3a693ceff2d811a5f2a5fa35733a293
Date: Fri, 03 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759486793
