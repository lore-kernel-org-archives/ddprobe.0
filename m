Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CA233EA
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743302994; cv=none; b=DgA1x6gWBuQpcRLLJzduNVa5Ciwjxw8622J53vcrhAbc/9JNiEfM29aDAj7SoE45KUqWAlSSaJL3CeHTn7wzJjo6lqAsweNIT7dvPXQo9KLRoJyByOJNOTBSbfaicGo3EDR8ElOjH5NNYEVmaVl8vXYWnbUElnKbLGMDOZabSZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743302994; c=relaxed/simple;
	bh=IEB3irYOYsQAnRARNPyhPsiUJbhuo4HbZefD5/a59NQ=;
	h=To:Subject:From:Message-Id:Date; b=qs6oqBV4q3e/uAMBcDuRInKmoj2HGxEfxRjIVsf6HZM/pPBtGInyfqeD3GukSTzQQODDMBVDZZKmDenS3cm0d5lpHIZmomYgkMqfHCCbHOpleHKtLejjIXAuQMWN/i8KNHbxtKDM2UkNnnDTC//IPgYSEkSrisdlbnPFxE4lhyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvlB13JI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvlB13JI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6618C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743302993;
	bh=IEB3irYOYsQAnRARNPyhPsiUJbhuo4HbZefD5/a59NQ=;
	h=To:Subject:From:Date:From;
	b=CvlB13JIZFjHIj7POAAzLoPbRm/FKS7+u4ulcVXDbdNAsqibf8XaedV/uk1ArPHvL
	 BZjPvW1sAk3qmP/i+P76bM/GJABkDoK/dZ2YB/xbphUZDKtUzRDFWY7tKIHIxOkZCN
	 YccAQt4QnpX3U0EzRxMOv5iTVQvdGbpmnZS2vShmoQo9C9W6LZZe/JkOUbx+mIty+K
	 txDWizPYpdeipsmewv7v3g6rsh1Uz88IU4+kWTiGXdNGrshoMCjTB7RlENHeDRGapW
	 ugeFk1bycwVmc/+vaw2cmttHG6HxUHa1MChdvofVsDgZq2mHDjaDZOrWpZzmq1vBTT
	 dBhgdRGbPRjcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0CCC36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174330299362.16757.16695525338701728218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9cd560e0809ad3af8903f4d9104568534cea47b4a64adc712e9e7b0e7a2028c
Date: Sun, 30 Mar 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743302993
