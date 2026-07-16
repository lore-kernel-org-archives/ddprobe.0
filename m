Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E49A40A932
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784197114; cv=none; b=Jdhocwbje7FbXwynW4kuTyKg/LpTVER9f9jXz0PLqFUvqmS5OfJzt4Kfv2GADPivAHGqd5m2dkj1fzajkmFZXV1RlqnzJ5BSkKjd0WKTsD89wr8JBlvLs/5+OmYG45rm4sA2nA6o3OKcshSc5dClwn3NW8sA9tjSPODxIerejOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784197114; c=relaxed/simple;
	bh=SGOPRgx8W8WnAhP2hJ8WLIQqgJ8CSmWcN6B7hm89/ho=;
	h=To:Subject:From:Message-Id:Date; b=ZgaNtROXTqkAfGoO7Lv/asidkDny9mLfG9YJV90teB/nkapM1jOlESpvcqhD4vnPwt7/DZ8UvciXb3urZySS3yx5lw0AFl/oNqpnwO9g1FmbsSvuaui3D6Ku3hnZ7RBb9C7Ohs1EZ/Ggqj+XzUwOiPH/2mOPunESaIbZi5BNWe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2sZFGWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2sZFGWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9EFEC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784197113;
	bh=SGOPRgx8W8WnAhP2hJ8WLIQqgJ8CSmWcN6B7hm89/ho=;
	h=To:Subject:From:Date:From;
	b=F2sZFGWEaV+jqaHpvklw9z2jrMMe6r2BevA0L2/ImRA8gEubTgCR5cQIe1CW0glcy
	 HX64P7XG6Gbpp20zWAgxYMZrkVpTRg1jPNn5gTrFS1/whkrn7elzVS1Tp5f37Q14Uu
	 CYbqpVg42Hf03/P2vh/ZX1UiyQuixjjmT6DOwIp36DDunmUydxQ/dwaOwb2pnMm34L
	 QkDR2FIMJMLNOHadyPpPWXGgRnzyt6ieYasDxKtpSG53uVUWIfxEIPIEfnl8MN4tXd
	 X/cFHtvPQK72exf8bEcJcMihXBXEW5ktW5l6ymKHDclQJSY2idLWzZ/upyxkQWdFM0
	 wPaa5j6Rn9NVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8037C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419711368.20414.11448521059328017819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0164602f17e1c334882d26b1acbec90eb3937a0af8f3b2e11bb20fc828d646ad
Date: Thu, 16 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784197113
