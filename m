Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F45E225A8
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727586954; cv=none; b=V4Ewbh72fiWifcOc1osXdc3aN4NRWhmrPfxNvKO8c6+Rs2oxCxVCPFVQgj3Kl+3pvjHg41bh3D75CkBAHa9yJGw4Dw+u/vsLRnOisunkrJAnymPrpYvs9Rsbznt+b7cbnoeoZVpqqR+BrghmLvjk9hKWA3N70FI+2wkl1gRzQig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727586954; c=relaxed/simple;
	bh=VboE8C2MT+uAfopq4Ox7VNHKMe4C4Q+toaw4fouPtSY=;
	h=To:Subject:From:Message-Id:Date; b=uAD+8ysDkzyJtM75giYZY41Gvn0MZ5O/9uaXcI/br6grjj2nV6I7X2hWDNRt3mhPWC3nfpbgnkb0Tc7l+lEt0fAQiLt7iyGJAbugeRQPXZ0wg5rvWBXXn+8FJlNQud5nKKzHAOxZcpKAB7kMu9mLQeceOBRzvY/l2mmUzNl7tMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oROqhybL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oROqhybL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA22C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727586953;
	bh=VboE8C2MT+uAfopq4Ox7VNHKMe4C4Q+toaw4fouPtSY=;
	h=To:Subject:From:Date:From;
	b=oROqhybL2E3KMPRcXIubDb6YR2cEjsARAlENQYxdgSo7+f7swkryGtQ8sER8hOv7C
	 tzkgHQY3qjOkIhK84NMKYTo8ewAWo/jqJvnJClLHiBR49fjnQyo+en7LN6i6Vl1hCM
	 3UpNyntyEAZZbISSVm2+0abRQGwYLn7jJl5un9SZU68pDqEqzJkmiZZjvtw6Tht/SJ
	 eEyOs+J3/bxLnwbyQFGpJZv2ssy8pyz/cazXJigU8qXRnB3wT2ZOoSQuJUGFZRZ8+K
	 N6avVrKMpPhKuWoXUsMybLiwr45Du3cxMdPXGGqz0q6aDGouGL6xbC2Im2gpZPayai
	 8acFQI6fsLj8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978A8CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172758695359.11137.96879926875504261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecaa70f3aa73c8c22ba57b4e74091ca0e94072c5724311d369519181c45c9dfd
Date: Sun, 29 Sep 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727586953
