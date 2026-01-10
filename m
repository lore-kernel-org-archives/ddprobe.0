Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197461D618A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768056834; cv=none; b=h2QhL2ENv28GueSaQZSju7ukzpPW+UBUa/rezaYUjGeZXKgMOojknO/zEV3IT7bafvo0pPmgkZCOhf4z0ege2clwlNWHU02JZ/xI0f9CUjKJYL0zs9b890Gc+OCPWZQ+ACSyN14M0f/UCjepZEoOsTq9j08k/C4L4KFDQRx24tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768056834; c=relaxed/simple;
	bh=pI5OpgnjWfNZuzTK+XnE7npqnmeu/4Ex65bczjl0EIw=;
	h=To:Subject:From:Message-Id:Date; b=W9KF0cP6v7McHDX+dy79zF3NKZiMgk+VlJVJuFsexDOu1X7YJKA1cUl7vvdb/V28WQImxErnCcurDeC+8ri8+9vmw3QH4lBIq+UdODB6fB4GHa9u5EsL/YSeGJNEvgPzlMSi1iixAhF2ifoDYvJDwzKELvJzke5Gbc66IfNtaMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cISfZ8IE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cISfZ8IE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5943C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768056833;
	bh=pI5OpgnjWfNZuzTK+XnE7npqnmeu/4Ex65bczjl0EIw=;
	h=To:Subject:From:Date:From;
	b=cISfZ8IE9DGMEhzUPXyWcA3BTeNg9ikFUG1/uzQS1F8nkPStMEZ5YZklpZWF5CyuP
	 cBMzmHsWybQG0JZIwuDJplY+gDd7Qzdjj3rSySP7CjqUCWpyANV4gwQr0YnbbWzURU
	 x4e7yh2G0hGDCmI9pLP7O9DxTHs5OK5On425RTJINcdDV6CvwAsrQD6Q61vfddR2af
	 4/Wu6+3HQv0ALngaFF76hjfw2FD7C5gT1lwj36K/zabRPfv48VmXIaU0w2hFc3/tL2
	 Jf0HI/eLcbzKY5awO2LCruYR8bc8j59/X456jVc5RvzB2W+HjmQhZyn6zQwp9G9Enn
	 e199Hx6ndxVrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91829D277E8
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805683357.1177.6190614202743868288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2971a4206deb9bdeffb08d9f079a6b6676313b05a548ec150bc340846faa41
Date: Sat, 10 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768056833
