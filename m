Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244EA231C8F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728235554; cv=none; b=W1Q0HtbFC+kQ9P4Id/CRWNlWOTPdgKKShbKX/z+Vge2nQg2C0mChdHq/cYP54If9wRvo9XX6rdTGT2lO/jeSYlH4v/kjJbV69pBvTCriJ47Nk2eOd7/ckpNePzEY/kWn5chGnE2tJyeLqSycuVF3gl/tnfIwwwC9WN0nb0mwfwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728235554; c=relaxed/simple;
	bh=K3d6gAxMm0GmvOmtA7iW/i37G7M3LaHhRNVyhrErdAs=;
	h=To:Subject:From:Message-Id:Date; b=JcdiNLpFeUGUKeVqVObEc4OP5MMuN2VifJmV9JW4UcWmy77FQEdy4MNTlXyPTFDwi5qOmA2YseRN/67tjReobIBrbo98F3OrWbfshotdTvuyQZOfTT2ulZvnd6TDXYH2N17bHT3N+W0EaQ5GyO+HS6phuhGSVNMQLCG1VEjgGII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0CwSj2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0CwSj2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B049DC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728235553;
	bh=K3d6gAxMm0GmvOmtA7iW/i37G7M3LaHhRNVyhrErdAs=;
	h=To:Subject:From:Date:From;
	b=i0CwSj2lC4EEfBRmIqTloumXJJFaFpYEy2Qyt9i3P/s7xapoQrxAJhu0dahqfc3w/
	 tCuHrfJx5SPUnE8JncjE+m/6BbH2A8wnbsuD0a2QXUQJZCFLnn5OvD75v7Hl5QU14p
	 cNgIRGDVmC0IuugznILDNhHmrFU3b6YuwYn3BPiYsSY3jzk10hkN+QYbIWqlgJu9Wo
	 G1wFvpFPSCTBuA+488fav68LuNeQCicFtj8mW7wMPySUXFHGc8FOHLva84uoq6aTKG
	 Xs64U946syK+4XveKY4+J9YznSmRYqnCvUmAZV1M4Pg1a6AS+2MMfgQEkZ8BXpub5W
	 nRlW/jYk0XP9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDA6CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172823555363.18130.1797063279160947245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c68e9b0710fda1c166b5c3e257781e04fa9305230c5900cf186d74054193f336
Date: Sun, 06 Oct 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728235553
