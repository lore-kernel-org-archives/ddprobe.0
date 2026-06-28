Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BE663CB
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782661114; cv=none; b=rhCowGQYPp7Iq3ruEFBkq3IwBf043IOkNRYxnututT5ncXeVzlOlgirHuB5r3Zb3eIw88KwZ21Vm0sW7ntt6quCzQ1H2BPR9bZWtut/a3toGTJUdzAuc7bqTqbJLAEBUJ2jsR51E8SOJRhIzHug6n3VKdgc1XqxevYNKmwm4xHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782661114; c=relaxed/simple;
	bh=F2Q5XSvg7aukWrHzIIvH2viF+7M0XHADphlsy06Sm/I=;
	h=To:Subject:From:Message-Id:Date; b=ETACIVBbiXFr8bCdB+kuvws3W/nv2vt8go70m89Yal6nw7QcgyDMIC+BCly0LSYJfVI0Wt+nwtuDF7P2ePNo/93R/8sgZCdXI/R6HBfiHnLdpPfuq0pyVXnq8c0RyobGJ9cu2P+fRwJmv7cscDlMqHfEP95cuvGi20/Sbc5UuZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cS/AHGFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cS/AHGFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D887FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782661113;
	bh=F2Q5XSvg7aukWrHzIIvH2viF+7M0XHADphlsy06Sm/I=;
	h=To:Subject:From:Date:From;
	b=cS/AHGFBghoFD9OFOGCOix7JKKTuxmBQqS/XHnM1O6oo9sxQ3k9FnMpuCAaOTBtBt
	 BIah0TlAaGFWu0XlqCxAOhnBDgZj6fy6Dc5q1/V7D8IdfA2EhmGi68bopCsXX2/pGd
	 aTc09u0l0T7pTRFyMB2Zzna72PxR0LqzkiY2hI0HL8JCOeoX60tdQBaBpbPuYr3ir2
	 YTnBfkY2vpDBi+n7pz9P098X1JZEiNuy+wlMxuWkCC0Ewf1ApZtYwiW07kmAABA1DL
	 RNHxafbyg7o4QtvjvUgb2UiAWmp2qCfn8plqh3Hgrak0ysvJyBl9cWHPOVFCli8OH8
	 3cLTmy5yueAeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DCEC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266111369.3825.1825484909127315843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39568808942e79ce23d4c25657c70b12c31af117cbadcabd45c843891b24dbee
Date: Sun, 28 Jun 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782661113
