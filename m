Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DFB8003B
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 10:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713524363; cv=none; b=usFHqZhW/H8miPUMau++Bsi4bzxRYOfUUJr+dsjiTaVgDFs82//pdxNBTywzwGs4Gp8s4gBhFpgzfptk7VG0zhCaw/Mzd5w+DSnTFNoblnRIJX+FOnA4VK734DrcKjQzpcS5nw59n4MLDZh6JctGDXrG6q8sAPIJWi97MrwNAOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713524363; c=relaxed/simple;
	bh=pjNzaZeRW6KJINr+j1IgZzlk0q7tNJfCBKSbtY1FM00=;
	h=To:Subject:From:Message-Id:Date; b=Bg4Zbtjk+pxafPc5rIErOSdepO+Fi+YygL3CNgqGF+UKLAhlvOwAfJOJ3BYd9I1fe+RfoisplJS81jmuPRqfoHJZxe8yyyoVKmooBj27Qz60XaWH5k12BIlrn4iIiy+FpMYx7KuAmqEzCgXVsCs5UD0Z4a8skz2yAPV49gj9wtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAEEVEAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAEEVEAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F09DFC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 10:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713524363;
	bh=pjNzaZeRW6KJINr+j1IgZzlk0q7tNJfCBKSbtY1FM00=;
	h=To:Subject:From:Date:From;
	b=vAEEVEAoGKafSqL7FM3qzsf5OpmdH/7i7Ha4ntKVVzwdxWM3cpNMrKQjXm+ujHji5
	 JIwV9RA7vxjkCNlzG6NZa2RWuaxc0YGthYDCNACEHCfsHqJ7JesKT4p/nw21gWxRx3
	 Y0BMmgjWrya8Lkj67IvwyLLp2gB4HUNffny6CZXyRnv15bFEc3cLO3M/m8YtSS7JJR
	 a8TjHE/l2BItPa6x7n+MDxhCe9eu8VApCOTXM3asi/MeSW4vc73q6ilshL9dBSk8DS
	 4DQ1tD12IGKMyHrc84kJPbWMLL9mDABBxHk1ma8uW7NRPoDtPsDV7pIKFTGq+wqrJV
	 rppk3f12sLswQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB583C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 10:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171352436288.19309.6247248438072530093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f80956ded6130bb9ef16a760636d62dbced9f4543d9c18316e7dc4c7005146
Date: Fri, 19 Apr 2024 10:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713524362
