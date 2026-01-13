Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F9023D294
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768322034; cv=none; b=C8gFwuJNSz3Ku0WZwYdESvzyz/2gt9Aqm4TM4b+2paUMQyxMDE9LpxMUodAwhYhzFwIfD2Qmg7T9TZGaDKi/MSOdoIAzEQYIJETB3Dcf7/yU2OiEycTvSxG+OM5VMJNcU/oc6C8IeJuB2h9OPKoSPFgjGmJxCHZTpkJL+8P+G8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768322034; c=relaxed/simple;
	bh=rY5wSnWIvboFzAEbd7wVgJASrm+e65gnkPnDmWKoYTE=;
	h=To:Subject:From:Message-Id:Date; b=WXm9z1/YIj5+tD0YoXMoKElm4JtR+Vzt/gidWXzAOnd2vUYzLMOChIjEBNaKtune2nkMYd/Dc28zvrj/h/clEZk1LPCRkyvpgSTYlAFuw+aK994R6FhjPr3X7KxPkarI9b3j1L8CsWC0GPzZxKKq1s2Z4lC1zCiZ0N93ESoHQEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLF6uxij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLF6uxij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE48CC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768322033;
	bh=rY5wSnWIvboFzAEbd7wVgJASrm+e65gnkPnDmWKoYTE=;
	h=To:Subject:From:Date:From;
	b=SLF6uxijmbwFxTaN8P82XsVcufezsw36ppvHPIZcBs8QyANOhccJbu63txeeJr4Qs
	 1glDT034UzUxN9FW1Gw83rLsfoSP5JAFz7sXsy/98yRpSsHkq3xozq/hthEA9abJus
	 hcYp1fcoEnazi4bNQB5NYjarI1PfqEmIDhk8wyPMRdeaNO+N2bXbjnEvjTJTJIZF+6
	 klH/ZDmSFecNMEDxUM9SVYQB+U3KHE4wrMqPYPY+UTTybzeC67Vv9vVUQl2ifzp605
	 wlNsW7a320L7UXhycx/mAArZrBcIG9GX1/vzlIfMvtsrujwojs6QnaGcy0RQb6hYoE
	 ojvvsYt1JbrMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7B2D2F33E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832203363.20025.9717407695472270290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d16f26e7138c30d21d8297a3aa7a2c3efd7809ac7da1d6e541f54eae0743049
Date: Tue, 13 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768322033
