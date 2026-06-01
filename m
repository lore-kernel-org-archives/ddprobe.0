Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C6DB640
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780272874; cv=none; b=EOBwqmg1AXMQLt9AuBhWkIx4I7dlXLwMP9j+7VCsz3ZWE9ZADkiC57PbpzuDq97AHOSJRCamvukwdnseF47lI4of1FYZf3zDK+hf3bLPXb/05M+3kjshgdehKvr4SPqDnsyYoN8pYFNhtj82dDPrhSVx58zOJ++IlYnL+dT9gqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780272874; c=relaxed/simple;
	bh=m5fhE3SqbiHCWlNeATbFBzcRfEv9KzZTRuxMOJmdMu8=;
	h=To:Subject:From:Message-Id:Date; b=I8Y3jE81HbRzwN7evQIcsI6YHRVmJY1bKAWwYOofktoFTJH043dAKskqJKMLaaNxik0f83Dd1eQDBJMpwnpSv/SqIuxcRScECxxZCf5Btazm57BuBxYRAGWgx5SJ54scL4F6HLMDcVuCv3wAA4urefz+nZLgpCWRMBlKqPDBdbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpbSydbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpbSydbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CB4C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780272873;
	bh=m5fhE3SqbiHCWlNeATbFBzcRfEv9KzZTRuxMOJmdMu8=;
	h=To:Subject:From:Date:From;
	b=DpbSydbXoPfng3v5xcu5Ln8Lz7yXCGXzk7oFwR5nIA7ffRJV6ZPAJed1NBKuH78R5
	 p4mukJVHaN8AsjvIBwnkbPAyK7bOvnvGoQ8BWwlky4Yky0D/1/rvfJ0qXbnJV5WXjA
	 TIXUEhttDSTQypthmagADVRIRG6s/aXG6Bonc3ZIWthXlExm73ZoEH6eHhzjNTKXZs
	 tClPYpeTQYXjggKlaf9qRuURd/ouYhT0WBTZ5fDJCg7EptmG65tdk2MuUdmlXj1lZd
	 1wDCGYFZsbK4ogU39SvvcO6ZifSNaVT3ybsd7mYoaJ7ioK2FMof4STTXkUQpGkovBX
	 foQr4+aIOtHjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B298BCD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027287372.6042.15075744975412977136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8624ff6a1e99316c00edd8f2499b742a0f55f13a1585da0c75ee35bbd7dd6f1
Date: Mon, 01 Jun 2026 00:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780272873
