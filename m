Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8C71448EA
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 21:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726782955; cv=none; b=PNiCd0+AK4JKh6O8y1F0XK5JzjH1SbwAIi2M3XUaALeV6ngpAfXLMjbg0FNVTQIbPuT4Tqd3BmBsrX+cpeleKWwDOKId7zAklQM9qnkU4CNdHVl/gpNMlNO73meQOKIRLwn627ohjKO5vdrt369pzfMDriOXAKwojgNZ3Y6fj0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726782955; c=relaxed/simple;
	bh=MJKqfEHnGf/BRc+iMVBJqzgxNnHug52MqhbSm4chEQY=;
	h=To:Subject:From:Message-Id:Date; b=Twn8KgIV4mYepT5d9ful4k3qlrM1ro1+yyYLzV3HeVrCd83dZQPkDDpSf/hoJCNswzCmwX885VVxi4/x8uTCu+s01/yr06zkRZLxgkH2LdvDDmm9hm2i+AU8DN4FlCsrjgWdHXG2CA18GydTTh2oR1JwUEuuxtEa/5nlybzKWvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=If3ao1Pr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="If3ao1Pr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7022C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726782954;
	bh=MJKqfEHnGf/BRc+iMVBJqzgxNnHug52MqhbSm4chEQY=;
	h=To:Subject:From:Date:From;
	b=If3ao1PrNz/Rf16FqcrIjND3Pms4PIPibtGN6DCg/eFBzz0t3V99+cvZy+B71hxZ/
	 Sje51fKutWE1uAdUoS90vnzwssCk4MfbKIgCfVW/JWi+VRD2oTH9zywXBMY9r7otnc
	 eBYJq2JR0SYAP7GxJAVR1VwAHqGntTBQKrRwCyuvxBIpLKz8KolyF9MjwBzPdpIv3h
	 HhrQOmwhRCbPKNH2mJ0sZM6sqa2bvru/zcJ95ZqskE3OiR1j4sm0GVKodU3FDPYMiW
	 7ZurG1z/uASHObJ+BiEHDBwcuOqTh7RFRnATjMKyjZEaXpffK01VGwARe5c0d0MRuy
	 CdwQH/4HKQZBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B691FCF3972
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172678295371.4756.1701619118050358668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3cc96a121a3a864ccfbb314c8c76b3788c57bb45ddef023c587d715273a9387
Date: Thu, 19 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726782953
