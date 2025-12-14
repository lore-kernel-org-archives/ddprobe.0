Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295D719AD8B
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765725774; cv=none; b=JTeqWi6XklxTktcP6TvXPE9JVLjHVRIUIRRREm54bItG1W6EM3MdSt66dAJqYOz2kMcEoVe7SD5Bo0vkibdhZxX1sPJRVb1Ckn1JxVpjMM/Zp6W9XlfcI6V/+j1POs+5EnLEZDszjHpNMPlPqKj4kX/2UL9neWPyS9Dipzh83nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765725774; c=relaxed/simple;
	bh=sgiQirbdHO3TmvZ6yKRgQdf3jXFGcZfA/yt50ST3+YM=;
	h=To:Subject:From:Message-Id:Date; b=Jyl7psrnZhjJYUkVA0pCj4udTubWMgZbvrAHD4evWbjs8HpPzzf10Ahklr+EU0LUhmg68cbomKtVcESLiqWdFMNpeGntgXLy9olz8Fee6UK9aoiqLHkr+sQDpdhnuZjdQfKo2sTRq7raBBmOQ4qsRVYu+BJhHeeQGkvjvftDfg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIaDd26x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIaDd26x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC654C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765725773;
	bh=sgiQirbdHO3TmvZ6yKRgQdf3jXFGcZfA/yt50ST3+YM=;
	h=To:Subject:From:Date:From;
	b=vIaDd26xQ3IbDDyZhPaOfQx/hf0CpGS2RNwqrcgr5NQJDPm6A6Me6OMPZGBSYLx3k
	 rxl5kz6oZLygwgtVs0AlhhBGw7eyNPPEEZpRh+5GcZGABV2W5mdMaB30YdPhJl4E0j
	 EhP++hiBGb6qyldWJ2itoXWsjKcjGXWgfguAaYeG01MerA+Oeys+Kx2GrC69O7x6+5
	 /UDP9bKB8LrdOl2DMrmEaeMBefpmeF1p3nquyk5fhvBaRYcU5vAwYbD5qmuB+eQWYQ
	 GD97J9CRdkVEaRwRX7g6abu+XqErnY+IW2mFsMDmUQmEhTnk3s/XXh3MM4KYMSPFJQ
	 nZrbGQlZmH4KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAECD59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572577359.25366.7052168772806524613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cddf5acffb40c9af54bd46686cffd8ca9441ca7a966be28403acc20b8a2fa60
Date: Sun, 14 Dec 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765725773
