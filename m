Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD4A31E85C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780874674; cv=none; b=A2keeoda3XJCyURHWA/eQGlm+OjtQi2iE8r4r5jN3B6JvXEyK/EpjatsRgJOEBZTqVuDqJVU0B15gpfWGZ1njtNKfCyVTXXHCxkc8tNqNDMi622PWsbdb+RiEgG/coYL635PMtTGmFoSNaMptrJQkD0+AmScZ5mQUH9JVROXbvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780874674; c=relaxed/simple;
	bh=QWi2Di3uGVCUwagr+Sceu0W1Z2DPWosr/hiEOy/ZIDU=;
	h=To:Subject:From:Message-Id:Date; b=VuFhrO1GFPdXd9xmxU1MdtYCQf/aevbuFSK1vhDKgce7qFUoE+UbvWhkLuusHEC2KvQfqcHmPQs2E2+f0FO/vojWNos1EmwPm/p8g5D8KnIlGVA9sxnqhwHp64mHh1EAAN58pBXy1y+8HRc8gO4YHXNXjjwhmks9A2Wdq2wG61A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyQ/ey12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyQ/ey12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7E7C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780874673;
	bh=QWi2Di3uGVCUwagr+Sceu0W1Z2DPWosr/hiEOy/ZIDU=;
	h=To:Subject:From:Date:From;
	b=RyQ/ey12LKcly3gAr3En+04kqh12wWwepYatZBEnrmpW4FkCTlWzqf0B23qRlIq9O
	 TZ0yDRxGMpXscuC5rdxpH+CjkiXq9trR9BmXDPYlyyZjM1a/0WoEfdu/Y5gc15QDn6
	 i6i/7xv7wu/GiMrzN5zbLKarC1z2UidpVDRDdzN6CyY63F+wEeIv2gi7zTxnz2HoNm
	 KgtRwaeFr07MQv6t8QHxPjKpkI6tQ1UAe+FAFerfAXb/t9qVtyK7K1g2z5G4G60IiB
	 TfCNOIBzTaQR7L8Cmldwmzo10zku2kyDFNuV64H3+eM0Nlkw4GwjwF6EAXTpu46+Cp
	 q71RF/GobZrjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2217CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 23:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087467370.17688.10154307026906442135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a903db5385454492d1eee37ea4e2ef6ff6cfe14a3a167411e4b0a5b80e338507
Date: Sun, 07 Jun 2026 23:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780874673
