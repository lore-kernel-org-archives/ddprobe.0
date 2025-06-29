Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274C323CE
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751229594; cv=none; b=AAqc8hP4AaaRE70uAbm2AMNcwLJmohhC/Gm26qYLcNXDKJ57zUqs8mPVQSmjZHM4cZoZVyu54QzHSqinj+sj2e7iPOoaitgHXPSoukpfK0qTFhlnMVbZhh7S3gI9kgX0f2+c7f8UwTpFuBUSCDILhqcOEidk7KZbll6Wh+ELpcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751229594; c=relaxed/simple;
	bh=oKQ1vWYkH/w2SUo7anoxBTjX3SsEXfxaoSFAZsZVRX0=;
	h=To:Subject:From:Message-Id:Date; b=eYz8qXCJvtJWu22GUZy53QY/rXs4eqJulJRySya8BENuJFw0DFLcTmH+D++pOFvi/I4ucyjKDtkptUOkmWcKoWg3OFZM5RX3vgEEXgqLwV6iLEYXHeyfqWZFCrIdr9NGEa1QWTYbu3bjOWAnKxOGdPLSAc1AAfmfgFj5Q19jP24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsgHE/Wi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsgHE/Wi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A688AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751229593;
	bh=oKQ1vWYkH/w2SUo7anoxBTjX3SsEXfxaoSFAZsZVRX0=;
	h=To:Subject:From:Date:From;
	b=NsgHE/Winsh1iMQBRjeYLbvhgv8ME40vge5pbf/l00vAzVmrTIW6WpRs2mEavlWvT
	 PeNAar3F/Jf9IioKsYU4NYHGXzbTSMSdFfbxxdllDQYoxrxciytJ070/MVCW5V2oDn
	 lHj4xjEcJjYzPbEhhwG7rfayxetyXWXwCgMLCAxCTkoCGwfEAszQUpHRvjWhabkgvF
	 zcxmiUOXM/bzKKMnRHYsw5GUPjSn/f4REoWeRcvVyLfqmD1LJ3z0u25AHUw5D3lvhz
	 CG6YSQhvnI8n2BD+FL+TK0Hmt8lHP5vuXq6QMAJ5BR2RhkADenWrBs1aGz8hmRJB8a
	 vTxWhx7Eh+z1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945F5C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122959357.32097.7753274202813072484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a59abcd950a948512e485528857bb15efaa0b41ce073587bc999db852ea194
Date: Sun, 29 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751229593
