Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA15263F34
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777234054; cv=none; b=bG3NLOGFW5icWuRASEAguZOdXsDs6unKS5c6Hd/8m5A7qhw5PKItdHyvC1tE0jyBUkoOQCgM1vBv47g4yKf6UCgtZpX85QiaB+1DjvoR0IzTDakAQkxsCofNDmRFxZdw8MZNAdZFVLmJe5g16VJE9XaAWP4dS7UeaHfTfFNk4Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777234054; c=relaxed/simple;
	bh=YS6K9mJ03t33skcuZrke94Ox/ZPV1nefW+e69Tsr3C8=;
	h=To:Subject:From:Message-Id:Date; b=dY8at0R8zDqnMcqu+c5zXY1rzaC+MpKhu+S8BPoy6zsUURdN1R0YOZj0nn/xEKQlzAwsuROT903ZWpu2815sNUWG3zMtl+89MtNag2jx6Jhkc5W7ze2Zk9+gnXR6gJEfaly/b6MxUxNxvL6i1sy8AVv4N5RgTnNMmINVnCegndc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fcar2chi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fcar2chi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C118BC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777234053;
	bh=YS6K9mJ03t33skcuZrke94Ox/ZPV1nefW+e69Tsr3C8=;
	h=To:Subject:From:Date:From;
	b=Fcar2chigsepr+iIvt9xegVDnY+e4Ei+6QvGf/i9Hpj4qyKvUwo2NQZBq9fy80/+T
	 j719aMtAdLJuZ9aLOw2BXVKRI4uuY4EO64i1NXG0ya4GvWAimd3eOcKWlmmAuOND4Y
	 pP5iJmHefY7g6MWOuFwrK84RjL6IXdEzbIPSdsMQbeYTYqbi03eIzTuZ/8cZihMcXu
	 v9YKy+/nI4Slcro+2Oh5aFX7PufjoKnNmPqfIDacdWlfedL8OHWEzd3dYtf1Z+L5jo
	 4d8l7xyY1iqPJlquI7YrFHA6cq5xDD8hbkTwjyyhZAWfdzkNP6vYb1EPjENsGNSCxu
	 si0mAo7utSmnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAB1FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177723405368.10418.10770749430870853914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548bf1cf4a7adffc89e02e6c1f1cd84bb9dd0c0d17e564f3b0f089deec7a1d77
Date: Sun, 26 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777234053
