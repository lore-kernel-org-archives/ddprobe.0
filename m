Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591E318C35B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 14:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721052263; cv=none; b=a5B9SCKG0vDXQiD6UF2MMBQfBHpILb1yVdmLsip3fBR7nsRlainNceM/5W3y5gl2gDnVQVhBnqOVbxPefYi+3IbcaVJvKpzXYWYs5TKKmFeGju/x9TMWIXZdYSilsHW+e9Gdzo1jq3fKWyFG9kVmih6WZKOGx6I0SqNcQeMZhxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721052263; c=relaxed/simple;
	bh=uXK0CzOIAgF0tcWH6V4LN6OvaMcrfkvZpn7QQmbvpLI=;
	h=To:Subject:From:Message-Id:Date; b=YZwAZtSsQPUfeT0eXjmiO+kBZDb5HDxBs3x6ERB+UiZxsMaUpRIpV3GbjXnU5KA0XZRaGFgBivJilXIqljAt4J9/hq6plPd1HqLc1fXte99rFPSF0mRWmCurqPy2Wp1KRjuADu86pnFyRRDThZCwhM8XLS1tK2v8KI3DKJkkIWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGiwc5ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGiwc5ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBADEC32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 14:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721052262;
	bh=uXK0CzOIAgF0tcWH6V4LN6OvaMcrfkvZpn7QQmbvpLI=;
	h=To:Subject:From:Date:From;
	b=AGiwc5ezI0K+dF0wINGV/yuZmbB7izEEtkIYLrnpAsmBNdkVYqeDFs5KDKp5ay33A
	 BhtmnxJyDCEcUDV8B4dOKQLyGLklZAgP4yElGWDgktHFrgY29TF6yX2Re3aqh3daVm
	 PXpXFP/lx9zx711XL40eB0gqIMm6qxtCUVpdgrvI8Hmbj66/oX5M9B+mA5XZK3agqy
	 QFA1h+tSN8h65AxjXak58QybpRk08p3RQq6Ln6XF/yPzcEiiiDc5JdoiGWekYW0AgS
	 JyaD+IODCMadj4JIEDQXCRBEis2qPUu84zFi5muLYKH6FkmEt2W8EwPsew1ShSeUxU
	 KQNDBiJ6kv10Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DB9C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 14:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172105226281.11948.12652757199525063827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324e75edc21bb46a4f29927bf63b4d12c26f2b4fbe016c90707651a067fe0adc
Date: Mon, 15 Jul 2024 14:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721052262
