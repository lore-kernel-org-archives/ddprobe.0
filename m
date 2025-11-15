Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDF81D5ACE
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763170194; cv=none; b=ntcwwS0u5NJjsqv36RWWQ1U01ta2bZ7iHaEASGNdfFWN5pGEP8tve8eiC4JwXC6uu/eUIW9tlUPu46P5FUnCd55D36j/X4r5s4wfMWdXFLuMZ1tBspEVohTObvNflVPxKttLxLl38GIqflmXNwTGGLcj0g+k+F90LGKyhUzyNXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763170194; c=relaxed/simple;
	bh=aRE756AmHtHZu8vPkFIJdf1WJZ0vTlPUKkhOQhIvTL8=;
	h=To:Subject:From:Message-Id:Date; b=Bk1Myb9eU+df7hY+z941CwEy4Ts6nXAyORQLCcNVAUJwxq/6u7rQ/hRPU0ktP/vB2Tfe5jq3MOFThUjxxTvEU/S9vrbDBBJQt+twx/od43/+gFXMqI6Cjh0mnsprSUlhmRjoaPYU8p+h/ka68F/Fs+tXAp5zzdp7EyyNa6TLn7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5vJ68y2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5vJ68y2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFBE4C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763170193;
	bh=aRE756AmHtHZu8vPkFIJdf1WJZ0vTlPUKkhOQhIvTL8=;
	h=To:Subject:From:Date:From;
	b=r5vJ68y2S24Rvpe9/6Euao0DmQ+NKLCZEs+pIBautmW7PjuH4a+5LQi2sXVCW6DHV
	 4bqE6BwQGWqZ3JniixcmjtkKymiLRF+inp8kD0OMvbR03VadsGcZ06icyjOqp/8aO+
	 /IUGUfpRqdJRpBF4eBVzV8Qp/FKflD+6BkhCwLU833n20a/sy4K3NquSgq+ZBQI8ta
	 U2EzsyrgnxC+Qo6KghzAyrR+A8Kl6bqMjFsFnwx8yif3Jfd/Hg60HrRg+tZamDgrAz
	 +yZzKUpgW6joXPgv+Ih1tdnLV6JZgOBJ13jWF+syMAn9AESSnhdQrADe1R5r4Es7ZU
	 xIt+9nWlX0lKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4C7CE8D7A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317019362.10397.6706711210825735505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5853bd0604ad47541430995de56b5896c52b68c0ac2f8fe95acfb4f8ec9f8f77
Date: Sat, 15 Nov 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763170193
