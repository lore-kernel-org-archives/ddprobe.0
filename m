Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71CC43CCFD2
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787008834; cv=none; b=mM46+lqEWZMtMDJ5cmYCvaPaLJB/MO8lf5thhAX075gs8cmYAq9r9d/1NnZ0CZwDAgVlVeUiqnWCtTgcJkBTPymJBMdgWvL73iYUiyRSMwL/OE4oPTgVO9oYBaw8tFcse6kAL4TWqQmq7y7c0v1kEORk66bXwKMBDby1dBeJURQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787008834; c=relaxed/simple;
	bh=DZmHrwMjJKqEPgHUUiFVoedSqwmxdNT9nMXXtiVSASM=;
	h=To:Subject:From:Message-Id:Date; b=ZJ6R2mSQbbgQUlBi07GmIZR9CFqvDWnbDCcNXSfRt0YZH+oa1BCt2Oh9WhUoHqBf6GS43cO3vvSoL8K2dOrTLHdsD9qNhh1MaUVg52DzDTdaVWeBaEKnyNqFrEGvCykWrbb6zTkqsijVkwHp3+ze5CZe9KCVny8+nV3lgdQEvok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psJoOken; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psJoOken"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5189C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787008833;
	bh=DZmHrwMjJKqEPgHUUiFVoedSqwmxdNT9nMXXtiVSASM=;
	h=To:Subject:From:Date:From;
	b=psJoOkenSCReyBQKCl6Zh36pGKWOsKtBGnPUIgn3WbJ5KSCa0X52VHDLwAdi0nSxi
	 Hp2bJz/I13phbHydBLXDZ+N8czRLSVqfLJ3avFmPtncSWgDjRQkIhekWK5Y1yy0g05
	 G2HyG1E6iziUZxIso9ZPA2lek56JJ11mHib5HuQJH2ttTGkZhG1pMyqlgD07zecQM9
	 ZVKeYyhO/goGMfwmJxVm+1nlMZ/09KVF6CwGTrlilZgKeAwhiPYvqDPZWCHzLJyXc5
	 x+c2x03P1Jgu5x8MHXORCieADcMzWOLOWXY8ryyKMosZ6+KXXRF+9fCVwJoSc2skzn
	 9FPstlIeks66w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE22FC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700883373.24300.14821478126632164918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42928bd29f1785517479d32b1bbcbeddbb14e3224cb7a2e12e8395d09e561347
Date: Mon, 17 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787008833
