Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2444535CBC3
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763011794; cv=none; b=uR0jrmISyBg5SmTKMV5TN4LkWkRJSbH1wsNXhQ4T+hMC1MSPpGrkigrPQBK78jrdhJ6gaKUuPpX8dXpwzC3l4GdltspsV9dichJbU+fZZ4QoVvsbB/u1/DKjFK9EcJBYeTuT6a/0bFFuBKNXXWddDikXET7ye8Vlq90Vk3QN9Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763011794; c=relaxed/simple;
	bh=lamMoeewQF/376pr/aQvykee6WItpqbFacXvteTfHHA=;
	h=To:Subject:From:Message-Id:Date; b=o36Iwk7CW2qBQG80uFgn4/Mccj8fDMbpgmj9z19gBGr4yt23gqCZmnmtMVPF5YiGTCEYPMOJZAJrKwil/lF8HJkpioipeP24J1hH2JXmTigRS0YsI0nCXriiJYR7nA6H7FJcRe948vnc4qXA5/5POqNokeOHjRo2nQ8LKOb8vKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuuxaCEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuuxaCEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF1CC113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763011793;
	bh=lamMoeewQF/376pr/aQvykee6WItpqbFacXvteTfHHA=;
	h=To:Subject:From:Date:From;
	b=WuuxaCEV5pztm6r11LrGDhPQ3i/Eheyyzcg9CFeoPgcsMBr+N7QDBbAJk1XBM2JbC
	 voFZjbY7Rqs34leTAi7NSc5/gmyHfCVGMNOzwxrtr1KGafKswk/ag2EXN0Qd0qHrh6
	 6GzXiGIj7SOJvVIC3oqbSjKxLeGe+V+8I9vCHS+tHte4QBuApM+fwhNXoeLqDhcg0i
	 WBhHgUYgPeNkiIayRorVMAuLz7+zLkIksnj1kehRLtgwuSnPDTyzGQnobES3Mu28J1
	 PWju0xSTCkaKomSqUZ8yDUiNoFOB/YS/lxi7VZPZHilmmNKRZ9lyJIhB0K0IY1EN3X
	 s8vtM18MXCCLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F71DCCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176301179357.11601.15896843225709275711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4a763b2a48c6653b0fef854ff13bf7d0062b02ee27977c385e21d8a6f95de1
Date: Thu, 13 Nov 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763011793
