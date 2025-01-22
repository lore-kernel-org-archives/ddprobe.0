Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E07F13A3ED
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737510954; cv=none; b=Ace+g6sB8iW1cRfGkpoXjt1cuRbm90gQ8RtRLNKq7dmAkbCNP6HqEanv4sOaWrrWf2n1VpZoVFCFqx6ONpqT0M0wgaUURURM6dGsk0EUKscgsmZ6PeKIxP7NNuKMV/2YTWFaGXH2ctWPxEXnUUoej/MA+uNGub8iwbeT+stejmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737510954; c=relaxed/simple;
	bh=lkO3EUN+M13qQ22o4SN9B3A8DnaXQ96l2hn7lp7/FM8=;
	h=To:Subject:From:Message-Id:Date; b=G9akrU4Pb2sfVb6B72qLwtSP+6KcPFDXr5IGQ3TqAX6ZHLRqKpZmGOzdzo0/p9EBbvP2ClI3/HvphJioAlDLfgaeib0sTEYPnJsv1Iam9qRetW1vy6QOl96ibq0gwK8xsDD0TgGXKrApe89rmTcYdURIccY6eH/4GhBZzadjTDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBHQvCv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBHQvCv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CF7C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737510953;
	bh=lkO3EUN+M13qQ22o4SN9B3A8DnaXQ96l2hn7lp7/FM8=;
	h=To:Subject:From:Date:From;
	b=XBHQvCv8x/bFn/phWXk/nqRoE531ineYx7SwXHh/5T0gFEGTQhDg1cxOD+i3ScIR9
	 1+nEF/gPS/3K4o77/Vz7BrRcR6gexnaTwUnqNHfVvyud1LQTyD7CpEdqIkEnwexg2m
	 bj3ZkmoGiavY/EbaRLifyJZRk/WsHXBsaUOTwqEcdu0BQO2p6uRTI6ITWN32ikUNV1
	 P5WePW4SbNJTxso5wjh0tSDgqI6/+pJ0E+6OOzsq048cQl1ZSJebUmR9OLlA+BF4CJ
	 xpXaBraX/YvE/mNxaoSPXGcSShklCbmJF9C3YESiJftKLcDSk58iJ7t+FES+MRN8lg
	 GWyvFEfavKw+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A76C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173751095358.17183.8975715534630675273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813206ab076bb7dcf33e4075bc1980e535b21c983a8e118769017903e562c357
Date: Wed, 22 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737510953
