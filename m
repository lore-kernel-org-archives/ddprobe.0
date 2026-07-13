Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A54F372EF5
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783979914; cv=none; b=YHsR4zXbGvV6v5yahFYxyI2rsuOFf1CgW0GmJDKJcKoScecHaVyJkuqKb0z/eMIDeVmtO6IfIcIMTebcUQl5H6EFmYcBwuQ5W9LVdgl80ELA9OZO0tmQn6PsoSFs5ir7TTW3Lsz4BhuM5wrzWhctgnLSOrZVMVX21fOAD8yEGLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783979914; c=relaxed/simple;
	bh=kh6Y+9vX08v779QyocmCGlzDEIJb+vWA6KpMQMXyRQU=;
	h=To:Subject:From:Message-Id:Date; b=mVCpVh6WuT784WDxPWjCimw8zO5rL8twWT1r8XlaEzyhafmR6vC0tvzHz/D811VSD7FTX5+/YeK2p1in1eWpZBaaxtDfaLCMSCCf4WeW17TIn9RxPJKQFwXHLlDwlpsA4Gwr8PAGN8aCDpx7IL+COfnn5p2I7lH9+gZdXpR20+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riGnFs6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riGnFs6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B15C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783979913;
	bh=kh6Y+9vX08v779QyocmCGlzDEIJb+vWA6KpMQMXyRQU=;
	h=To:Subject:From:Date:From;
	b=riGnFs6sKdDYnGH19U3Uhh2Mh5LffEAy4HBruDo9UovWfxyNgh2wPrBPeWTZjMwR0
	 fPuK+hN3/0yfM3iE0aYBTr77BuBBXpn2ljwdgstUSGLXl1lhthNFlajcstaZ/q9gM4
	 0k5RXhrEsUqJ1NEcN4CHcXfScPG7fuGessrIaC0pq7Kllcvoc6uMPHxPka+q6sZcFE
	 lWbBWnI9HInr9XT381NxFET3DvSAVVkw4yHKpfIZowleNzdyawsc4r+3ADKknZxlbY
	 LFZUfbOQV9k9fd1HUhaVp30ZAVtF3m3RQPHF25CGdEINxuK0Z8i299AB+XLCpMVVFm
	 4m+xk/xYGqDaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8C7C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397991368.23772.9754939718261184590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b2eada6f47e196920e7cecae25cba8a45c43cee4ef79b37966bfc6484afe65e
Date: Mon, 13 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783979913
