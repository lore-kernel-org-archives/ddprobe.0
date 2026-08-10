Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D97E314D37
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786392034; cv=none; b=bwaTZjNhRw2IOXWAXcraud195ARRr8vjyIa/moOSITck41OX6M8z1qW/Fi0UKd4PI6MbZCmSWThASX8g131bTurTAcqxV7tzHSGBqULws9/MaTFY/1Qg/ipV8wnftfaRRjfd4NvwLeFRisyVXE70/lsLx2y0K3EojzRo4RjWTlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786392034; c=relaxed/simple;
	bh=NCRKCJyiSZvApqDaGh2FiDDwuJKHj+UIeSA5oZLQSRI=;
	h=To:Subject:From:Message-Id:Date; b=PRhWVQQlk2uAhtUDwYX5tqc4EcdEV1f1N5gat5gHFHXTABB/usmnZMLojEDMixvuQfs2S8iwR4YsdNHVeN+cqVfTyIK0h1tFWvUizxOK7dwd44TzRIHIORWkub1zkNmGTAgOmx8T78kgoxbePf0TClrMjdZ0xgsZDwV9EWzxDuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=An9hayie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="An9hayie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD7AC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786392033;
	bh=NCRKCJyiSZvApqDaGh2FiDDwuJKHj+UIeSA5oZLQSRI=;
	h=To:Subject:From:Date:From;
	b=An9hayie5V5ZSHaIPwQ6PAm5b5f3s4dl/tWqoQt9zmhd6O8kA0SdQWe0sCIsv/oRp
	 RnaHPSikc1jgODb4nXId/D+chDLpkvrrm82KLq9h0xLrlRtVYXTk2Pmg4RWqPf+nHm
	 jo0GjRRtE1yKqNNJttkFUPP+mklenoOVVdQXymQLM1nk601VLaJvkzzgegJMyKEwks
	 VBuN++iGmjlDUB9BRGgnpBJDNosxu1KL/SMho1EAPbDmyxrXqIv6d09vLwRhd6uVrA
	 MclyCDTCGgmMcrZvD/4fMMmPYkb8RglwIsRIF3bolKnmS91HZk+SZpMqq10NZou59y
	 eTrbXr+HP+2Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89A7C5B567
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639203368.22882.3188620569749619618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01b8b24615df802a8674fc301e370979fa02b0cd3f4f2296db856c632924bec
Date: Mon, 10 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786392033
