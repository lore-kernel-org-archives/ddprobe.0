Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426C2332EA7
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778190454; cv=none; b=naJ78V0DN+QaM/TauK/2gv0dXOHOktSScNI84keJdCl1iHrUb7lt4SlsuJ4E2yc8s/y+th2hqWQob16MTjc7yb135YLDtPkWVaozZRAAS+esjlA2ippYAWJ9SBD5ndZqTwGI0C8Ogbvr2+9hQPGELXEkjjanL5sieeOCVScD5qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778190454; c=relaxed/simple;
	bh=1ayXjRibQ1PkMrM2NsibMbgJH6+2zpt5z0EOkqg3pAg=;
	h=To:Subject:From:Message-Id:Date; b=D8vpEY+GiFiWcqe3Y1LNSrnXiS8SVliO7o/Uqy/VRmapSS7Hj4UHJDuHDtjMIKVpXjaoMMpsAYicFBCXfMvh78r3Yvh3M1OhG1tZ/IUtjY0PbGCOGOWOmtqOvCt40ZXLRmEQ3gw1ytgeMpwW4lCRMeoo+/p1TcQu4khe8hWM4bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmRv638N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmRv638N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5944C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778190453;
	bh=1ayXjRibQ1PkMrM2NsibMbgJH6+2zpt5z0EOkqg3pAg=;
	h=To:Subject:From:Date:From;
	b=UmRv638ND+ize48wbPs+nZI27La/pGZNUOnTAb5b6aOK/0YpuxCGZSSkZe08DGBkw
	 5m/8HwDolAu2tfW+lUrvFGZBvdJOnqJoWXmWkC4cI69rcy6AV7ANgezyE68DQCNl7n
	 p8R6Tc6TfyN7xMpl/RdvDAXF+sS3MfAOJscW6Ti3SEK+3OlL+LIvVK/UTUq505BTTL
	 UAv3O/guygx+/+qt19yagP2aJ426GedGUUhQaktiBOG+HRc/mvMrwzKJLyt9f8Fi8K
	 fo83d4PWk5pZXZmTtwb0eppbCWEJ/SFbQlijL8q1J9Jf7+0gmczd41hFAfh9xU3lNc
	 YFjSohuxazZ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B148BCD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819045369.11639.1157230877773694616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac8a3b9bac39748dcc90e1753867323180b5f8a9132b66f154af898affd196c
Date: Thu, 07 May 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778190453
