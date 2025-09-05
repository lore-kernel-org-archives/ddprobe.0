Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B78244685
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757109594; cv=none; b=rCoKMreJ8j1N9JeEaF1G1VcMkXnOrtBqk2QmqzY/ue0vpDGP3gZGXIQvHR+h7FCSRslSzjbMhfTyVVBm5/ooDB4nmxkgJA4QUco+MjsHj3+7/DaJdLtvFUK/8mjWTqynp/xebUHCM+N8iez6R7hQNrm/gVfd1ocoMGcrV/yIwmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757109594; c=relaxed/simple;
	bh=kBEInRPgXd/nAiE9W3yUs3NuPkoKHdzd/choPZ/k+as=;
	h=To:Subject:From:Message-Id:Date; b=t+Y/if1X3uUrrhy+2+2ylNE+eazuWzSrMg83fjTvonGBjFdgpdEDGLiEWbApWKVzVXjrSL2k2tmOneAoh6Dt7/YZnrlND4UL+TtTuSm2HFxm6xcS6f2eOksP219+RWecCDe2XWCLIfK7u81pE6DBwlsQJGBybPV2d4uiKVf0BkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZWI+fTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZWI+fTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AEBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757109593;
	bh=kBEInRPgXd/nAiE9W3yUs3NuPkoKHdzd/choPZ/k+as=;
	h=To:Subject:From:Date:From;
	b=fZWI+fTDRP7P+0vpe83ELyCM6pxrWrBpaY0Lk46kfkCGCM1S+Z6XuDSORgnv2iTOj
	 vBlYVrcfLNW/Nqe8C1rEV+RH4a87m5kOqx3TWXYNMsjxw6+957V+IEpMfUXF+jcUt2
	 nHvaDv/SBcFtB3NLpSOPw8Zsd4+K7fI/JahT8fZb3rMQDo0OGZ+yFnPgMwxCjByF2w
	 BC+vIEaNYfm69NPtXPrqcYTsCki29I+tYY0X0jFDPYJKqKfuCn10w0YNv15u6Q3YoD
	 wALvxqn9Cr0sIP1qMSuJpHpAml/3/wXrtC7MjQiLEyz4uc2RzmLOXqL4BWd2qrwtHp
	 +3aX3CbCL9icg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BDCA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710959357.16132.9268662542592681736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8501810101c961eed2696e312a15a745d2798095644302d9f4a0847d5f804d
Date: Fri, 05 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757109593
