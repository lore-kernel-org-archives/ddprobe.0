Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6583A1FC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745222394; cv=none; b=o1bVcNyDGzfjC4rbb6rw1iYvNKsbRjjGqKCsuz8jzUdk/zwUmSSPQynStOt4XsNyqo9Hw0NRjQaYUR73Zaf2FuRoySXtF+kxb3sIAS4MtWJBVWcKY+IQhQcsGDi4G1+bbBRYbs41V44WoMek9OFoSy9aQo0aC0h714t2QYr49Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745222394; c=relaxed/simple;
	bh=AxqZuX1guNZz+sXXZYnX6iDpwDAbRl4ELHwqH/xKQJM=;
	h=To:Subject:From:Message-Id:Date; b=XiHSTIcAWepss7Gu/UlsAf7z+mYoOqbW+/8NcZzBPDJWZRwrQl3rftEMa4GWmS0ukckZS2h+cmK/7qhEnMJFDtBfQzr0R3OLL359YBpzTb3icpOwtQijvdFzM31+rRMuSaU5BHgy8vu/VDQsOgs7opQZNErh2fI4x2a6BFpPrnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzdRWJTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzdRWJTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8180C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745222393;
	bh=AxqZuX1guNZz+sXXZYnX6iDpwDAbRl4ELHwqH/xKQJM=;
	h=To:Subject:From:Date:From;
	b=qzdRWJTDma881aO2D1qPnuyGkNJugpKLqa43DjVdliO6mhtUOQdlufIudn2ok1Tq3
	 exnIPLHMPMXiYgFMxAJp9HyWlj32nf+/dmd0zGQsAQJvSy76ohTOSY0xxEYyJgoHVe
	 CvFlIqeRbknSAedGoDAnK/FBW/GDRLKTpfQ15vCqlEOEUVK0KdDvG6nVPAeWdTJJ0I
	 +k+rLYaS3lgREZs41anx7BFQFtrs1jgn26ZtCVP89XAwOj8heJoYtmUIt8SLIuYWPd
	 dVyTj7h8Lyxr8KZkamsG0YhqbzZr3naY+hAddnofCZxAJZf597Mn2jtnsgiKEIkuaQ
	 KwKA7vib55vng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA67C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174522239361.23150.5086775584298002259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13217f0078364bfbd4efd3b85c892528d55dbd380163d1249ff564b634b13f4b
Date: Mon, 21 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745222393
