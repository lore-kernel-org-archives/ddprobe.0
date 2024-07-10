Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5F21422CE
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 21:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720648643; cv=none; b=quU/oBMNFHcNaf/dT7XKmd7Sp/nxpfUzReLUS1s8H3mR1G+cVck9b/+hNJFPo4HjxHf6UVQ5ywRwWlSwVetW3RQcPT+jijK6G4SB0siaI7F5gv1iZmipKYghepXjb8WbJFBbpggY3t0JlXOk+t79V/n1DXwOnG5OqJZ/86nWc6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720648643; c=relaxed/simple;
	bh=5eGnbXLgLNTAvHLPOERMc8qo7q/LEHyOnOFO3Rvo8vI=;
	h=To:Subject:From:Message-Id:Date; b=ktzvNVSIA+vQhOvKb2zKfycrUaXjamBdzGNnQf6eCx4umGiglC7n3/s9KPOdRBvY3lsCGEHMNEvmHmXZ5MO9xW9quFOeZ/BeltSapRtKdYNfNJK2w80AxS3Y//MdvbvgDLSZkcy5rLeJvS3oxvjwhsoyeyvGyReP4KRpVOBJBW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J014nPVx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J014nPVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1140C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 21:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720648642;
	bh=5eGnbXLgLNTAvHLPOERMc8qo7q/LEHyOnOFO3Rvo8vI=;
	h=To:Subject:From:Date:From;
	b=J014nPVxtNd+YRis5nTiqHK8bzO6FPRgQDgGsm8eeDbWS70ndct1FkjKQXGe+KnqU
	 nXUmgi2O09qJ1FMs0wEA4BhJE5jI5J9Uz5JHgBUr+fmNW8I8r7OecuJyu4m3Qf000O
	 jWLEc0WCBfCpyVoFXqP6mDhUg2YroIqgB1LP9FqZuwNLJrbOTyXMGtNRM7Ng5DcJ7l
	 s7mgY3Pkq+YgMZ5HEC+v0Zh1YljtJV2vYO1YgcbrujMrx3OkVeiEwizFdQJjEVmE/j
	 AuSYknW7XY0FuHxmR1/LMDVKpFA/zjQjt1VMMn68ynmFMD1mx7G2bcC7/OcYdPRiPi
	 wsd1kGg52/M3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD69C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 21:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172064864283.14374.3609154164738926228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd2a9bb9f477194cfd6bcca604de46b23bd000ef3b0873b557caaab6880ad93
Date: Wed, 10 Jul 2024 21:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720648642
