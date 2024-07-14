Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7516C2572
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 15:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720969223; cv=none; b=ld+SyzurNCqFT4hKJ8qjBJawKgG3X2tHCvO4zUNbVOzyzuwbhLshjihehExxdZzmdJ5Sh1Tz4ng9aLCWTfFSJj3NM4PwpJeC64o9irq8Pplu8RDUZBygHAN/mAWLHmA+Nvm/jm4ag0R9e4GHNxPcIzp3prter1fvjJzs43nkHBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720969223; c=relaxed/simple;
	bh=7k1qhpIjjABTd8tBgm7ds/fWaXpf/BUlDbsV9vYCv1U=;
	h=To:Subject:From:Message-Id:Date; b=hK+B/Z2fkoggGfscEmHnYV2PJX6EfLIAq6Draq0C0catplBrkNZoM5vMJUsDlHTf7FIR/QwbyBRYcZvieCTbRL6yjFg7BbBz1zRugXrAS03VbNirgKGjBnyf6CE6gx+wEstSIXHbXqMlpsSWejQ/b+Ad2LVZ2zI/zMCe1fIikvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6omYOPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6omYOPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA124C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 15:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720969222;
	bh=7k1qhpIjjABTd8tBgm7ds/fWaXpf/BUlDbsV9vYCv1U=;
	h=To:Subject:From:Date:From;
	b=P6omYOPeEmYD9VWm+kOKTLryCEaeXbWnNznbHFCLwk26hesjNNKE8hPHbEaSQGRWg
	 7l6jt/zjos9Vs/LNjRNoShxY6zDab3YvL6PKq/uXrDb9vYIyIkNy9exADHzwdkaHhb
	 3Nt06Lx0Qgw91wV/rj0hC428O+ROBzPRWu0ZAMD4kO/WfkHIVTayZ3GGUTEke4aWyM
	 eQArFkztbROkPOkCBbCtVJySLFbEwxuYAPpuBqXHBquV1M5COxYzFPAKd+bjPTiSFU
	 UvFfChndntFGTFS60yEgZ9UwxPUYriaRHhGIqfSenbOF8KkxXQk6TFrZdw+IN7L5SD
	 ka5921S8P7peA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D15E4C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 15:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172096922280.24399.16690072003525536614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02af025578537595ef8f6fce3dd2d76ae1481f34848f1c8c7375b2e81bc0fb75
Date: Sun, 14 Jul 2024 15:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720969222
