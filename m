Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3277614A8B
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760324994; cv=none; b=JBG+wySyn4BKJuYwyqyD/jYtdSwQ9hXx2pV0ILxQgSevt97tzo61v/n7vAQSzOgMHkSMMZfExFrvHDI4HYq/UHv/Ls1LJew2Z6Z6lh1/h05Pkzi1m1BbrZd+nW9CE/lj7stZN2PXZyaK3BnorcUVmGKcJ+oLzvG73dpa33VxyQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760324994; c=relaxed/simple;
	bh=IDz5Yb6w9jRR9r2WJBvmhNrFTUdDeJ7UX+4q9/t0TKY=;
	h=To:Subject:From:Message-Id:Date; b=SOq2OQ0+8swFZFaTQCSpAf7WeGma4DdWhBx6QYUif5ZND9OSbnP+uKlrhnpC52MYPyjZFoA2BIC6qUAjrA2clBUoT0PeIB1OpOEZme3teA4mX2uMkSycefBLgHXGKDVI/SyF+I1hACOOyvsHSVvnvQICt8Jw2cUaw+zxN6Gndmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BK1eW4w+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BK1eW4w+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D08C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760324993;
	bh=IDz5Yb6w9jRR9r2WJBvmhNrFTUdDeJ7UX+4q9/t0TKY=;
	h=To:Subject:From:Date:From;
	b=BK1eW4w+1gKGyNaD79rNhPsHTjdQSFWA3PpTQLSeGwm4CDr3jhBks8e9cLq+NpK1o
	 +6tbuD5D0HpO+CYvpHu2MZ+NnWhlJ49YcI+D9rlqmRcJrkYrYQRZZ+xDUj9r4RA0uY
	 rdTX4PTSd1f5hVnerwAJ2H5msfFxFQscX6qn6F25CBiJRFCtraORPKzb64qw4NQrKb
	 eB3gz4oq3B2E5GsDG4docBGQByd2H+6ckxJtnAlnXJZWMBCWZbWIvDq7QTFwlWttZ2
	 ldJD2mvjMxShM0Ozh814OaNnUHvFR0jAZz0XmkY2WZNr19T2Cui96qPbALLvq8VORY
	 G8aHWFz6DjozA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94505CCD184
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032499358.29489.17587676829715355810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f2707bf503ad0999a0042fa1b9c282e9c459d7652eeedfa3e531b232e681ac
Date: Mon, 13 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760324993
