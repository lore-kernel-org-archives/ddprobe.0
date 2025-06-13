Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CED9444
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749826194; cv=none; b=P63/t0ugSOxVEVmpCTe3x8E24rCUFGNPpfVk9b3NK7ESqBgkgJ+xF1+yFZGpFmnIetaywLzJbaymi4lmtDCqZSzi12jKFbvTWl7QMQsjh+uNX3neIm3W3xTiWkzOZDwSrapIfzFUKpBSsMuAb5dBMZr2nt2RxeuhpAszztpcRIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749826194; c=relaxed/simple;
	bh=Xp5YMyDfFXjjFmB8p9SiJrDF4NTLPduYFhCo18p//LA=;
	h=To:Subject:From:Message-Id:Date; b=CIWsqE3KoTV3altK5WFNEViUaYADwoN2/S0MGPjBd1KmLMYYhsqcTYO3MqOdz9vnQmCTDOI5+AEkPLYtNihTkuJRb9AtJda/lpknqnZxN4vgLLZ7T/gmk78pT894UZtulDCPKDZzzgTS0/hR2pQ1eZx8qLDSZpPiL1oJweI/vbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaZN7s5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaZN7s5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ACDC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749826193;
	bh=Xp5YMyDfFXjjFmB8p9SiJrDF4NTLPduYFhCo18p//LA=;
	h=To:Subject:From:Date:From;
	b=uaZN7s5zNidCNy3G17Y6gjFYrxNfJ+AZJXCfXYVkSeMMVHzUMog4BergwRX4oAxue
	 GSyIMeeUi+4V/0mpA46Xdep6uCJGhlH+wkCwna2YcsJXLxPQwr9bwI9f39Ho2WGJCC
	 U6WvJtz7X6vGGgXUroGEiuE/UdIhuKHzjhy9oPInRxZjm8UHhd/2F8DNW9xRelYtZ6
	 ZnsoolFFzaq+jFJyztjnXC9tAgM0XzdkEqRMK9FLSjpQYbnwHGqK7iuUNRH9sQj6bK
	 D9dPzL5IU9FkyRNUrPXkIurOfrFwMOLxdQoGjJJjGUO6BY+2U3rAe7/ydzQFZ39mod
	 BMfvtCaKSYzPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F326C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982619357.2634.1000731762422251619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2464cc7127e52f8adf19afa91c48c75cd369ebda41e5bed0ca886631f979354
Date: Fri, 13 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749826193
