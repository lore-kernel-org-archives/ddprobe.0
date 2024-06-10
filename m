Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC3063C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718008643; cv=none; b=sHwIJqlOjZnVcPPIs4DPdk5ShuVSdn1mdctVN7UT2MBPu2Y618oRrLdAO20GoEicHB+CA9U2HyvV2N+bOq7vXBCw7xeGhl19EwthkpFRa53Q1RlLC7SOkW9od/T5xKjbvM27Be2bw/Wjo0EDWE/76EVI4YPCVhg07/lmT2Kv38w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718008643; c=relaxed/simple;
	bh=RRwVra3Bu7ziIvkM36WPHI2Bec3cnOX8dRxrIwG9PCM=;
	h=To:Subject:From:Message-Id:Date; b=QjftxF51qtoyeCKnpCw7Eu8ExYPLJPLEuHtI3iGIPXHRYyrvScrinfB4sCa15aiKkglLjIpxnrmSFGzDYCcIL0d1iv5rF6h7azQ0lCrAXEP6Rr8t8YuHlaSlsFkLaDwnm88p8+YMfAFnxovd5lLnUCwhaQmapEgpdAJOS29BmkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSYmVEMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSYmVEMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00AEC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718008642;
	bh=RRwVra3Bu7ziIvkM36WPHI2Bec3cnOX8dRxrIwG9PCM=;
	h=To:Subject:From:Date:From;
	b=bSYmVEMgTVs+FZR3XDNcj2LHAFTC953ZkQRmeC5X5qXWBu2sFgtjtqw7cD3ZGfKH1
	 7+G6C3XVIjCOQu9rO+NHxWGAIyPfOJZAwLCLdeoKgLpZvoBN4fUR5AFcVsSgBJcB6t
	 YFEOHykN00ZrPXvUP8AVaPUX8sJRNlx0ELpl9Tj0FiqXy20XHWUzPgL6TEWG4rRI1x
	 jgHd+fA80ymdnmmJDg6qcEfwdCN/yEs84FPqghJqFmxoJoGi8a/r1o4TD5fIDnCf+F
	 NzOv6CUzZCN7mV8eTVxz+p24N/xrrzuzyA/7FXp2eqDjri/Uain5yXNIloovCBOZVX
	 NdbVWS9XaxTfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37D3C27C5F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800864278.5026.13829839499821782742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11afaa63f5689bbcfe6565c662773ef7c2bfb0d81750ab9fa2fe196f093e06e9
Date: Mon, 10 Jun 2024 08:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718008642
