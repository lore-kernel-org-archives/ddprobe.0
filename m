Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FADB208D0
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783187914; cv=none; b=VuErc9jxnbmvGrNoaZDsac9PdNA5YCIi186Yjqfx8XXBBvdj1yARlArKWyEkYefoB0mIxNlB4JS5Ro7hzvjFeYXVdl/wR16ndHfOMAkREEuK6a1RuFcyJPXq0V1b8BTYgp9AL9CivSJ+Je/zqI+b6hJcTOvwalYvs6MdAu01zEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783187914; c=relaxed/simple;
	bh=gW6w4NrqQ2tJO3ywLU8ppuJMVwwFtE8UfbV9bcFf6k8=;
	h=To:Subject:From:Message-Id:Date; b=uAyWSA4dMkL1YqgeFTZZ7stq2yEUu/fcm74PX+UlN0+jWh2s/dGmJjrzN2Iu+isADPR7z11YHUsqcGm7whBmeyfJEtWmjrDuS3fDfPIuZqplpiYy1oWCFdscBMmdt3D7D+iG3OzEj50tLqUwQofdps5/0IPYLEtGXYSkfx3PKnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XB/u5ONZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XB/u5ONZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFA6C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783187913;
	bh=gW6w4NrqQ2tJO3ywLU8ppuJMVwwFtE8UfbV9bcFf6k8=;
	h=To:Subject:From:Date:From;
	b=XB/u5ONZMd8rKaRVAj1v4KaaatAgE9rfYnSNIbeL+j9WZi305ef9fcNLL05TJfR4S
	 Dub+gJFmaBGA90dTwzPcm6X02pRF6eFbg9bQ59+D3xr55p1mWMwCMF9OCTo/c5/vCa
	 UyYr0w1BzJjKjw+JswaNU0Nj+47LMsY/5LBT9ij1C1K89QH4FVXleHgS413V6wXM5N
	 iKfFJ31ASC58mOZOMc9v9bQXz4V0IkZ16zEq24aN+Xj0oU+Z5+f608cU95XJV6Blv7
	 vRX/2zV31wvsbwGnvBZNOYM8BlCwtOF96VDkghwIYYBelLL5dc1bo2smCc90hwFXnk
	 AB+vvcWhpV5AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9FCC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318791368.13740.15960083779917983843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 732d362d0d3a650c400aad263bc1cd519ec45b692f82e22382a06f41fe817d55
Date: Sat, 04 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783187913
