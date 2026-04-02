Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2716D1E98FF
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775093134; cv=none; b=m2I6J2t/BfOWeDi10pweSPB7hS+ETcLdjwdqZSzxP9QDMwW+jeg0aGvT1M3JNjtCexElvM11W2AA1oy/0cgFwgnQd2ipjcGdvh/BDfDq5bDidw8wAZ/33+IfNMzu5CRqiTwg/5mu00pTy7aHXObkotERYa4TNiO0E5vVMubF7qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775093134; c=relaxed/simple;
	bh=F7ODLQCB4N56YRFYZhWZ2lhJckT8Rzr387v+jkvx/18=;
	h=To:Subject:From:Message-Id:Date; b=KCGxlWdBoiYj6Vi2BE7ttdHZPXMlONt8OQ5SWh+wjZUlhtJ3MqFMocWER+FsUokplAGxj34Or+p7M0Uo5moB8709W+1K6xB2ALxRbWKQJNlFn3yQGC3SPjp4HLyMpcGKZqY+nKhMNEZJkn9Y6YHKUUKxD1P/x0z3o0UIpJj8vNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrPcJrPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrPcJrPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAF8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775093133;
	bh=F7ODLQCB4N56YRFYZhWZ2lhJckT8Rzr387v+jkvx/18=;
	h=To:Subject:From:Date:From;
	b=GrPcJrPSxdd48Mo6GXXsTZe2o1CkDutb6FnLt3v9uUPE1qBV9GzqMxLNvBLxuD/1y
	 c0QIHRJ0AJKh63bm+wf5ZRfNEaPksnTpayhKTPt2N8YXm2ir80IYyBIjTmpF9S1oNK
	 abr1GivZeGdd+FN5hbxXEkSjEzYLRXPnoT/1JDhjvg47oVLYs2izEqPqKoEFmG51r2
	 cW6wHk49WgRMWASXClL2spTHyMIIT0KFj4QxZiYEr135LgYqvw5ViMmMO9sQ2aZ0P2
	 Apu/zxZ8Fq0Ihb0JuOJfN8NIPBUWh5FvV6HMCo1LmMS9G4lbnLF1SOmBaAa3vmPq6d
	 R9bI/hdEil1eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CE4111224A
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509313368.13233.13875476047097232772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20b93d2672d9ebb6f63e4d93c1329dd6535296270aed25ea7b3ae9841bb65ad
Date: Thu, 02 Apr 2026 01:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775093133
