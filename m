Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E38142E9733
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774587294; cv=none; b=EK8A5LaD2NzHbjQGdBGMCaH6GQ13jSHTi0vTdtliNJeHLxwahWKKRq+QDqg7ZaUk/cAI5X67Ll81so0k1OHT8PRvX5fd/1PGTMFyVQwjVae+G0ujCVUbcXGmJKOHdYXTApE2CWgtb8U8nd2/tP1R8H+Gr1t3TGr3GDEqFMCR+VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774587294; c=relaxed/simple;
	bh=vE824oDQxvaf8feSOvjO+mDv9aJauyEwIrvTMyxXoR4=;
	h=To:Subject:From:Message-Id:Date; b=ZDIZ3QNPZxxsbg3oiWaRcpKXzUZdOPE62nSMgY06PaPmSXb6GeEOP8qDcPykBudxC0YBbb59jC4jb9sgY90asbwxNb/3CzfjegSxA4TyaWDF/k1gALcr29wJea0SJ6J2H7IGn+MNM4lhQTtR7ROmqfYe+47TyUHwUc88tejHyTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WO7JBE9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WO7JBE9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3339C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774587293;
	bh=vE824oDQxvaf8feSOvjO+mDv9aJauyEwIrvTMyxXoR4=;
	h=To:Subject:From:Date:From;
	b=WO7JBE9LQ/HphhbCUsKicMAf9/GwyfdqGy5vO/4v0NzEB03BUafhRR26AC/r1wovf
	 boGYvqg2O0xHrCrfJlYDpGnHvpM3nrabVx0IOpOGkFDzpcHDyewA/FBnIqJmclMuxu
	 4y8YbiCyLgOQh3L4Z4BLRIPFpJuZAoB1lySnLkOdmyT1We6XnhDjr5QwThDBx3Pcjo
	 5udzgvEAqR/RSEe/gKGddrvv2XX7dqqp2afzQO8HfCwfl4iDnmsZS5eW/iJ1xG+W2m
	 hw1iwQFUhHqP6Ww4M9BHKQSAEJzGJw4xxKNnJ/pYnrNu9PtNpICJZuYc9hCgFHgCBX
	 BcxRm8Ipgc2QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F6810BA429
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458729358.2992.1772327673784638408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981fa3ed6f75c6fa736e7ffbdc77a9e1479d8751359137046d785f873ecb17df
Date: Fri, 27 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774587293
