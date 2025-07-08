Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D912DA74C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751973594; cv=none; b=LWENmG8CHoYqqugGdSOeRpcUvG5mQ6/iGFRFSZvWywXMaMfUOT142eAGenAc2vyWAQAA8DNl5j91nkqrDNsAbOac8MQk+vUHWgdDSAda2ce0EC9CzEvJ9M3MatlAPCyOcmI0Yqop7q6ranb6NedhE33amyg6qSN1hxfKX8RAUFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751973594; c=relaxed/simple;
	bh=ZejuvdTx8S0nKOzqNNEhO2ibdCOnrU1G3Lp0FTNGU3A=;
	h=To:Subject:From:Message-Id:Date; b=pZLAJOwFlN5KgXmH+cbHt4YP7LfIaKJUiG8eNQy6aDKHdc2mhX3Jl99vV+eU3Gw/SvBgo4nl37OU66nDSUFtDiuHES9SGmH2rHtFa+acZcrCF19ys8ylvWH76psSSxZ/8LCdGKrujlvqgVMvZDodGURz/n6UDpsL+e3RVJp0y/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeM+FXVZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeM+FXVZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7AFC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751973593;
	bh=ZejuvdTx8S0nKOzqNNEhO2ibdCOnrU1G3Lp0FTNGU3A=;
	h=To:Subject:From:Date:From;
	b=UeM+FXVZnAEswC1Acxa0H6Hu7XfQcFDD1S3mjyYcoyvT6v0nec8M2nhfJ9rdIwlX4
	 aEiV60LWMI8Mr1WOoINNnt6IXNhplfIlVvueBw3nsQvN1s8uM3xtMLC5E6WL5IP3gn
	 jh0M5fFYfKEzH8T5eDiNUnLFx43mXYGP2TLsJyL4ajHvYOXLnTdtTIXKNyRbo+R0W5
	 W8ehz+13bWEIqebXTyVEoru50Uk7FX2f+63LQRI3QtG/FCTnYE4KaS2y3blQGMJqKW
	 VRUdhwIDHeJ1ajJeeFG0PN7MW5dCCQ5uzZNgIp0N8RJzhQRnTQ8XpljYrcZtihIWDN
	 MjuJ7NKPvTLbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCCAC83F0F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197359357.8918.9975454209513635661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24570f2228c330e24268e9f890037c0c9ade6bf99cc20a5330a7750527f1d4c
Date: Tue, 08 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751973593
