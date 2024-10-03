Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D3313D8AC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727952354; cv=none; b=U2lixNCN6+K4XStWkcdKUZir96do0QqI0rvnzhmE1IlOY7SSrzg6cmnkFrvWBwFLjDgbiwLyvEUEzV+5gLHpD5Vy8mYu6OTo2SxSH/OzKLefT9uFh6sHD6OK36jNyAzJi/jrn8cIZtWkNMKMX27mC5Ff9EtZ4iQdq6OnrGXbn/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727952354; c=relaxed/simple;
	bh=l3CXr32ZPDonVQNS697MwDe4FXG3/TrOMo6sN6zkByc=;
	h=To:Subject:From:Message-Id:Date; b=smWmaeXLvOBYtz/j8L/Xze7Xen2vEEKs+NBwwVwOT0pzgcgLaqS2uJdljFoSqWSdo1X+wPPc2isAah4n5wtwT1E9lLWRVRCzI6gdYSBqLk4M80gbk4ptYgeqhtzctYSIi/dRJzPzpAd2SeJ9BvMgAv5UCzyJRMR//R4XAUtDfX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6yrHqq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6yrHqq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE25CC4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727952353;
	bh=l3CXr32ZPDonVQNS697MwDe4FXG3/TrOMo6sN6zkByc=;
	h=To:Subject:From:Date:From;
	b=h6yrHqq6zvVuD1edX7J4jFvi9nLZB63hYzLd8lg3CDB3C+GELj6AMyonct86GPTCw
	 IdGDRrvRb2blmKyNCn74Ke63RT9c1JHSlinUN2EWIM2AaLlJEtaWneBZCcHzwg7X4m
	 X7aO2tJIdiKDN4BjWNMCo0Z35OwdtdMFWIkSkn23fNUSOiLGYJBzUImZhzK1yfrAJr
	 SlUAdaNXBJ+ExyebqXgN+w5Q1k8Pj9nvr50SxIEb2EFnKvZWdb2cZg/nKwsJyuvMzh
	 4+6FjZSDwTYFm2VipIEGmbB37hE9+vmCaYCccbe8ZJvW/zEYvX2NfkbalSZb2zfX6U
	 QUdLyl3a+Mo4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98297CF857A
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172795235361.9980.14956650663741579772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7304495b34c10ea563debc740f248420e7c404f962a218337191ab3474988fc
Date: Thu, 03 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727952353
