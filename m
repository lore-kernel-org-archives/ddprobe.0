Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9642D661C
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785605434; cv=none; b=uv1HcpBHWEW0ZAo+lcBer8LzGF8XD8pJFiNULW10DDaAlGC9XOej2JtbTK9AOPAi4Vwj/cwnJ2HERKwI2hunBKs0+Ft/BAD/Swb+TH4pMUiZPCmtVqwrInu9JxrYJNexaldSvawf0APlY24+FLQgME2ALPDf1kFgz/2eR3zgGW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785605434; c=relaxed/simple;
	bh=opYx83zgwslWqJF5YKuWGnzdE3J9MMUGD5qgHjDmCbo=;
	h=To:Subject:From:Message-Id:Date; b=e+jiEAKRnznkP5weOvZgysda3vByd/yk4rrgiFR6wcOJ8q9MjTi6Na++9KVHQFvveoT0KTcD/hcKchcZ6So5Dzrh2azUUSJFeasG10eLgl7jHdlbJW8Pk8PprZLm1GdpwapeLOzUQlsJ9TmcZCPbz3yzCM/IWxJfIxVEU65vpj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kE3oIU/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kE3oIU/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A93C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785605433;
	bh=opYx83zgwslWqJF5YKuWGnzdE3J9MMUGD5qgHjDmCbo=;
	h=To:Subject:From:Date:From;
	b=kE3oIU/QZNm1tpfgXNLASo/HERZ0CVt8Dt7EcHtQ3JxMjZMCwy3drHcpDM9RkFL/U
	 FVieJgKvM6uXjRd/ad7XXCVwAN9e8qPmVbtXigVooor9UsFX6SN8Ly17jpx8pOcU3u
	 1RxaPLriPusy4WrXIi8S4v5RoEiC4Co2HyyNNgRcSywbEWJ9uEKW1iwlbtUHMX79Cn
	 OVvZbt/fgj4NluM+G6AQlBCzKIbnaYim74ddJ3CM0at6JUM5XqU3ucrJCwM7dHl96/
	 +5J2/6goPzjSfej54825fsf5NkiEWIhHHcse7PPAfRrfG2w6p+zE+CPIGfEF8rN7h6
	 P+V4ctM8aIisQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0085C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560543368.22130.18159959817740055380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24e942f76816a4448246c578c2af4cebc44694627af691b055da88b648cd39e
Date: Sat, 01 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785605433
