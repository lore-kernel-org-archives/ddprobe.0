Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DC628F5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763280054; cv=none; b=Q3uDyE0G0xb7GhuCIwV469BRka1hW0UqNZNIj+7xC/OPDF2ksQLdIpRfZ/JYykJLPpuKMBu3c35Z0uvE/9tVJSg9ISYdmqa/GSHNbWNtucY9Kc8c6wMw/Y5Vbw4cnQ3KBS0aW4RR+BIG0VKbm3eL75U/sUi6AhoJAEyw24OIs7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763280054; c=relaxed/simple;
	bh=l7mG9W23W0B45cpeAZHqxlC7FxGCkKkEXpLxwgjZ20E=;
	h=To:Subject:From:Message-Id:Date; b=uiPRAdccxlB8GfQX8/dAW5Gg/MkyZAddujncuVrRb9wUTCuOhdsMRJyy8xkJOd/G2Lvd76pDMHtdhZztvTu9F2hmeXF9ONxCpBnuxZXmN/0hq+30p5aS+f3aj0itAPVo8+VgBBGOCQx7u7q9M/skZLYY6iBMm+Bsdh3k07J9gPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYQGQaNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYQGQaNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A563FC116D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763280053;
	bh=l7mG9W23W0B45cpeAZHqxlC7FxGCkKkEXpLxwgjZ20E=;
	h=To:Subject:From:Date:From;
	b=SYQGQaNPlwUknizO53xrOq7pKw6Rt6s6FJks1JgLb1kaHvI18jm+D6n2BhPkwAano
	 Vv90sPvGtHYKD7xOEYghjD4dIfq0gdrt6W2sF746tknzxNh5wGo4DPuFFNqFvMENu5
	 wgaNXA2g2OEbPzVZTV6hBjlEKiUYyxiLPp0Zy8LnN2DQ8wYfvNB1vlCwAYH7VR4Vbw
	 Zy8LJ7amMSdkrYnT818L7yEwkQ4IR5CNTxPiT7mBa2Lfvs3RR7jhXgRw+ETNlagExX
	 M7wQiQv5WMasZRvFJHTPAszHKJjyf7IiKHIVpbp+Pe6RGyzGvAOiIjIh1lKRkgYCa0
	 /ngyMwk+yQNOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B85CEBF8A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328005361.24057.15872063723269675389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb47a7f2876f9a03974c8e4008a21e3ee5169425c9769a193c55bac6ac7d1b73
Date: Sun, 16 Nov 2025 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763280053
