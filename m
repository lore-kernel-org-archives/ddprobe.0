Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142C610942
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755234594; cv=none; b=QrGLVr6/ql96qSuwShP9lH1v+LC4PpRxkSPk6nPrLNhWKOy5ckyZ3njUkHLX4NMXMrSJMKXVZjlmGx+MskblsgnHQjagxq6zOTTpvum3icarptEW4icJCc59IQ+DN9HREU1q/kd5JHqjm1kI4n92RVn3Hl0zS91POIT1EotVP20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755234594; c=relaxed/simple;
	bh=ZdiRUa6XXtHCsHcDH2jsu+XqGEtgaN5lC0Tf4y4P7HI=;
	h=To:Subject:From:Message-Id:Date; b=JnqjAbuVFd0baIbDGVzoklA3fGSo/y8sIWQ4RIaxDBWnrcmUk517qAyrwU4143Yo7Wt4G4oF+mQokTx4RCf2pA5chTz3muGfvM+fpka6nBvnLmwMEdbjjd7pris2t6JhQoiFAKVrgUY/lqlbCf9kMzr1JkbL3AN66NAjYBZmoHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpabmsic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpabmsic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD52C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755234593;
	bh=ZdiRUa6XXtHCsHcDH2jsu+XqGEtgaN5lC0Tf4y4P7HI=;
	h=To:Subject:From:Date:From;
	b=fpabmsicnwJMGDPUu9p8Vs57shNzIcZQdRTGvGeC9Z4khJttnbWfgzsqwUf2gXclE
	 DyjMdQp6hvgCt2duwIkX2Sf4RvdMvJO7sYetin1WKLkfmOtjzpkbajmajDEbszx/aC
	 xBRVW0JSFOvH/KYShHqnZDp4X0aRsU83JytdNiEQ9uNJqNN4yRKoZmt/G+EREqaSP1
	 4zysJkE8z2W0kyJEyEa718iGobT0IwVCe1+oHIHUqhjtPEdGXvWcPkPBPsriRPpMVc
	 rpufvf5a0Vl9M3V/VbxiiBeAItrnrowJinuSqFuVyqN8uVF+knJyfzpM9Rfsht9jRb
	 7I7CTI6XjdTrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F4CA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523459357.32035.9914503122005892074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc6177bf0045e3a8ee5f7977d74fc2a27cf570c1995aacb91c8c17041bcdb3b
Date: Fri, 15 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755234593
