Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D2F17C77
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759332593; cv=none; b=UncA/j9iVYgLAEktHWQL2rars3KOsZTeLMBT7UkF/kZ9xhJ+Br46g5Ukq7nLERioQ+XH4LTCnaLQQefW3Pz9jxhdG7l+JVZn2jYFW0UGmSJYqw5xElXRYMYcD6MiTjq/GqtMCcU7vQNY+2KpifYGKCuzpI0rBFQf2Ve3QVBr5mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759332593; c=relaxed/simple;
	bh=16kta0bYN7ohXMaKx13450SeP7ZVNF3/ykn1vXhhW3I=;
	h=To:Subject:From:Message-Id:Date; b=B5If4pjoojvzB+Ggm2A6kzQaD0tg+cb0MNWs30sMM1RxwUi+3FlJabJDoRH7wn+xsvhmXn+JRhN6YucyPfdQYJNc92qooKEXTHiC5ti/4QWCSLOA4dmqRTm3T1Odt96izI0uCLHOeW/C/haNGo+gjh0RklIjtqiDhAqJZv/gtp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQr18l3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQr18l3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E78AC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759332593;
	bh=16kta0bYN7ohXMaKx13450SeP7ZVNF3/ykn1vXhhW3I=;
	h=To:Subject:From:Date:From;
	b=KQr18l3j25Stk1+jaMI8dqjk5jnL7pV3sZGlLzyLRqjaXYNp7GYRR5ZFSDNc3P0ME
	 bGpuL3CWwR3KUpuvOS/o311P0+IRCmDnNlbSJchaEofd0EwRrDIQhpGcgCmRWAuIYF
	 9nwfWlV2vqXHaUZC3lauZ3GIaI1bBdIXOorT1c0R2DV6+TOI5jkR+rG5O9hyboCOJe
	 FNc3+BSUHPUCgNeZLk3/PXOcSV+lw2mRHcGWLW6nCl48lRYOPpvBxqXAoiLw8d4Aji
	 xiVjR60VMddoI8x/w/4+IbBFIK1/SFUXOgoSI96LFOBDnAg0jm1P5KnbDeTRNnffGr
	 S7gg+1zveVRuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F17ACCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933259357.23114.1547909948644335171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9157b54b40efcfeb22cfe0b7f47e9affc4fd5123d3c293a810a02131ee1973dc
Date: Wed, 01 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759332593
