Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C32217D2
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 05:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716700463; cv=none; b=KD1WX6QO4uGpwMvn8mQ6TVq1hSJDA3aZZFJfK9/CVt7nQXz++f1bsFN+N7PrSETpsiLV/pol+ZV6VSVUBO/NcbEdBxTz0+XpjsPspnh6Bngy8mStWkO/etEqcyw/6EsQzP83DWzJs07wOawtZvH5ze8MGR/1KrEEMfKz8QN+rGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716700463; c=relaxed/simple;
	bh=61GlQw3Vhz57bnHOGzER5YdGrHkP1z/ikJ4jDKmyU2A=;
	h=To:Subject:From:Message-Id:Date; b=FTeqykb0gQR3mlys2BgoCj11uzJ2vPfgNLSxxtPBiyv/7lybn6iPAYy8GU8thjOqSWLOC453NAaB7sQK1rtrcbBeLtwlyy3fBzPjIp9EaTVE2iz6OkpyvRc6iDnMcnwe5z2zuOCINkl2aX2pYOqp4ABxWn3WjrqnRjutW8INhxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGX/ElRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGX/ElRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F08C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 05:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716700462;
	bh=61GlQw3Vhz57bnHOGzER5YdGrHkP1z/ikJ4jDKmyU2A=;
	h=To:Subject:From:Date:From;
	b=UGX/ElRPuvHbhCvGraE5DPhsHGdQIo2ARz6N1ptKFicObF6/MbAfOZIFEv8YqnJYH
	 YOFBhMGqK7XLI97qoZ54eJVxS2xkHDTptxTEBs6Pycp/IjMn+25PEvFCfhyBxa47cD
	 S9staRnB0Kiz/ijE2Gk5pPGhFakMDbvhhNFbbnablchC6MQT0khb/XUON5fFcToVUl
	 UvY47t2mt6uTvQKr1H8Ts9A8YRk9Fuo9pPAM75vPOvKDFwGwN4j4gs4aKVoTsnyn4y
	 0J2q9sEZv4TYkacy8pF4SNY3gfGhkz68+bGDaxxkMau3GOUJocWe/j71ZhSElK/gXm
	 dn0mhUQtov67A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBD9C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 05:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171670046275.2372.11713215757042716686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2ddd922383bb8bd27d5f86aefb2203ec1db853d62feb3d59d196b9b0cce0185
Date: Sun, 26 May 2024 05:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716700462
