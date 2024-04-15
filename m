Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591DE4A24
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 01:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713144563; cv=none; b=nywh1r4RS744aiF+tiVUj4Tv7IXPnaaur856k9uRv89xXmiu7Y9z5Q8Vpzw5TaITJaUOz1+IailpclFX5ArYrT062DahgTIqLZzmCXvC3UtzECOgGrGrVvpn5iv/oyLGUiH7cb5zxt6PG47e/kJ0p8lRXkCae+PjK5nveKnU554=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713144563; c=relaxed/simple;
	bh=/OIe0SFfXuZhnj5DblBlZYUym36ElfNPvboBAHzVrts=;
	h=To:Subject:From:Message-Id:Date; b=mQYGuZXj6v3+jl0HRuUPaZ4Hp1PT6Wk45rB9pLiQxQWfaPPivrarH6gsR23g7cZ2Daa2ebwJc4Ur6QMdC4d3X0e0hmpkBpr0uKlkoXVgagZ27+D558saN1qw7gu6bmVg0RKmdbG5HbrxOaVVZuw8HDNx8bkuocyFTFfmCYDcZU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cm8wbmdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cm8wbmdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70F6C072AA
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 01:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713144562;
	bh=/OIe0SFfXuZhnj5DblBlZYUym36ElfNPvboBAHzVrts=;
	h=To:Subject:From:Date:From;
	b=Cm8wbmdgsWHYNTJzFJFuYHRsMfCmpsiA+rNqC1BiHX84n6r33679c8Nf2YCWu9vMw
	 FRsgmVUMUumhNr8jfEGhfnQTSCbHlZ0mvFNM+s54A+0va7N5dAbU1AcQrPX5PD0hgf
	 ZZgTPu/qc0pAPew/yeiaD/anLhAed/mD9b+cdW+N2/VCPx49Tffu3E5Y5i7RJPJis4
	 lLk9EYt7hyga7IEu0zM74iDDFXr+4XQXbKjkK6LDQ6McxWqRXu60vcEGJgH5zkrh9n
	 2Yen8xT5Uih4eI49OCSGQsGOgBFLKDDetlUJ4Gnvhe3uzQ0RXH6YI+VWJ2lp0i7B+D
	 ef05EacUKnmdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18F0C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 01:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171314456277.6648.14578109612912044312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9806e5d6556414d56a0ec69acfa708e9eff00342a7ded19f7c42b2f703779f3
Date: Mon, 15 Apr 2024 01:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713144562
