Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDB9233714
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748547594; cv=none; b=BiD+oAtYVhDqpSyprrkYN+C+oMqdrb/4MTx9SQmTte9JlMzONJqnSIR5rWE3lzZRRYUx7hViiSeedqwk+x89xJtNI3WzJB/XVy/5TgVxHqSW+UxcMN88vv5wZr8gc9Yl9/Yml+S/DSytkho4aNUTju6xTvFIyeiZBk/DMe5eSK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748547594; c=relaxed/simple;
	bh=Cl4WBSSAFKDEJJjvfh6Gf66tQWKYjw9pwAb7ROixYSM=;
	h=To:Subject:From:Message-Id:Date; b=QO2sFUHKlpe9N6GzTj0MvQU/PV22JveI3OdcPY73Z3mYBF7h4gTCRxonVn6y6mKumQaBBxOeFKuUedHXrstg4BFFrhOJntzkeOtNv+CSoREH63iNJQcpu9DhMmwD7f1GAsP4p4yhRswcQ2ZhvIKV1fL31wa0UDKiImLaSp5wezg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+lk/neb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+lk/neb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A695DC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748547593;
	bh=Cl4WBSSAFKDEJJjvfh6Gf66tQWKYjw9pwAb7ROixYSM=;
	h=To:Subject:From:Date:From;
	b=W+lk/nebtcHNcSKP5MURFP9BzF85TrHxdiP70AKgLxy3LPtI67EShNnUrBdttfcKg
	 4wNtR1uK7AxWgZh2xmhjt+67o90UcsPBPCqbWtAIGwz9PDWwarivtCUadxlV+oBX5a
	 lZHo8K8GJHgKeghbWV15bg1TezP9/koYWYCuw5iSIcJC4u4ydRJmXOlyTWAII1q3hG
	 btslOBwNZjelX//UStbhufu+oXfi03eNYIoOsDZpTeIIpeBBBuHlYjJRzJOw9FnTZN
	 tKL65nazc+1jPADVf+dKjVfw5CCTmxGnKCYgucNOPnhNKKLgEdxe+lyubWLppPWOcx
	 Q38sV1cvFR3rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972F8C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854759358.29853.15585993849352386571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f36721099a0682bdb0b3839e807a220a5d3014b5454d71ef64f0018d75c22a07
Date: Thu, 29 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748547593
