Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E33840DFA7
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776011254; cv=none; b=dmPqH4RbifZi/Rq0OwmwyZmMEoT+2LVebpj6NjsQowACek/zTHXWDxx7BBvowt5YS9uvkJoc8jiWoH9Xy3YQUaRQiuopmgsSEcpUYun7LoQVsUJqxjlzwEv88HmaKgAszQT6MQ3YMiK+cGXRKeUKo17boNnIr+4OxepQhFT/ejI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776011254; c=relaxed/simple;
	bh=+uUR5wQyz3gX5IGmC6T3vETnf4x8AFXqKL10QcSP440=;
	h=To:Subject:From:Message-Id:Date; b=BAwz4TfrBIXzo1gMu7iC7C0/EHXU2HeWHwp9aJWFWxx4XIT4AvZbFZPLo5KZ8JL1ejlB1QnLAuRP+c8I7wxTsZl+NFqQrwtJ24rMu3rJGXl1gjl3Da2aiOLUxzhW6Dof2yBvV1gNxLrgBLLTR0r/n8e6WYumfqfHwVIHLPGFfPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+ICVFS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+ICVFS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78FDC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776011253;
	bh=+uUR5wQyz3gX5IGmC6T3vETnf4x8AFXqKL10QcSP440=;
	h=To:Subject:From:Date:From;
	b=T+ICVFS7jmDI9sFXvaxyQBNCbLNFws2sBKwnv2xL/OG306AOTCUuSx6EzpoZaUe6L
	 +vzAB2DLizqNaKH48iyfZPvXsz5JSJYqTxhlA24/GhoOwdQcKNFizMAXZ+OdmHfV+v
	 j1Uc5DG9/yqVW2xUOh/8Bjxkwv+v2VIooANCkfI7VqIY1JWN3yxB7rKpNzv/2eo7mC
	 nBzpSQx9Oj74j/1VU0hvAqIGpwYD62ZAcEBuoHiRs8Er1CHLcd1zbTemEOrIczidOc
	 u+FKUt853+m4pi3IJAK1n9IiwnnI95nNkdIuGcH7P3uHqFqL3e702EvUR92xXvNr7t
	 SikpSlQbeB2HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EEBE937EA
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601125368.5532.9982415700531393747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fadbaed9c30bd07c82ff820f82ba14141c45b76b2ea13d24616c9395f74503fa
Date: Sun, 12 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776011253
