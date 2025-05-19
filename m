Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368EE26AA93
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747654194; cv=none; b=CC1hJk6nQQYqghd3HyOp5MenmtlpzTvAfH8kEW5lxAKH56/K6Qx1Ip+w06Itoe40zF60FYIZoN6UNr04lOgz35tV4TSVgNgK3vqJSuDxwrjGIyzi1vX1X/IiWrSRndONAvP+9nFa4rOX7AKicuD7GB+4ezNiREK2jCkLTwFKqro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747654194; c=relaxed/simple;
	bh=xycoo71GH/hjeuB5SyBQrYjOYcygrt18iwclhzhw+XQ=;
	h=To:Subject:From:Message-Id:Date; b=mNsymBuvzDJ2KgGHt+NVNMtDdpiAmUmg6R4SZhzJ0iUCVsW9SK8oGMo0y6T+qeVFoHFRZPfGOzp/v7UsQNnuDfpTltcE8BTkB1e+jNFUdxyvlW5YWpzh6yJTzZoRiOSRbWDdlhVxCiwBenSQIqZkWwG1+eb0p8Ew+VugVT6dmzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5qx956p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5qx956p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1938C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747654193;
	bh=xycoo71GH/hjeuB5SyBQrYjOYcygrt18iwclhzhw+XQ=;
	h=To:Subject:From:Date:From;
	b=s5qx956p0JOxyju/kUksxA4X2LYaMO8/zIdw4AIVQBBU3SyuX+dZgNADbtgf5DsRF
	 ch/S5PBiH2rrFRiVeDnFk58DbwHcp3Oo6KeAYRJff7EKmemWPLap+MKGVBhlJxE9+y
	 TJ3VhevWMI+iop8aNEoUEdx0UGrctJsclLcWZHGrIkIZjWpP/EDUlRW3sRzuGokkH9
	 vVTrVWiMX9euPL46zbI4ZjZNeVYhDx1yJZCRSNrR3xDPbDf1qv8jaUpgOSvUdBOFNE
	 5AxVXpQ84Qeg/ShkuHE0OhM7o7dCkeWcUyRFcojZy5F37xvafuy2/np4GwlwuTfAS8
	 efJpZCfVzERIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E94CC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765419357.1448.15342536560287884974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815ae79bfc4e3adcb7c7582928bef5463b1ac5edbd45a9449838397f0d6afad8
Date: Mon, 19 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747654193
