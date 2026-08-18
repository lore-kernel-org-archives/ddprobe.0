Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D63E3368B0
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787096434; cv=none; b=GDDblifQCpkrH88ycuG9XZREAXz2Y4iUEwi20Z+n5hgZaMevsu6HQWLLhx/6qYJPuuWoXEa4NBJFJnQcJN+NH+CSzRUsK7UnCjx6rHJHuJXe+H/GApTBgQWfjn2pUZ22RXffKILaHwi/si/vDvDxknTKdjvX01bOrNOclu++7vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787096434; c=relaxed/simple;
	bh=8ZZ1Pai2A/aY46oNYMJkEUNJ4+KKO0jvu4VYgQ87nQE=;
	h=To:Subject:From:Message-Id:Date; b=K5KvZUPyklqhaPhjhNIRCrGCjYOLngRTNqdRVwB8bZn1iv80QVI6tYzRjAag7y5Omk/xvX21M0L5CZQtmjz4dUTPMOHmqHOLDysgwOk86x6aQkwU1ZsF1cXo42fHpcLgvfvg7xNpY2Z47kGS52mr7xnhRbU9farvV0dDqiSg5EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5yJJ5tr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5yJJ5tr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8726C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787096433;
	bh=8ZZ1Pai2A/aY46oNYMJkEUNJ4+KKO0jvu4VYgQ87nQE=;
	h=To:Subject:From:Date:From;
	b=J5yJJ5trLSttrmH57iqGCOYJ0biINfeXqq+zK4uTPRbVzLPlQ0fhPMcpx+N8uvC3l
	 QlMBgTCDOcFc2OLYUKnKP0UZbIdBUUXExz71hYjNLuulHUkvsydJ7KzNMljqt9V3+l
	 UD9HInEpJrDHnuDsxbBwKJTNYQ0VlF1nIVCc26SzPfgrCXco3ufTFkmWLGToP/nFm2
	 lIIt1dJldRMyCP0aAbmSX1rkXLpWHDGsH8l3b0PPze6NMuuNGA7h1ZpvjcCKiU0tem
	 sdasUXx+6yR69JmG+RP0ujlTCWR4vovoEEp3peQ2saQTH5+YRsrBfetbs7b5b942t3
	 CNOs8j7M+j2Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3C7C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709643368.11141.5531388187171173567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431f5d68e89d497dcc816e7f507455a1f52afdea0f0a0a168679fa570e0a0962
Date: Tue, 18 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787096433
