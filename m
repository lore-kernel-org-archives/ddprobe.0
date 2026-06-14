Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73CA928488F
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781412394; cv=none; b=pk6D4RNvA7RTpzvYFHhpWFyZwJIuRsXOjhPxXmLGRMbb3xVHzhVate1XrHGAYxTseY8FfHPtEx/Yxn2RDjnCYLM1qhx2ch4V5ZORMQrz/BC9C7GDDmDhAjHmrhqSDRLxvQDrn/eCsUrVh74MxIrFqQ1zLet1BUeMpiHPVOGV6UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781412394; c=relaxed/simple;
	bh=W8fzIh5ZMaAwm+cyyVVuJh3ht1Rggnsu/Jq6bJm7SsA=;
	h=To:Subject:From:Message-Id:Date; b=cTOK4TIT84JvNDprIBt2IR/4n+TaxP0XV45ndi2v4hDnaLywq2HdFUGQftrSKA7VwT/otCh6PAIgtcmuv1veDf7ey2dP4MSGzZgbjstygD3Lyayb/r58kpKe6F6mN+pLMBAcY6Qlqu4tFpr6m4d5rgLZ9dgIQhfzMXrogBD9T1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMHLBU8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMHLBU8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F16C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781412393;
	bh=W8fzIh5ZMaAwm+cyyVVuJh3ht1Rggnsu/Jq6bJm7SsA=;
	h=To:Subject:From:Date:From;
	b=FMHLBU8Ey1Z/RL+6jLCTi534BSUNPpopl0efhBgvFA15FfyhzN0xBa1KB6vaj4KAU
	 XWnMUv1oVmcwrUt3RI/g61D6qNWkIrRS9hjWfjGUCNTxSC8Ig+mti+xyovYZizWaNc
	 ZxIdx7Ia404C7byF+53K68inpUGRTXz3pvpW/njsVRi/BxkPQNgjphCRFewhdOjpd8
	 iGVac9MxrqMqiXj969KLTfUJSLaB+qBkpvXIiYR6aMAxCzS4pWKszZyunYrMinGhz6
	 9kZq4TWQTk485DapZ60OGt5MDWu7smYVUmVZqUJjbKhmvrRBZZvBi4Pn5if1Xj+KeN
	 YZft2yi2nNVsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1703CD98C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 04:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141239369.4263.9071374739318181522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88a4c70a5c887a08fffa3c05d8e157e34a6d3c78641a7d501badff5e228606b
Date: Sun, 14 Jun 2026 04:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781412393
