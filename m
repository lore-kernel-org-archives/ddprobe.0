Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC14E15278E
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747251593; cv=none; b=pX7RAYBYpWgoUay2ks3rRCRxkaVWrkPYcGEUUnFTfusdEsnvz+GQL7Hk+5n+VmaKgwJspSDGwRr2MhsNm/4zIXyeegKwnBA8ZrgPYSN62ZHCV7ndmGOSPOwVEim5O60JJZ/xflPMl0hA3YkI4htmhupqGvBzheEmmzGcOVmnG68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747251593; c=relaxed/simple;
	bh=AtbCtaBsLJQHIGK2cxZiC3rbEtETHzcD1ORLHP1aQrU=;
	h=To:Subject:From:Message-Id:Date; b=BvwA/TviCGNebejyIwd8m51xZV82GwKp60SZ8T1LLQwyh/+J3gqCeujHo3Jkqsoz0ef2EVOLVWD9Cwmsa2iA1R6VYtj+fJLqmEy81EZdVUhfKo16fyRvh4W9ouYC1A3C+w3lUeegXocQG0RFpCNHLDjpwNCjlNtv4bVjzdVAv/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGxbO788; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGxbO788"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD3FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747251593;
	bh=AtbCtaBsLJQHIGK2cxZiC3rbEtETHzcD1ORLHP1aQrU=;
	h=To:Subject:From:Date:From;
	b=uGxbO788Br4T7YzaL7rVqbRc6WaND4EbZTSfBt8FZe9/PTNmtueyLeCtpy8u1E2mX
	 qXUU6d3jlPIfmx3yNmwFZ07wV+/Yktxr506zlcPb4iKkWYWQ71pnzCRKrXjvClklN0
	 p2qvdGjDCCOwO633+1yjwowejgkQV7IoQL5uDYNOpAoPzhH1+g4CKoagWtmyXwoVrN
	 GNnHpgZGoJOAgEJJeEGedC4A1N9lHLAlrfGIbDXctYcUzMIefyiQjg+EuS6mDEcI2z
	 jTxiSz6QpR+1d2gg3jc0xLWoY4XbADWbJQj2OV3plmQSqef4fQlVV9VaPdlZ9ZDOsw
	 D6o+cOKloZuGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F348C3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725159357.13495.11991426364126094077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f517519fdf97aec7fdfa6d25b62a01368ffa8b48e59b10c290efda5419fe755
Date: Wed, 14 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747251593
