Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3564A3F39F2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783586314; cv=none; b=rPNu5mW83eoxc9BJf38SvBxt7wKmXN38kaJgrlMLx5WURNChOdVP77Y6SnYhfnr5uyNk12dvmoI2A22blM1FM+6HrhkgTVZxAxdILnZq5tAQTY+pdjMYqsm/5yaNcaDmgvXXAUspDB2j5xizu4WDi/SJgkNUXwD01z4+U2xWOwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783586314; c=relaxed/simple;
	bh=6XqVjZdgFLkPTqVdDL1PbUNzP4YBoBRHo7doHqd1ZUs=;
	h=To:Subject:From:Message-Id:Date; b=HKJUFN+yHRBpFzK6beHZ/QpsHdhJIdx7AV1PayXHvzyDWp4THkZUDxA7NMDjXpV7L8LURhjB/QOl31lxwaoUwGVMhGnoCgWOxcs1Ed6qjtdFMronwacOk1n1uvi5VY8w56x6o3wxumPcM+MrfaOP60btUz4FqktWIfwEaXMElAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcGVcU90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcGVcU90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C730EC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783586313;
	bh=6XqVjZdgFLkPTqVdDL1PbUNzP4YBoBRHo7doHqd1ZUs=;
	h=To:Subject:From:Date:From;
	b=gcGVcU90jf/MVFm6FUMNfI1RI/8KffCuUfMb72vBF6CJU9Xab+4uldgbmTuiIlmgu
	 4/D76+sT2lMa1pzPJm7DEm7luhzjmZdIBqBq2XTVYcG+pnXt0MgDrqveXp7Az3r3j7
	 TrvbK+zZbN9HUop3FKzqjeyOSVaLnu2FgrTCOBLCrdmhpxylqFCRdgC9+w15rHVD5P
	 TYWFR3q5v2wGnVlUaa+NYM7YKaLojdnRctEhZLhFv75rBPapiSD7khOqrxREdDQZWC
	 FJ+dK/4I3NpOnFvuMP/68O6fWydXwjHU4nrCqgPf1JNdBV3cSAlFydoV4ZjHrRL6Wj
	 9dBTRKBQGwd2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C1FC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358631368.10749.16598726001862605283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 906dd02af9da58fae08c5f2c3b946d55e8d7f3303890e360ef20831a647395ff
Date: Thu, 09 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783586313
