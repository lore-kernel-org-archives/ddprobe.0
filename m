Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182772E401
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761913194; cv=none; b=ajt2VDw56FOUqHJr8XmoMOPkVFsqhc/U+Qk1dliXdbNq7Qalik4T9A5EGMiroHbiM1B3++2yl41fshjVuGjMWcChv3UrgEjwehz48HHZIXRq4MUFEGUl6yW5DiHUMzmg5vc+wO12labKC4ja90Lqy7OcoL8MnuSUsDTSkUKeyzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761913194; c=relaxed/simple;
	bh=kSuZ/OieCzvANakaPcc0zExYJRS/7OWH2hG4PSprUyk=;
	h=To:Subject:From:Message-Id:Date; b=OV/Yf+WEXBmbELgwSWs8q3ftR60B0uiI1xAxQN3hm3eUXLvqBU3RStggMcG7FIQhaJjcxWeniS42m+emBa9v1JrjJuuG63jdCswH6O9/rGD8rfJ1aBKu86cbewpB9PNLc2JWKbBDt9g6Ottv1fTuOaDPUcthZM8e6x9NxKkPIvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQgrGQIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQgrGQIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D14C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761913193;
	bh=kSuZ/OieCzvANakaPcc0zExYJRS/7OWH2hG4PSprUyk=;
	h=To:Subject:From:Date:From;
	b=lQgrGQIj86uY2y5vINI15nrWgQwYGiIf+fpcFB/DzZAhoIsQsRiBREtexAEn/TQ/c
	 EHiuS3XKFfERwIUJG+wrFX4se1+JX/hC25dsHrQjPz1tgVCg6fAQ6GcxuHQFhOQmw2
	 4lGXyCt6YJJ7WsD8wmcl1DjpRvHcRMDkGwNrRj0D6xE01MSfyjMEErgQU8qqv2cspE
	 XwX6v3tQCpcf+migqaIo8bsaPqZwX2Dete8/V8vsdlF4cO8ZWObMcgOPZZdynjYshw
	 z+54LNmjJUgGd0H+v+UHmq4TPes8OGvo+p4DnHkahi3hnDRZGoIWgJNfj7r7Cf1JU+
	 uQg3QM5LdBCFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942C2CCF9FA
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191319359.23603.18236566561643358543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5579d652ce41f6bb63c6fe5523e6b53197d08402f68f681db83cf18c7258687c
Date: Fri, 31 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761913193
