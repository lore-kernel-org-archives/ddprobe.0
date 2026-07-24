Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C2A40F8D5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784894434; cv=none; b=nqe7b96PKZx5vo7zbvyrXHUkW8gecEVudSyJbI4lhi0qgajtMVa0dp02X6MkxnZ9as5OOL8NdrdgRlZAI4FyXfZAIpdszhchchoaSJmTYjEKv3qEKevU+iwnhUF+3cUNBg2ItEfHuLtvhwlHDTZL1bAw9voAcNfWWS3Y/HE2Qe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784894434; c=relaxed/simple;
	bh=4vMEIanULYswdpbrzqwz8LiqN72D2xrHlM4FH2aVIY8=;
	h=To:Subject:From:Message-Id:Date; b=bZnxmkiiAjHvMMoWbrt0vcm8rd13IUZTLJxXKNjGyWebxY0r0VJucjFI9KL0pgzzhmr/rGcZj30NMhO1rC61QrN7HdL7+dvq809J90yGNlQqAU6zvfTCECpBxmIXPl0+mEIPIs9xDi3Zz9+MONztUXYgyR4sPPLbkB7zHNBTZrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJkNNGZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJkNNGZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B16C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784894433;
	bh=4vMEIanULYswdpbrzqwz8LiqN72D2xrHlM4FH2aVIY8=;
	h=To:Subject:From:Date:From;
	b=cJkNNGZe/wcfgNsz7Kt1h1wH6cdZKh8MAV5hCmkE5ezaZTDGk49KjcrAX+6EgPuaG
	 cIVJVK8/CMstGCHlnCucYRF88RjNt8BYQwkJ/H26eE5I/r8nwRj9mQLqerQH8ogEXY
	 aaV71WEJnCsktfgFvar+JJLb++Kj+95CwqtFmUoV+7pFv0atfgyAsvnhYDAXRWgNRl
	 NDeB81nqTRazhMRE39ooNmM5Fp+cboJxccjBDeRyiwNdnlpdkEb+snbe/jeCMMrpgZ
	 WS55vZuyKhwRhZcZwSgaBZRYzH776jgy9ChtQibt9+78g+4EC7TjOgFiqKsaMzZHEZ
	 ueE/uL/ZmGrjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA29C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489443370.616.3211034626516493459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40279fed67a44a905c2fb37e1096244ef3dd2ce998117ecff567eeaf2e91bfb
Date: Fri, 24 Jul 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784894433
