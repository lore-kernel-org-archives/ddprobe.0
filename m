Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303051C27
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749097794; cv=none; b=JhMDVyz204PE9RLgnqtdBDTfb8Ee6Hq61Tn44fryQCLSyr5g2aI3OmFy+hAkCXctCC6IZYpN1Af2ELpoA5LZxWndXdSbpUxBReFoeOZ73jqC9QMcQbii5APil+gm/V/nJpmMyV/RDUiCz4jLyAxN646MiCSFj2Jmwlq0MsG8ovA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749097794; c=relaxed/simple;
	bh=TLLhATAlNI7vbhERgNjHh05Y36410cvV1PaIilkw4ms=;
	h=To:Subject:From:Message-Id:Date; b=gqsfngauzrtnmXHboCdRJ7c8w+6XEqjqEiOTJFOcU6cDmoU7vCcgnpwc4Q/opI5nffrz4IT3qxLqg1x2K3SyIOPm/+GyBCLo0wDUiqZyyEJHHpu5RmJ1MqjRgn5gb95dYgyHXSxKc5eCzxp/+APq5MjNAodnHlfUkGSuZD/LFoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsI6Amzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsI6Amzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4468C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749097793;
	bh=TLLhATAlNI7vbhERgNjHh05Y36410cvV1PaIilkw4ms=;
	h=To:Subject:From:Date:From;
	b=YsI6AmzhSa4AO2gYHD/RfTAd5rlXpyPVVoqzWHzpAU2mjcHjOozwb4AZl36IM39r+
	 O2nDYMBWJDOgh4TMDGr88CUxK0j4GXURh+0WdEG1rUye3FHT6FP7XVyw4D2QuK+rTj
	 g7jIQ+d8E+lqFCKY3zfU8F4hDmAzOrVRV2ttq9XBpkhndA3JY228Tnw76cCJjLecH6
	 9mE86UXo/Q6PaAxJDQF8Z40z0nA2PaANam+oDqT/jdZxvwVHgDPQr7NOWbbT4M+HZY
	 i6KAR113ytGxH5U9DpZACrfhFxTH3a50Gy/pzFqUxH1HXNIxayo+C0pXqGm150IWQv
	 +vbUYk9QNI2+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE31C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909779358.6488.8034491568242512397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece6357c527682da059a995017b6304c3446584cd69d708faa2acfd8ad77104c
Date: Thu, 05 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749097793
