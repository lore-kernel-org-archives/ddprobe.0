Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1100665C
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706326697; cv=none; b=VyBnyhyd9courhMoASYZMA3SM2v5o2f30rHAs4s+0Mq43sBs/E97t7e06kQ/KZL8gHoqs39WmxTocB6kf3gwo1plxz/YwRKkdLLDg7Ogs11ZFFh424ZyyP8Vt3/v6lzyleiuYZw2zq3unkvKIoHjebhcitfwUxq91xE9Mit2Nog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706326697; c=relaxed/simple;
	bh=a177j9Jbb85CNwoEsYRm8Z9BOPXKkk4KHLoNplXEMU8=;
	h=To:Subject:From:Message-Id:Date; b=a8wvs4raMGp6JJTphfQ0Qa8sN9r6947+Idje4XW/craKM/tBImJZ7q8RjCPJeulMm2PtaPBab31MJNc56ucDPRK6JPtZyrwRQOHoB2ZvxngPEpZxKtG9kXAwu4tt7NWEQz+KlPqbgBi+qPl0hs0UPU6bo68b3nXYHW9wRa+/dlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnEcNVIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnEcNVIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79CFBC433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706326696;
	bh=a177j9Jbb85CNwoEsYRm8Z9BOPXKkk4KHLoNplXEMU8=;
	h=To:Subject:From:Date:From;
	b=tnEcNVIkdCTqmwqO3EOxKJ9SdXS25pGoqzMjl9reYQeu0R79AZJvQNwRdaDXuLby2
	 H/0fSzUj5K6H/CQWMW6iyoGfIx2cOsk8SVC9LkR8DXDJc4WyCcxrnVc6EznbXzjgSv
	 ZcLScSUmlVmIxwSbkit6Enx+6+K3hL3ob03ng3k/xcU798AdHo640oILME1Yhj5T1m
	 36WQ2uUisVhiZdUWV0sTRs8Bc1YFc/fPuT21ilGjJaB3r15XhzzDmVNjbYHf322QJW
	 Tl3L8D4OKWrv3vflCgyqoRELDGXfaL1VgQEq+A7tj9Imk7ir8cn9llIupiczh7oMoP
	 kao1EuOqUPLAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61702C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170632669637.13228.11860194180609545062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981c7dd18f3384b320a516a759317642dacd7611d6aaadc28b971cf842c81836
Date: Sat, 27 Jan 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706326696
