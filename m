Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2753338DCF
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725161154; cv=none; b=j4R45yBq2uZLPkP5kBHFVpvgReBAK+1dnntx8akB9KQk01ncf074t7EmJugfwvS0FoK4UYcH3DQ2K9ZdXmjuhgc8tnKu61jtZeTKmJ1535gy0fzx0rJgVBnBbxHl2EAEhQWmo1U7JUHU+SVxfY6uKcdsHrohCd31572o7oY/Mfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725161154; c=relaxed/simple;
	bh=RfyWgoYnQgJ1rywmSn9IO8Gedqpg6Y3V+q9soMuBQ4E=;
	h=To:Subject:From:Message-Id:Date; b=PfeApF/OfkFFETMevJ4qOKu8reHyU58U4moGSXdSe+GLnLXBQ/UDP1ChhpHQ/pJfDGB7T7ZITMZpRPgBySv4v9qKK382zcAPzK9pwGCT8wHP0I1Xo9AqWoJQApyPV8p5qtLaAMMC2kMIyCrlzR3mKW0XXA8udvbqlMAIXmGzZK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndrHAN95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndrHAN95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC76FC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725161153;
	bh=RfyWgoYnQgJ1rywmSn9IO8Gedqpg6Y3V+q9soMuBQ4E=;
	h=To:Subject:From:Date:From;
	b=ndrHAN95/UPFpgEuAwA809if2Ky7DGHqUvJDfvGktyzhoOo+j3K+WE7sNgoDx2bEY
	 r/duMNaP3XhciSDgBf0xik8Zx048XH26TrhHyDe1Q2LTWRL7iepTr88FHAEcSFyBln
	 Wc683GMxeFv+FnIL4m4JXu4PyWPlkG4QhZutfECTYkXuf1NaHLtvSkFYT95khJ2j5S
	 pK7uaciD5jJModXLs/Yr1V4PUlQkTc/qxhRDF9jgYN/VfVlsfXyO3hud/TrPlW0/8u
	 YI/YgcwxuvYHSyW1Zl+84Fv0gCVkDN/grSOteM1Rss4kudc5m8mm94SaedrSoz0ufV
	 ZMtr7gc7ufKuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969DCCD3429
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172516115359.5945.8567397720506038096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 678548c9851cf2d43a0d93fe8841987250a20e1e9aa913bb9da757f5926b53f4
Date: Sun, 01 Sep 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725161153
