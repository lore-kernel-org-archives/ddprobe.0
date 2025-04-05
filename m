Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4330138DD8
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743835194; cv=none; b=iL8MARd5L0Uy7XzZtveOXKB9DChujVpgEKit2DYs1dTCwG0f9j0lUIQ23ohAGLPecn6rUkBUtogKF51lj+MhTevrCJyEGod8Kj7hbuPEDd+aiBkqplZv6Yx2cZ3rhM8o3sC5RP3yiH4RAoc0xGYvK3G5OYNLy5srdN3rV8I/QsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743835194; c=relaxed/simple;
	bh=MltGJkv6KFig7pigSWDZ+IBCJ2gakN7Jhohxe+Q8Z9A=;
	h=To:Subject:From:Message-Id:Date; b=Ccx9zaP9u1X+JQY6qgUWf70SDuz9sTUAsqDl/3uUApnACOcX74ZWP7+3F8RBpaSvP36XjjYTa3alMD6vTH/HKvf+rz/tdR867JsUx7RcNURJcHQg9CLeMK4U8EsHHKIVuVkXd4vH7xu3C0A6UC+woVFioGYBGCD4RB0Kh8xkqEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rc54ILb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rc54ILb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDFBC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743835193;
	bh=MltGJkv6KFig7pigSWDZ+IBCJ2gakN7Jhohxe+Q8Z9A=;
	h=To:Subject:From:Date:From;
	b=rc54ILb6jyGN/CKR5a+D4tnCPYf7SWG9fobpC10LQaa4GZRszagKav95AKyQRpWbE
	 5Rqse0YzKz4bPMInlm2I2wM8dm+fCM1UsRid4il8yI+mgmZtIEbIoq7YiPK7SBFFDi
	 cC1+Xe8EvYR2R1x+eQWBAtzuiyltPoFkC9sDkt+/WlCtjyjG67BpeRtyd8KZ78j/hQ
	 nh5bOEeKW9ZV8HLcfk7aZoafUvTyGYYemaBhOn/+5gkXj1SyU0/e6c/e1YlFmUHGLB
	 nGUyWMRHPc4HUyncuN+usTyhaMwwAsMmrwL3u3kCwWut6irJvjEAXzYF01HIPPLiHf
	 E57/lWaX0fpwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DF0C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383519357.31613.7175982844976928585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a40294b30a0f3d29b9fa0e17a46523ebfa6c7d5e5289b8d223f3642b86ee63f
Date: Sat, 05 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743835193
