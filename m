Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3197430BB86
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763164194; cv=none; b=J5uyr/a5UaAmy2VerkC8GDKnZ93uudgCfhcMlPR9PYWmw4jXWFnPABfScwgxQm8vrhAy0YsN1UweznIChBUMLdkQxTmSqLvrQ5Ueh/KVUJWmkwr4Axrvp69WLeZ5c9AjQPv5pGTpMm+evR4zLFYsZB5jdKd0S7GV0vcFejTyUkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763164194; c=relaxed/simple;
	bh=yZfGOh4eRqnUHkmOpSqFyIGkREySimLUXC+mgXbtAlA=;
	h=To:Subject:From:Message-Id:Date; b=Pjhu3DPWyXcpp49wklDluYUjf+nMjdpjqwwuubfTaR+UgokeL9LGjQVzHdyqsVQSAtmqokY2MDXlKJ6tFvo14jUCb8kbIKVtnlpr/svtqwMqqpGPgRCcnX+4rK/UWxCcu+eFhIh6/R05gTfN7HeqsXKAgubrZRKYscRvBvozIp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r76H11tz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r76H11tz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FAAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763164193;
	bh=yZfGOh4eRqnUHkmOpSqFyIGkREySimLUXC+mgXbtAlA=;
	h=To:Subject:From:Date:From;
	b=r76H11tzmg8zwRp4+4h4yzNZBAbMvl1UNsaUE4n2MPMHQ1ZvyOIPe6fqE3dn9Y6My
	 Vm9YfVjteTPxohNL1tFSMvMChIOcboWRgqtIIDzUAFbbStP08j1L3/8/zWetCyAI2q
	 VlONOIcYqHIb6y1vNpvbR4Ix1iOB/aLy8Qb+o64oUmJxxdHWziGVki8mMoOCyxb2oR
	 KO1f/etTWniDhbJWNULvuAOg7IZzxD5/2QEB89BeIg8pJmgBmjCpQwKdbDhbbZpDxG
	 kO5gXhLr+hTbcAD0G5h2KZVk7xOHKlEZ87LlzzkFSlzzgzsysmvqH5xRDD+5OVAITg
	 MAl3qZzgJtcWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B298FCEACEF
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316419371.32697.12370173379828162608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aaa4e8a6138070969a8272a2b7f3762dba324014f167d890ee073a644258516
Date: Fri, 14 Nov 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763164193
