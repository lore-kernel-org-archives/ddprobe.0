Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFEB23ED6A
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779592954; cv=none; b=UCAW/WhcWJhffhrvFzR9u03T+a8slnILxCHxG2p/7pmOsZLYcwfvSJ32+kNbd2oW2+925QtI60qnkO/3P5iKdCO8Z4WOph7C9sCrc8qNSapADsmfRJkMGyA9ECqYCTks+3V3BISO4QSJY9YTmmdUUxFZznfY6QNMzU9AbTOWhEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779592954; c=relaxed/simple;
	bh=4hC3UVGFYB7OXer6kW87dMaNItrm2cXSSx7UktDJZxg=;
	h=To:Subject:From:Message-Id:Date; b=oz+BpRUprahRm0BHsEZzMn18MDiqHQM/ab5Ozp6/68Za/Vu6WXCrr5zY5NwIOCGsvVsrqzi64sEAc5Fisc1N3fKz3YL+nn4r4lre+yqPu7NKCR4TmP2KDUOYrtPOSjzkaa2nW3AT7WeYAkJBteWZ3KuNOb+POnRzESEgrRv0mBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E54LFQO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E54LFQO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6277C2BCC4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779592953;
	bh=4hC3UVGFYB7OXer6kW87dMaNItrm2cXSSx7UktDJZxg=;
	h=To:Subject:From:Date:From;
	b=E54LFQO3dt9sBAQ2jmcJC/DhwGWH4vT2PrjHh4szEImIS8uDUNpzbk+f1UGLXsqqD
	 1Cla/ASkaftZs1aJZvxO4zq8AfxyS8dCcLzjto7UzVroE2hvVSz0i2zH+y83BZqPMI
	 +XhG1d1tazwIH5SvypOuQMm+AK+D27O9456eoXMqCNp8EOLcZxH0+iAUsPswZAlhDr
	 nOww2UidiMmnZRKMEvgw4t9or4y58NyD7LuTM0ZyA0fxS3tPTPZ41GL8MniUTb78ga
	 pOA0MuL8CNeS5JrRMrvV9ls2hL4wObH+baoXd63ZnRd1QHXixNJpcHmLwhONBudVrw
	 Fnb8FTlzQZW9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD907CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959295368.17552.9458878209627602329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c95a8e9e9bb6f4743d4d624ac03c1e0d51337f8cdec2c46f54b34324b2f4ccd
Date: Sun, 24 May 2026 03:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779592953
