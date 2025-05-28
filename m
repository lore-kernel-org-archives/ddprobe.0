Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24351199939
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748455794; cv=none; b=EcnEOcY+eBb5QCE/ZWRtH8PAHO8UqaTexX8hkMCuFzrAvp5aEDy7uLgv3eDspsCXNCMPG3p/6XgEra9KaykjO01YrbFDS8YnkV41fXA38FujY1ULGofUEpChx6yaFwPOlOP3CMGNlf/DU7Nvk5KNuZmP2yBNW2q38jXUmiDndsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748455794; c=relaxed/simple;
	bh=Z2i2SOijBawR6uCB0+lJsEXSc/P66fHRZmn4z80zrho=;
	h=To:Subject:From:Message-Id:Date; b=LbzFYONNkDr4Ea77doSPt4BGIzu0080S/EsE3iAdCB9uP+dD+bIWgvs6HV7tZYlLooYVE3JOOSBoMr8rF5AUmlHM5vq0uHhJRzez/wc4mgz05dcXNLo8mhrmbSR7sFv0QwYGPzf0sWxjKEMInVMv7MTdevlzhdMsOf7iqPLlyBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkFpUboz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkFpUboz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F02CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748455793;
	bh=Z2i2SOijBawR6uCB0+lJsEXSc/P66fHRZmn4z80zrho=;
	h=To:Subject:From:Date:From;
	b=rkFpUbozOA4xnHNoCa8a/a6zumhVAAT2h5OQxgDVXs9V2+lexyxgWk3MbtIo3PptY
	 e4Xv1e4ohGcjGmxas77jxOFYFg38IwFW8W7KcX2b8flu339Xb4TapLBs1PFqoDqQ4N
	 a+8SspV6+EY/GcSyewzw+rHviO16oVyQ7nXzCFUoshnQBdy/kXf1Ig0f9ZrWwCDD6O
	 uywxwcD7gTdrgBfCN3us0xeUd0T9iELoQzfh5limcvHeNXVJBcLLtoy8oJQCt1r67x
	 045rgUSdY22Zzt50pyU6R8DYPMP43R17P3dIv5EvNCyMztteHHf9OPPWIzMv72SBeh
	 wdLGMwPmaPJGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F40CC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845579357.14558.11215638719467994883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37aea5c74ade97d512a8c9e07bbdd91c4e91cdf088fdd76521db7a161e49e693
Date: Wed, 28 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748455793
