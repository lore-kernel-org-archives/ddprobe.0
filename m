Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415252F2E
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754429994; cv=none; b=Ss3bltoDblhA2J3gwgCGrienh1hsYcvLAwExw73Kuem6BQsuL8SirG5z1s5hecYn+MZ54LvTiWgx1MmjzgErPVv8eLuYSEgckMsA8IVU6kXoKSa5mDnPcAxqUplD/76q95RQFXa7QqiDEpl3xoM/2LibA1IFQwg+ebbPVKo3Il4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754429994; c=relaxed/simple;
	bh=JTX1QEQyBhjFjN3nyi8SRo6Eq4wF1mIGYpLpVaTxWZc=;
	h=To:Subject:From:Message-Id:Date; b=B8kI3Izqmpp/lhnFFUp9IcNkZCpDqiB7bcnJ+5I2mnw2yaO18eGNwTPL3SAK3knhnz+77phDT1sS3WV69DQzqb7anAI/pTzyAGMYgacJMeylQk++TWo3cCT2bP9M9pL4voPZTrZbhhYcz3w9bxG34XdFvPYf4J6iXJeRqBhx7R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNM3mm6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNM3mm6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4947C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754429993;
	bh=JTX1QEQyBhjFjN3nyi8SRo6Eq4wF1mIGYpLpVaTxWZc=;
	h=To:Subject:From:Date:From;
	b=QNM3mm6xTRy4kwl9m34Z9WMotu7tUlD3UiE3IojgtKAdX1pUdg8KnzpiyrS3ou7Zi
	 orqr8eO+xpMBg+o+SS3DmNk2gbGSChRtxFqgaxoZsZ6Z3LCB8rFsZTZL3eRwiaKffZ
	 2qYQ/WHc9aZbV7/vFn8onK/PuGMFfdUWNYyli/ErStwu0FDb2jKKQqgM7mRIVJTtYM
	 Js7V3TlChJYlMVQn6cWe0neEhjhXh/9LW9dPoAONguG/Og/JbnhHOQ7a8m0rHjCWtq
	 lw2mBG8wfJz8XUpNSviXHDxEJHcmsXlkBJLdGW62Id2PZoSW3gilUG3LoVeQTHoMiX
	 ghz1hgRCTpJ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D8C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442999358.15820.10254113229520513125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9bdc9fc9f350d9ae39006ae7f9ece3daa8c80d3cd9624fd2879f05b905d343
Date: Tue, 05 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754429993
