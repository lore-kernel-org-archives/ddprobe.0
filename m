Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581CB221FB6
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786261834; cv=none; b=VCxov/WAVgiNJ9JgC7teE8PIa9tZeBnCW5Vyo1x3Ae5NXVF4XOZo/0p5QNE0gEHQ6qaj7L7PjzdkXQMRbOnGEW+VsiO6WjQ21ZkOa82F/zBHpr/r7FNZmcM/78vyiOfBGvZN5lglduUgGg03gTEk04BuWbrodgO+RWtZftQBYq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786261834; c=relaxed/simple;
	bh=17ReJ5gyBE7VMXt/FK7spNDGh1fThr9J5uuISJewD/A=;
	h=To:Subject:From:Message-Id:Date; b=oTynHFnBHtB34d4u70WKTsSE/LT+hVEfc5dy73GMFGSdAFl22bRIRDLOZntrNkB1qJkL7wwDJnYsY13Y7WGyT4uk+wjZ8XWgPNRmlWl9M4kTIrTv1+hoQau/Cjmjd5qJYApNiEt28q3N0LWvs7BCyqYvr07NMAPLeR5Ne68uvMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEMhcE7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEMhcE7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CB1C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786261833;
	bh=17ReJ5gyBE7VMXt/FK7spNDGh1fThr9J5uuISJewD/A=;
	h=To:Subject:From:Date:From;
	b=WEMhcE7/q/Mwj0LY8cMKnB1dNz6sStyHjdF8j1NJhlgjYkMMApkyDMITavPi+06hY
	 zec343ekDdVvAqqGBFyMi0fsCkp/db4E8cEJwocXa49otDQ9w/AcDNZZoyyaMuqma8
	 vQ22NxWTNdkf8YHAs4mcF3UBt5UPgDBEZyRJtPSchu4T4tTqqeWMtz00SRkmAXkAcn
	 cbxOn/7pzOAOf7T/o1cirji+2pu4rqLeSEYnIDoi/TKZTWNFAGCDN3iAbPMx/cOVXU
	 6Ti04ZZrQVeaJFMMHpbM2Qn7pLoMH4NemDP95tcpDk/D04ARnP4KkpOVIUaIi4K9dB
	 LfIpT4Hh52OhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB20C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626183369.27987.8957606984246787841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef173a830218017c3f5c740655ecb95769802b2309a31e0967b396a8ddda8d95
Date: Sun, 09 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786261833
