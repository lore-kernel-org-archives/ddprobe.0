Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57219471425
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789814434; cv=none; b=AF2I46WUZQ2XdYVKYpD6TO9jYpkS1xt/Dwu6+P2U2Nb5R1lxrtlp2QyqmzDy9qIaOTbmNM5oOUy5QXE/Y/p2WTXnrujC9eYMurmWw+kvINWxM1OVJXm77bUsWTN5CgP1ZgKFXn4iGTOTy0Yud1WF6poB6G1/ThhvF0wOegk++Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789814434; c=relaxed/simple;
	bh=8Ia0ktuyZOW2SRPco/4JK008hnFkQ7+CDvwojcsmHQY=;
	h=To:Subject:From:Message-Id:Date; b=r4mbcDu4f6P60bwGgDkSOvxsLz1NkZuxxA9lvF/bcR/p6pQea5xQUBNhB1TaxVT56bAZD7xkpiBZIR4f3aWjLJcYL9F641pN8UdsRuKAsMdLI9s6GXAFIWUebe1iqVwN8MI/izoMGw43K0B9gsEZzw9buDVDRhwrRF8z0dvoT24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEihpy4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEihpy4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E33C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789814433;
	bh=8Ia0ktuyZOW2SRPco/4JK008hnFkQ7+CDvwojcsmHQY=;
	h=To:Subject:From:Date:From;
	b=AEihpy4W86f/pi7+PWp+y8E4+Z6cfuLEG7G5zNsjxCEW6qw2kog5cSidpXaFm9jfF
	 djq6U8fwmxs7xPOM94S1Amhd+c7BwvEPOm08rp0uz/uzYqGpPRlOVeoynpWQQxEXs8
	 7lyP4YPeu2Zd+vojSCt39+NiIMw7qsZIKUaHtMROWRmTooUUr2vfa9bGZREGOHMKgl
	 mhvYDRmTNFGiVkSNVWh6mnJNru4Xo0T2H+6jGoMXQ0YMY1Ss4gynCqTf0wPiEJOjs7
	 dsbych45zx5DmqaSbeb4iHO8OVzHaeBpuurBXf9PfliZipTDER+XgViPDT3Jp4Opec
	 2+AxaKkYe2JjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFB6C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981443369.1436.6539370588089673787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad202d239496dd1106536cd9a8617c2e7c83245916fc138129a0fbc63ac847b0
Date: Sat, 19 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789814433
