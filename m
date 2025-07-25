Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B88219E99F
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753452595; cv=none; b=DIx10TeHMRiOrDrbS3auqEwRH9Ai3nBRyXorEJAcaZm6N4HnWzNva1ZcuvvAcVdvSWtF9Bwas12k8JbQ5UedwuNsOupDguTVaTzzX7YIVgydZ2nBpkK9HePDmerdd6cg4QiGniVc40xH1a5tBNEpn7HwaCfsAevduHOpV/U+d80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753452595; c=relaxed/simple;
	bh=6RS/ekQO8pVKVyznR4oHyff6AY6+R9ucG7c27lL0NWc=;
	h=To:Subject:From:Message-Id:Date; b=gSNby38zS2lJOEyWcyKBVabJMpbmiyfchQlquKBkAiUUDRGf6VfDbExVUaNs4qcMWcYzQj6G4waX8QpZLltmpYbydFV26Sd3oqddVBA0RUy/Opde7MqdqHD915m8Kma2NG5cAnPnQzP7biw1CexiIISpyrRAgicujLujMwgtxa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cApDQJR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cApDQJR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A153BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753452593;
	bh=6RS/ekQO8pVKVyznR4oHyff6AY6+R9ucG7c27lL0NWc=;
	h=To:Subject:From:Date:From;
	b=cApDQJR+C/1zwXzYIQX2oodQTcU/lIqenDoL05ynrMINWhEuNKAJuWMsBQbJVqIUK
	 94mTxuJ1OFKSd43LKys9ayChDZ9MlsDtqk3sYzC0Q8lmiP3WeSA51+reZqqEWtzjjN
	 CN9lFLWR6CqVdTeIDBiTlA7lxLyENh1C0Q4BmDXCPVitVSLkaEcCzmIqumDhDeAuOx
	 AM5slAodrxHLzs/rwxAk1vDuT+tNqYSZe65BhgJporCxlmOSh2MdG2Ov08ezDXAnkh
	 uWIvwKGsqCqzK1gvXsY8dPyZTcZtdoCGKXa3NYVryLN8kUzMaFd/glbEfc98hwtKdj
	 S7dMW3SkYDSyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB21C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345259357.3020.1454415253082167639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deef00ec43711a99cc5e72ed4ed929dfd2ec11f10048d85b884580bf26f31368
Date: Fri, 25 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753452593
