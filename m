Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320DB3BA232
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780092214; cv=none; b=OfZuUQMrnhULfFGWJyaNDw/fKwzn9HsRkjFxWuvhtvo6bPjP+7TGm0q28QH6WDYPsz58dhQnXwuTeydzbv0lmwDMd0fPp+o5Ogdl+X65dLjG8ImsPKhwEMpB0eqe/kvFLJTJCzDBiWBXqibLQ5HQLF1UpGdFnaRG4mhvdzML5vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780092214; c=relaxed/simple;
	bh=pZzew7QsOI5ErDsjBB+Q8mYL//2zxCnjn5csFw/DNe8=;
	h=To:Subject:From:Message-Id:Date; b=s/vWqFG78Nze5mvAdgh17/5wQ2Nb7+HzT/vbnwA/vXO6au7p9Pnmzhx75HrqzSzcZ96svgzc7aJ68oXzA2dBxYSeQvBaPtVgtYqiAoEmuiyOJ5u7LqBN/2CrGh4SsiysgvBVGj/4NEz6Bl1zxGqQmaxUOvMkv4I/FmJL+jqqBQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFNLJra7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFNLJra7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C530AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780092213;
	bh=pZzew7QsOI5ErDsjBB+Q8mYL//2zxCnjn5csFw/DNe8=;
	h=To:Subject:From:Date:From;
	b=HFNLJra7uQmHdqydT2MD433HUzhaNGPmasTxPPK2vWeswzeIBWpxmhWoyMobr141x
	 4SBbOv5k6KXArP4mucvbc1I6ti/chBljm2HaDKBzD47/ijzgz6cUZP3bnAg9/lyESP
	 KAY+iTt0ZV1r9UpHGu0ZAbzGQHchEGAISC2wBmH7LIXdIg35kA7U6JOwABCSdTZ/Xf
	 bv7w4bUs6e8Fq8685xPNsrhe5QrraJM1+q2sxMZEsYAe+VPGU6TmPTiCghqurztblS
	 z1gcwh4AFi7e7sZ9j+a6GnofVleDCiLqFCKA/zQL+yr+d2ZbeQz41/Wuhg4j2RWaJ6
	 Soii0KQnoQrgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC69CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009221369.3717.4133758376946338744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7f7beffefea325040194696e39cc8b87e214fe71c5df7571fcb4cecfef73b8
Date: Fri, 29 May 2026 22:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780092213
