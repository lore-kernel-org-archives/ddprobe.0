Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252D03164DF
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765409574; cv=none; b=nMYPbLTV5fQGVoOdfpPGYNq2w6N8Qq67nNQdPrsz03QAEbfzWhr1uiV1RnXbH9ACX4bD3TjuphtWNddDpTcQcnqOykYxFU2uPRwU0Eymlcax7+1ryeYJvSAMNm5B/GkpXf+BwaIRHn+roTUPZLOinLUmc/a5aOnCDwwz1gRT6zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765409574; c=relaxed/simple;
	bh=zosrLAnZgIaAFSkWzeVcQprloulDGkyocbkA4WDwqIY=;
	h=To:Subject:From:Message-Id:Date; b=GNufYdNifgip6LhYF6I0ovl+zSksiIY6Xf3I3BtrbzWu2JVGFpW+RMUoCIt4HwThjfLQmQQJD7A3kWvZ+5H1z5fzKzQzjc6kaPrfkKVCY0KLbOStU9R6qEDAvMdio79qCsN6YXrxhqimCuhmyP3D8/GNl3bWHUd7Hb7ctxuNfJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmGmmbok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmGmmbok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2550C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765409573;
	bh=zosrLAnZgIaAFSkWzeVcQprloulDGkyocbkA4WDwqIY=;
	h=To:Subject:From:Date:From;
	b=HmGmmbokf7yTTYogpjq1rC/8hnUzCT9mCOjMpe+RnOzMAwH9SeZQkJaA+FSfMcBwB
	 lXzUdD12Ye4UyOGhPg604ApO09rNTlbK/xjZ8raY0iI5MW9PKVnRkbnvrezBdatr8F
	 8tc3+NpYMdBy/HCbp/0N1U0uZR5KpkE8J7QjA00NG1FwtV80X1O7tDaxbTvmAc4RxV
	 RjyN7euE3eW8/u30fOKzOf9qnOboHRzmM2Khdw0LSnPRLynF8jr27mV2jnDDDnPxA4
	 egmB1G2ewEMB2YfIHqf9bECVKLV0HKRtPGrjLRq2puNzXD+D4GJlJj8tUCESQv6Osv
	 O1/oOf4Hy8giA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915B2D3C932
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540957358.2784.3835998089271133861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc9fcce709abb1e2634289e261458a1a9bea30e551d13ea92d3067510f94ec1
Date: Wed, 10 Dec 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765409573
