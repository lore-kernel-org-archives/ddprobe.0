Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547BD47F79D
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789630834; cv=none; b=X+dBJafFuSAfKb3QUrIUgIaDgkf0NqK5Pm8hsEKu8cGqN+8izrF3wFzluxUsDNpGNqoXOYvP09n560sOB8uKF+iv4TntpOETebalhMOuoha7ThQLJw/4UZt3dCwSc1X0Ugk70ZHAChVeAyB9VEFpX3OAYHVAvUhPjKJGHWWuzvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789630834; c=relaxed/simple;
	bh=RytJvxbYMxpBosrzm2+JP+lwF0WSkYFZBxkyX/K2exg=;
	h=To:Subject:From:Message-Id:Date; b=dpYSilasZUum0nleSRfpETuayg6KwU3+1oyuN990YM83f8HgsL8w6tgvAiyHAj1EFXY6zLH2r4fmrYwgpD1V6p7V1JUdoxW0lHlJoexH/E8EApmkHfYAEkdLEvxd0axdv47wPOQleNCxyPdvtb5R0Fhg0VKKMxYWM8ezV66cg4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVdg6hTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVdg6hTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0CE3C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789630833;
	bh=RytJvxbYMxpBosrzm2+JP+lwF0WSkYFZBxkyX/K2exg=;
	h=To:Subject:From:Date:From;
	b=tVdg6hTUEyRABt/P1v0MwxrVH+Zup4DacrQSQo/57uFQM5kO/mfWRWFFMrFQ7bqwB
	 WtrkQl8ema827l1P+371XCF9Bn2JN6lBWo1IMHLOjBT9Rum182Qb0C7MUrULnieYQ0
	 zGl0l1Yl51GZ6BqjCWA6lOcvsGIAyfx1uwleNb0HiB29K1/hg05omoQxPICZK43meE
	 1/KaIHf4Q1UoMgUJh3ENhBHG54ibHFn93xlPvdKfiRNfgxq9QGqdJEDnQ+4rOGHDdv
	 dnmCIbvLrpTDCkBUAQgZVBcux9jaZM3JiJdCrwnCaARZKiIVN5uiSQTkuOmx99YQK7
	 uiXfqXVvVlb7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB49C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963083375.29165.11972575989363539617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd42eafa5b58491c2e6e69b2e27a6f091cac6a58faba83010d97ff2339474341
Date: Thu, 17 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789630833
