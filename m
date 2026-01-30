Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8F23659F4
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769814234; cv=none; b=XF72T0j6yPdgjtXdo/ZjfwYMLVMGRe3ogBbpQB1CHLG6FcaahNUVMJ0PPodpJwQ1Tx8NT3F5BJr7XbPdmfG0JFtzBeL80Gzn24HWNCU0Mq2LdkA8uhSAaYEIcZGdPRrj0Nch6lbFwCbQiLUihEndi2oAK3mU6QV9btezhUnZImQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769814234; c=relaxed/simple;
	bh=1EV5r06VbO85ThZZnEugvp+J683iqYXkdyMcuPWkwnU=;
	h=To:Subject:From:Message-Id:Date; b=iPGl6EgWLSxrV4HlWbf1T50v7PUMfjFVY9hpnLQq37nlJfVJ9MtLeZT4KXA5kcBoXojoM+U5AUTpSw2tEFTU2BRfWA+xgkYZUh0QuQGbCXQAeEF+RDxvjPc2VxI0riNIFAo6z6RQFr644hnMSpc4ccS+ZQ//185OOshx3rj6HdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZfhhRUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZfhhRUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2050C19421
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769814233;
	bh=1EV5r06VbO85ThZZnEugvp+J683iqYXkdyMcuPWkwnU=;
	h=To:Subject:From:Date:From;
	b=ZZfhhRUgDM3iEWTNUp3D+XpTd5kdfT6zMyR/XagNlnwwZ67cFLzv0aFzg9L5mOnnJ
	 8An3/p4ovSUnLD+7r6vCkp+knGu4chRufw7IuEmYAS9NxzUbbRJ0nbYRxeJ17Eyabl
	 GDRr539DdY5r/rh3J3kx3yKTAOYLkBrC30yDiMroX8xoN7QNttuuQMMavfJBPLMoBN
	 tRqzAlooj406/JGKkNePShn1blluCe7FOjOkQaqaz8sNVdDAced0Jg+PJMKd91yOWe
	 pDC4+qTUo/qW4TWzI4sx8eUcnx5Qcrw/tOSYydTX4S7hRgYcwkgYvdhlc341gWdrgR
	 9UMpi7ngzxALQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF0E6BF3F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981423357.27267.1434634343504442326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846f01bd78f756910d7dabb45ea0d789168f99154099b1e8ff761d8ad4f3366e
Date: Fri, 30 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769814233
