Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE7F2C21F4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786217434; cv=none; b=tthtxQB4srPACQIW6smIcH0TisGTCf2HdOVkwZHB2mIqcSZz4pTiC2KkvlAqXv4+bTCiuzVFAHesr8GtGroEjwRDtsUUkhcHD/5CEOfmTVW5ZQo9Ueq1/hdVaJqdDBYDQomfsNlvKpwQ3Eom5bSEj3laXc7fg5L99d0I7GrH01E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786217434; c=relaxed/simple;
	bh=lAh3AhpS30BuldN0t33XATVWCpJk5XgfXyEBIgfm1W0=;
	h=To:Subject:From:Message-Id:Date; b=q0tAdjUE/LVM3OEhxNqmAjpXU9K18QMLFfVw5wfr5HN7YcSgbRNMmXq/LhhVy97W7KzKvLMfC8QoLIRMkKuDO/0jdahlfsjU+45EWw2C7UPaMikacfDTWQve8zqGWpm33oBv6CZwXmG6kXbAUUEg2z0J5e3a1yHjHHoL3VNNmzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6PaXUxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6PaXUxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECA3C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786217433;
	bh=lAh3AhpS30BuldN0t33XATVWCpJk5XgfXyEBIgfm1W0=;
	h=To:Subject:From:Date:From;
	b=c6PaXUxNrCojU9IrveaW4dH+ysN6dtePAUx1UEyY0cvIRR4SDYCDkSfCUjqxG3n0T
	 YaBJR22PnSqsGESb0EbFnEB5pQwgY0v1sGgBKodHSEqkbsrmJbDzSbcEgEXypUzJKp
	 h/v/nUPSz+G1WGRk7gxux1hAz4TAz5DJhPbIonf/dfSzHCFv1I3Q46D6NIkYZd7mue
	 PGPxZCivHIwyzWR03b24jWrXFRkkcDgH72G/gLRWmcZqtvnHaNQWbXiFXPnIjV+p/b
	 fY5n+AEimTiQ8F7BuY21iBtgWjWsU24u0xqjp5Tg+QSKyzyu6tw38v/MnfR3bgw9Em
	 a71MyF/CLAdgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB56C5AD4E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621743369.17984.18330092446327547087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7293eee7128ef107b61e916c741e786843c5b1e2e42947031fd0865005a943f5
Date: Sat, 08 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786217433
