Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0711EB5CE
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787540434; cv=none; b=dHunlzmBIKKBKacRyDeWlK20OEPjFBkuZWQDstZdJoou8BDLBfk+pKaJkUF1R/cpUydd9viQmln06svXWmmG/JrW23cmiIqjHJwPBVlU0t2BLzLE3rZathj8Au79THaFF5kmMb8PNfRrNuIq9mMODTO5HzxwrbDDf+v27PCw7VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787540434; c=relaxed/simple;
	bh=tTbRihnpG//umVKt9sZ3ILtlL5EjbvoD45sIWoC9QBo=;
	h=To:Subject:From:Message-Id:Date; b=EfUPG/ZkGNuwG1iuryyKRBAXZ1Mwy0ozbOx91ARzlA9OCFRr0/xkz8eWRrmjuDMUjZooXr8lnbiFh2tclretIrOPlRe7kQTflolaBhqEx5kx7vsymN9B/9njKoQF0gLwVuSQx0ZQTCBp1F16eJKG2ff2ePmbOFuHqP4pQPxobwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOuhCHXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOuhCHXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D53C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787540433;
	bh=tTbRihnpG//umVKt9sZ3ILtlL5EjbvoD45sIWoC9QBo=;
	h=To:Subject:From:Date:From;
	b=nOuhCHXQtKZmSniEiRFPORJLfCuI3XT4FaGtesHmQd3/p/Fwv3Jo2x94uwFLeP6JG
	 nEEpTY5xxWnLS0KuAZ5LZZdVg06Hz35Nlk1RPwHB7goB7LxMy/NCnGopPlZ3/W9Ixj
	 Aj71UXMqMe1SDJwB9zJRt9rQw/gNIDmTJMUkm7xVlYQxyM9IA1S9WQ8IcLA/eehR3l
	 Sm5zBTJygSJshFOHYBFPOXvvILooOFw1WR0B5QAk6nadHLSZJb5vIZJR8rBoqAJCoy
	 1cFOwVoCEocLKtVM60skQY7tgVckg5qOUaUhlzIg33LXQ1aB51IEcrVoqmCWZsDWnS
	 thZqJKjnrkalQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE96EC5DF97
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754043370.8414.10432629520413818292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56e04ac619f0626ccad586a111cdcc5cdbd4002c206bf7890d5c7e7db5c10f6
Date: Mon, 24 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787540433
