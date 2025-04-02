Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A1C13957E
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743562195; cv=none; b=LuZuQBcK4xDYK1ajNDwWTZV36OE86queaqzWyiHU1XYNV1PMmtELP7ZK24wPUWFwnXPv4KW4qvXQ7gvBKm/0vRbm2JY9hb5GO6O4R/M2eYDbXAmrGLD8FgHn3ezXlVcJMMS7mcSg41I0/zU9jOYw2zZsGm7/HthdqvqlvPqcjF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743562195; c=relaxed/simple;
	bh=6dyNVirH1u7pEpPI6nDTuYfU8YaAF05c0VmJoSeqjNE=;
	h=To:Subject:From:Message-Id:Date; b=OfXr+eUdnvfnIzOk9rlMsAJfUFr9uXuPP6If87VuDjx3Km81JTpI4K1UAcjk3wJEyrGSgn7hOHgj5KjOp9lNEKX7T6lxVONStUiQvzb2zDkDorwL1SpJd4qjRQgOLJ9x9kTIob/oDLYkxDYEwHxuO07J/ksfWidhn+1oOmTAVBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDcyu94l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDcyu94l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50CAC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743562193;
	bh=6dyNVirH1u7pEpPI6nDTuYfU8YaAF05c0VmJoSeqjNE=;
	h=To:Subject:From:Date:From;
	b=kDcyu94lGb46tcWIj0yyLcbBcvMUY9RaMvP995oqz/mEHd8cLVnUGi/ldBSIZpWdr
	 rFm/9qxuXioJK7vbmfbaCwp+PpaemC8X7DXwSTlp6M0/KfyTc1uS91RBeZb7YF1UY3
	 ZIwc1vZ63EY8IqVTpOmoLyYD3+3sFqpIARkHbjAi1PulRCB10ezyZXFLUsu91Tk437
	 zhDFqQ34LvFmUv2loH5rBlMdd/Jgbv0wdcBkpSKd1QcuHAxGV40gB5utJXg76kxP8f
	 M4BXL8Eb0Yoo+gGpvhxW3XxPudhWg05tMczsFaNQA8jaoC6cUFi1jwyQaXaqE9dS+x
	 hHF9iSn0h52Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9E5C36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174356219364.10810.1388771651486105213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980a3ea72515630e0b7ed79b2c0342af4f7c943ae3165ef72fc148f98c121f43
Date: Wed, 02 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743562193
