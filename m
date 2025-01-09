Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC2936D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736385954; cv=none; b=qXecskF+p417tW4d7vY2WF3LAmlflGwPBeKJnJHIQjNiY0LgLluoA+UkbP4z+9IgAE44+jYsPCnIsFHWsE/7+EEYPN15O0kOkT6ZZP/WxVXXXaex4FDgo0UjlnE/r4YfAo1+muAJLkbZnhJN7uGwIlwOmj37Zj5sQCxvcruspQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736385954; c=relaxed/simple;
	bh=EgV9GU9iw75hLTzuq+3nZvWtgNKtDD375bw8tiqdiVE=;
	h=To:Subject:From:Message-Id:Date; b=nBX7SMlQ/lAqVwYZrG/F+OUS8QNGQ5Nt9sMp/y/jxJZIgTo7KnA9mDrA7STdbmDuScloQwQA5u+eEbVuspOuaP55V19r18yZSFwW80iADmS4HLxcYCDnpRU9ZdEwQlG/DE1DmLDkoSLqq3V6+Pglz1dtpMasno20sxRwZh/E3tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ul1nTTLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ul1nTTLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87ABC4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736385953;
	bh=EgV9GU9iw75hLTzuq+3nZvWtgNKtDD375bw8tiqdiVE=;
	h=To:Subject:From:Date:From;
	b=ul1nTTLPweeebQKnjAGZ1yXnntq3IJBrf4zrDOwG7/Ky5acl68WOWNKyUHy20ZQho
	 kY6iN3szYdTrd6Bi03IbpNHTTUpKnhfs3Q1JS74TFQyMfNa4Me4RsfhAwNNNBPyLdc
	 EfDkpoGJRAJ6oYqjE36HGhijYh6MaHJ5wT2m4rPCwYV44X4Eoy7XEA5CNFIkmh5VND
	 Ejy9H/HjgB2Zd1FsZXHq9udA7YVt0hjUZTuFpRp7tf+8Dq+6790HR7+F70yAu0HCCo
	 AfExX70k89aFme3dtwSSwj15ZhX5E1GPaNeDbS0xVwdcFC1YQOusREmyYFgaWB55Sb
	 eJHgsvDeC/mxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947D1E77188
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173638595359.26723.14014309696970013136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99291f83982361f06781e4303f99ef38acb362643fb227b58d0a4a103acd10b5
Date: Thu, 09 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736385953
