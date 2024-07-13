Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674F94C7D
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 08:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720859423; cv=none; b=sc04qIEfOTeSDH1RTbbvX+NXdXRW5wKxQ06KYiOulrWnjZdCyGWgVT/L/Ht/tr8jfVaS5k+Me5EQJT45cbk6eTNWQCXrK2vsMmt2ykdH+bp0unxhbrc+OeJMRZKZdsi+MeER6utjLwf4yaQk4X1zGRdo7jV9pE/SFmdERznue9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720859423; c=relaxed/simple;
	bh=u+5XN4PHoboQr5FKwVEOPsnjBboCPyVN+divvyquMNE=;
	h=To:Subject:From:Message-Id:Date; b=CS8h0aSUWTH0K4YCalCGAXm8GJtt4RrRmfBNLMy470jTqTiZkhZ/B/NEQ4plOHCGNseJipiyQjKO3eu8Ivfv0eFj3s/MItSHYPUbUPnMc++OaYpW7tTi/VHTcKMpZufPG1E0X5gY2U662UKDgEzgWmwLygQtEtiF1P0/ow3/mBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oteyJb5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oteyJb5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E43B7C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 08:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720859422;
	bh=u+5XN4PHoboQr5FKwVEOPsnjBboCPyVN+divvyquMNE=;
	h=To:Subject:From:Date:From;
	b=oteyJb5mEJXi+H8y/Hf9KVeFxYTXGu8SJuzKHoefkTNfO9XcB78IgZjhWkG3CMtv9
	 FDvSZOtBwCvJNq1tsIabF6VPxtbl0B6XjMwgn6AQvgSe4pX7jL6SEmhDicou+N6H2P
	 UmxoyT7qvRuTa//S7ebqDpczecxZ90vL+IEXP+Z0NfwUq6It3QPGttoShLo0S+V+2e
	 aED6gfWjKlN1z/brx+vqDcrq8EhQ4jmIX3AOzsVNL0uF8iMppOTYaUa465mZdfnr2g
	 6IDkrsteWxmFRMhn7qX8r6eHQy/1YbQUS6y6mJn2GSiNIj4KvlUgV5mrfMXzerybPW
	 zhOD2Vf1b3SdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD5FFC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 08:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172085942279.8819.13052219821873331041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16b122c016099982453936a25387d57809714e316303ca7b95186c77d159089
Date: Sat, 13 Jul 2024 08:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720859422
