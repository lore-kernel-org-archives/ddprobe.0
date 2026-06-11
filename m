Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46823E56A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781136394; cv=none; b=V3YhuBoz7jrRj1KQT5yYX6RE5bTMDnwOEB344+RhiaODvcSEGLlDF8J9Q0aLXKM1rW5PCkNNVR8iFsjjrNRURuYNLmR9e8ZSTcEjOIWcKkW1JLM2p5IVXQ8wWXm6aOzhIogEbgGPOCoWG0+B4j1UV2vL8rVB3DZa7d3QFvhzM+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781136394; c=relaxed/simple;
	bh=W7SVS/ENQWzPUveCDiVtMK/ulBo3eLP5V8fwi5gNPRA=;
	h=To:Subject:From:Message-Id:Date; b=ofaTkvOBPBSPVcyqlmqX+bOA7noNtNex/0Gp/dDCm3ENMLYLnT4IpQLz205SP/+VuqqR6vV7CLa1rwSPIy2Wr32/JrWWlPMarMA2cBl75/k4BFQRAGUFiioWmyhYqvCL7vHTEo+JBxIxittW/MozPFPhK6DYRoV2DUrtif7Ehjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdM/9+rA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdM/9+rA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D72C19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781136393;
	bh=W7SVS/ENQWzPUveCDiVtMK/ulBo3eLP5V8fwi5gNPRA=;
	h=To:Subject:From:Date:From;
	b=KdM/9+rAmenXvMxRDtW48le6yu2dBPoSPJR7ofksmgMs0MMxbcQX836jgqK5T37gy
	 tY/byqoUIjaEuDkhu4JGCUtxCUNLWNnBrA98RrzvrLp0yvdi1shoWhcoWJ9LDJAcg+
	 /4E4izCiLA13ic9yyC5H62n6qCF2F3lbzAtKUsXpYcsAK6KIOQcFIr2XRN3oTkcolN
	 hjQr09EUR2QZi4zZS6FjrVDCknY3vcyEcFcQA+gU0sOp2lUp2GejPfBXyELdAssfei
	 805O0F9i3ay0THFLNstviPyZ7H2q1Pk+EhCgjXeP8wCFsx09b19mGEUQ6oTq86ivjh
	 Nn9le1P8pi7bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD92CD98C5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113639367.18724.10855005036465070187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16cb1d968fb6c9b7ee5596f4169d29989b8d7eeae1a609a33d514b7693f6ad02
Date: Thu, 11 Jun 2026 00:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781136393
