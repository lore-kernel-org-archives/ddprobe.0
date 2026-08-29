Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9CB8635D
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787968834; cv=none; b=paocFzPy5CEj2GPV96rCAP0TfbKjSxw+Ht+4HaSVn04bpE+jp5Sx9HjbjbGhN9lYECuIpKjFix7ssrBxF8ZKSXGslnrv4Hec43VgLglAzwh22WDNpgmBa8V+w5AgQXTBasLLjb48XliIJqj2KuYrWsmxHsOPBprTGbsEA2vv4kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787968834; c=relaxed/simple;
	bh=aheps0b+7aVCNBNjWeVPAAVmnSMn4yRy8EehqKjaQyo=;
	h=To:Subject:From:Message-Id:Date; b=JGywnjDFh5N/a3eiJP+KwlpPiyNeXdy56PCZvnR5c292ixm81vhHEbguKtszgXxaPuoOhlW1PhxeYQniOXaibhAuWwsmAIlyJchfMpphCJRh4hsa9sAQrrbuS8WCb3CnmcAIVB/IE8paNUrfWCkJpSEhjdWG1q0HvkYwE3nYQuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRypW/Y9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRypW/Y9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF404C19425
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787968833;
	bh=aheps0b+7aVCNBNjWeVPAAVmnSMn4yRy8EehqKjaQyo=;
	h=To:Subject:From:Date:From;
	b=gRypW/Y9Vi9LE0r22W5z7MmDLiUmQ16w3Lcif0ruAI8MbyM/PhhZXWzPZkhPRVGOA
	 SBJaS00Dz9WCV4tIc0bCBY2nFMsbbW1zTDQXlzIr9xGEKGBneeIHwHzbLcD7Tjj+jR
	 QePS29JMEaLog51ubdRba+W2ELXwT4Xt+1xm28pco2DH/FyaNkj9eRW6UXcfgFSPdy
	 m55xpTD1XxcpMUQC0J+WQQhJDKIMnNOSWsjV4oUSifXRi/ySLzoPlt2wmNBH3zCc5H
	 TL17PoanEIkkyISg2yrJkoDfsKOssOVwuuX6M+WKjo5vQKuqKGs2LcnnXaBu2ebSv9
	 9c480aV/lQ3bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7C9C61DD3
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796883369.28170.9893213478828796218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643030e3f94b49096e730fdb49fe888e32f97a1973ed7f810ad2a3b1727a7652
Date: Sat, 29 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787968833
