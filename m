Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB4D3B27C1
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775164534; cv=none; b=dJyHQjGwSxeVBAu4iFqcEvEbWzOZqMELcROENDxijaCd3TvU1Bi/Lpzkg20sy3uQ+70QIVEep/mO+b/A5RKqCjp5pik1yVum4NZuCIoq4ZZ2LlUJ0Cv8ECdlQODAoBRFle2Kj5tgEvT5k+G8pzOUyvP/u29LyoYdXz97bdZ+ays=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775164534; c=relaxed/simple;
	bh=g95RfiT9WRbJsxMmWvOvMiQ0/F9HCjhP/0m3gKa5gyE=;
	h=To:Subject:From:Message-Id:Date; b=GUBjlbZqB1GfbHgMxgmFwOPBzpivfLb23DFm4hD7rlRe2HyVBlVpTbmS/SWb85YZ8GNz3tNqYHssSoAWyarmMtHM05/r+23JEyqwUKHwG510F/ZYQ/mnx7ahetFLcckgK/IiFABnsTzJfk7wQmh2PUtmXuAM4SuHvb8EOGZ68AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oo1eqG9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oo1eqG9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE2CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775164533;
	bh=g95RfiT9WRbJsxMmWvOvMiQ0/F9HCjhP/0m3gKa5gyE=;
	h=To:Subject:From:Date:From;
	b=Oo1eqG9gKFuUjaDu6sxikUX/+oxWn0rV5jxpUi2X7v2b0Xxh72K+wrh1WGTNS4l2R
	 KdsYe/6BwuB/JLLbEhjAarb21PJJ77Au3tkp3Jj12TA9wL5lPgmzVS82MeGEZ3zWu+
	 n48sQv8dvhnwHuyHgaeqs6ZXkAoLG/ZTvJsI7sPhMUQLcgCtdDn8WanudQDMVXcf6r
	 FPczuMBETW8vEokdjJpcUM/678dTDyY6asuRazzE/HOHvmoQKb1jXd33t9pL6IlXJu
	 CZ6CClr3/kF9s8oNF1xYqn8QfsMah+kGtVp5ksUha9jPFuPL8kppItN9Qr3VrEcWeZ
	 5JLxgkbtP5Q/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACE7D6AB17
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 21:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516453369.11235.16003085393192517513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8077f3785ed23b30bb07a4ff2dc67b000fc08fc94597dff3144b437525e9961d
Date: Thu, 02 Apr 2026 21:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775164533
