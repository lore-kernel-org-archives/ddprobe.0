Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583E5DDC5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783160314; cv=none; b=rRjGCsll+IHfPQ7KZFyvhjiPKdErcnUSr2X/ItR/HwKNyyGuyjH0iuc4ce8M+9l6u0LhgOABgqtAtHO2/mLM7EGWzSCw/ZHWj5iCrPTQubZyAUC4sdBVf0IWsJdegj4//5D6KyAtg+zWZRqFB3POsT6vkF4Cp7o1aT2e6R7CTAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783160314; c=relaxed/simple;
	bh=8kxjKhppLBIF/lbJu2xw5Pvb6UBB+ZOtsqZu9zb7GDI=;
	h=To:Subject:From:Message-Id:Date; b=WKVvc7hnJsbyxedJq8LdItrg41rc/IKTQuiVWD3AXZJ/rbeO8MLH7cqeAD9Xnu5KtUwEZC57/j0TXh6DvY08mYFlf4fjWjQS4B+HhPqUEHFyPsmjRsZ21OO4riiAhD6Ju/LeVErAtQbjEG3G4RbNQZ6K5+V4zB3TRkM2EvETXLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCXLomIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCXLomIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1BFC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783160313;
	bh=8kxjKhppLBIF/lbJu2xw5Pvb6UBB+ZOtsqZu9zb7GDI=;
	h=To:Subject:From:Date:From;
	b=LCXLomIFG+YnBlPkli9n0yGViIH31UqGjNujk2kI0YFcbO6ZFRlz5hIupR616EEEr
	 GuTWewmIA1rUvtKI0yYFDFqg3H2fmF50KYs8SAXzM/YkLyc0MqcVU0UoghwXSfwYH3
	 2p5o/QdOydRS9TMpGcPnpmCO5rKPzk/+aBC1RbYNuESD9vYzG9f3xSgCpPTP34iia2
	 aep4X8fXBbCt+MBZjsydSKcaC31s1yL9xgIJwQGakQXF0MK8lU10vi4E1X+LtVT7ZH
	 Ps8DHBF6l2Ke4wwCVbk6WwxA2oICS2LXsAG54lVIo3K5PgH8x32k2PcTnBlAFxNujT
	 m2rfPsv+T7Jiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE079C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316031368.15088.383111442401192548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c43a260fbefcb8b0ba268100b38000c221d19fd855568496b4390b9d128ad0
Date: Sat, 04 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783160313
