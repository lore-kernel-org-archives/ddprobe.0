Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAB3274658
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785764434; cv=none; b=nygCHpZ3yCNeWlHA9gRHyv/U8sMFhqO9Qof2csnDNIklINOu30v3FxEo6UqqbFhM2JYaaR1ImxfNq45HwPSx4NCDoSG0NORcIAnLlcIJxgabV7FU2+Pzn3DVbTKGUhGY1co8KgXQpn6HOfvhNHEqemBPOq74Mjft4WFnS0t55cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785764434; c=relaxed/simple;
	bh=5xhYe7CVvTcYQrjAnq8FJ6EF3FU294hXG1a/BgTXVHQ=;
	h=To:Subject:From:Message-Id:Date; b=g/++ZeUDvBc0f2E+mLrEHT04t82A2mawYecd9LfBoGeT523TGS2yRbjyoKIioGUncn+r7VPwIFwBBUG1sQQwo5yGMBu3GjSM0QGJVSPghWJMfVlecfWdxJSlEsEAaUvNtdJqeKtKVeeupJBv11xag/ztLXioZUL/08pBdJLpAgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWZfnvtF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWZfnvtF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1BCC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785764433;
	bh=5xhYe7CVvTcYQrjAnq8FJ6EF3FU294hXG1a/BgTXVHQ=;
	h=To:Subject:From:Date:From;
	b=qWZfnvtF+ZhdLplLiVOCBZGX9K/UJhfv/JMjBZsTLn8AthI4bMcqCdu4dhGmJZU4/
	 uztyX5CQ0WZysG+GIK+0NSJws9wqfSpH2JYkk/Wqm7G5TJFudAmj4O68RLrfPGpkLR
	 DAM7qsVuUPYETjVfi/pEAMf54HwY7Y1eig8ARIIowgF8i5VgEIrjqO31CjnZ9oKjuZ
	 vO8U3lnlTLjgg0tDsZNXf5VfJBgfPyY3xRj32HEiBARea7ohxDlfiY+Eu/ZQB0rOuR
	 jDHnopBLWw/PEwB4QjN5ISUgkySdQ/xVO+MwWYkBCPQjzxABs8YYR2Q6hxe5Y+BViy
	 4HwcH2ece2tFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA2AC55179
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576443369.18229.6314403772213793478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 147f89433fdeb9cb5272c410692dbf5996a71d00f74b968ce2ac819bdc45518d
Date: Mon, 03 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785764433
