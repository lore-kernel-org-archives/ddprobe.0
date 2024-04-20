Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2BC3E478
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 23:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713654023; cv=none; b=X77HBOfnPv3g91Qv7C0iM94alUHo2fxXB5ar9kc7a0NZJcRAe1oGrDCqoxHpnv8ggj3CsieBXcgHiw9koZP0wgssqTT91b6vAGjNBPgNk8EHEdkD0uA708FLLS1jabs/evjKcvRxk5tzH++ara4dTuYEhcQxV6dQ65WWcRMRdMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713654023; c=relaxed/simple;
	bh=mKVGchdU61sTeag2gTRtwxPCPWNovuL0MkZbDPQG0Ew=;
	h=To:Subject:From:Message-Id:Date; b=cUP8eBZm+lBpZAkXFKKuwXru+pPMGfGM74YHDyqcQvYrHLh/2d8NisJoLu8faC8vXFFPtRZs+GurbN4nhtxvohigWVVjN4bIga3MMgShuWtmArFgd6JxOKFJa9mWpwvZ+LWDnX+XyZ6i7NRgaU5JKyfr5n0rGF0rBmKgPkoI3nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6uXmp0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6uXmp0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA366C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 23:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713654022;
	bh=mKVGchdU61sTeag2gTRtwxPCPWNovuL0MkZbDPQG0Ew=;
	h=To:Subject:From:Date:From;
	b=Q6uXmp0zv7VMvSqw1ixhCs8hvN3ZwxOrWICqPufhUCgbI1+YBFtTtqqd6LDIQ5NOw
	 iqsna4FQwRyRQJhqfy+5u8eKroVY69Sj+GPMVfpxGnoFO0N3sRfnEn/Bf6WVsgiwCi
	 nNBoPHFP1q/cz+o/4Zl/WAuceexGshJxqJ4e9vld4GEWVI0ZvG0GaV+1iSuo2L5WHZ
	 CATtc6dnalNVqKmtGFW2r/SPAXdiHFJWOp1+yLqkr0PmHeX1f+oPAolJOlZEo8rz6A
	 45FouFW9K/wh2Qv0ULxBH4XCeW98BHrFpn7BBXyEf0RJ7ilXkWsu68Y/QaCFyEq/C0
	 FvJvYIsbAbvuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF2DBC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 23:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171365402282.3059.6407140503568014694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38742c53dd2cd6297ff987e0f1980a3cb1f50beccc9566d2d81b80ab275b51b
Date: Sat, 20 Apr 2024 23:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713654022
