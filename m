Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44195182D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791590434; cv=none; b=cAdssaP4wNvJQ47aWfhNCi0z4kTM/Iys8Ofiw8/FD0QRnqx79qSsRW5k8YAZ3s8T3XSkAH4fJlJCkP5f+ODekZGFFwwynPPrH96/aq4Iz3LTlFqSZNzvcDFCm2PAhSm0uIf2/kfF9iyY+5Fi7+HmsEKDzF1gLM/yYe4+9CtJZBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791590434; c=relaxed/simple;
	bh=Q9VkXU/S9vBhP8Y3BEB+Vid8VzBX01V3K5g7Xz6fhCU=;
	h=To:Subject:From:Message-Id:Date; b=Bdc8DcSEUmYg2fCL5pjkxeH2jn0k7OchGKE/ohZIBKExTTOnXOGJzOoCMFFNRrjE+qqMvA1H6BYnQtNTdC7UWzv0mHxQ4aqCVo+I81mXJzG4WstxL/+R/ZzV0BSQKggP8uNqXwk3wEeHrxVBBzEz1qcz24yaGoVJ+m3YbHXLwoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfkwDXj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfkwDXj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48FEC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791590433;
	bh=Q9VkXU/S9vBhP8Y3BEB+Vid8VzBX01V3K5g7Xz6fhCU=;
	h=To:Subject:From:Date:From;
	b=dfkwDXj0SswnysSBZmOXwOEnTW5vygsAg2JlUQ/zZZIzFXf6a3mLkpnkHXin59pTF
	 RFn+fM+XRYHRHJuZDzg5L4w/VZ4cqYM0rnv7LEPAqpsf4oTnlJqnWLdvK/vrNVNs9B
	 phwTJDKGMNj943PLLNOfoKQtc1+sPRZQva3SI3nW4PXWYlh6gM+h99yGMzkioxbjd5
	 AXfO5MPOALbdT8C8kpAh6yq0BnmyFTekj1iKElhBsT2WnpoTaOB/MlzzqNeLgcNpjl
	 YavAqlXNsnwtw8fo69YSgzAfMygfSDZQ5YKo0NTPehMgao9c9vICsNQw2V72uDDjZW
	 seOGteBTx8ncw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE35CA9EBB
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159043369.13328.10097637551218310415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7592df117a8e28ce84139767e56f587367cb3bf05fc198b0ad01eb283b8e701a
Date: Sat, 10 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791590433
