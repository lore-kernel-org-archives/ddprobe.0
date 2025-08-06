Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E406A926
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754461194; cv=none; b=cL5JanW9JdrviOnqUWenm5Q11N2P9PV8ViFjGOvrrnH7SVbeTyr1lB5hzqcRcofziYgh2Go+ith9Ru13BiR/pVwte6uw8ar7pSNMW2CLxY8tGuZIW3a44/tJ6EdJEUroZHZaV+MF317vaZrJlSuI/bQOplV5VraJyGhDAzOpw7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754461194; c=relaxed/simple;
	bh=zwZavnkJcR31CnBUQZRzWkcS1RrtqqmFujldZ0wB6SE=;
	h=To:Subject:From:Message-Id:Date; b=Qg5AGBaRKOdF0ECcFT2x1DYeioKuyj3V0wB2O1VCOcQ3lNnyKDEvbx8WXcH/eRMn6lutDq0SRHeHAeW7BtYLrMnIYCFbjARUxzgqW37J8gO4E4Wk5mSl//6cSa+wSQ7JUCQOSwKuX0B06/GBiUBxW+OYy26HRPbM0iRSMyw/Gyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbI38Ive; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbI38Ive"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D2DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754461193;
	bh=zwZavnkJcR31CnBUQZRzWkcS1RrtqqmFujldZ0wB6SE=;
	h=To:Subject:From:Date:From;
	b=KbI38IveT0baT06rTTXiYABtzCLo3ihGo7VrusZW5IPj8TvCQqa+s6iFAxPP/ALhT
	 zF9FoJNeHnAZP+ED0Kv1ElMRK1RvS0fphsIwqgTX+mdxFEiuh/5LLkj/aLrktO86RS
	 b9XACjVORntQyRMk16l/ptJoXr1rlUvtQ8+7Nq5e0crT55RWDkiet9amNlnvUpcAcO
	 UzyAoNvPtkbmzxxHdm1VulmfmYNU1L/cYDPmiFqvs88aFM/8EcB9REmc/JEjeFKF79
	 bdSCxRIvRE2h1Od4jfdTYwe9p228zn4cqL4yZF/WD2j5JRU1yp0DarrHT6AGUKtUCm
	 KwO8eZt8c+w+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914BFC87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446119357.5996.1084150331034198353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb694c839205e334d70eb6c5fbd73fc3ffe8b002eb33e237a5d4fcb59a7e0be
Date: Wed, 06 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754461193
