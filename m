Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528581DA23
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718832563; cv=none; b=Gs5gIbNTF0KFxYiCaaUuz3L3C79+4yOPVPzQDBPpCD/OpGDwq9208uOTtilCqPMBDmcNYFKjXddlI/KpWOvFpE7cGxl8kzsA+8go3IC4Wz9aRLeV6/TL0TJuHNdKDl6IZ6cmWsBQKKzw4QRnaQrAjNuAa4mDbeDGQFnnMiE4lWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718832563; c=relaxed/simple;
	bh=OXX8FsxeEfqkHUVfdzTRyyIYSbFoQXzq5hu2f9J/SLE=;
	h=To:Subject:From:Message-Id:Date; b=jo/oS4/zI/myCCD7JOX51EtKAz458bJtOnoLimZNHkybBiW8YVPvAyeFQSGBalMF3kJ9nkVZIgdWYhjY6TY9i1+t64RvwC755Y6lL1SBT6bC1LnmPUqFCiQ0d4joQNiWq4P+m7ixs3QggHaami0bTlYLDVGKRSQBhS6b4vF2ue4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M14Y0aKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M14Y0aKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E566CC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718832562;
	bh=OXX8FsxeEfqkHUVfdzTRyyIYSbFoQXzq5hu2f9J/SLE=;
	h=To:Subject:From:Date:From;
	b=M14Y0aKewDE0ITD3/y+GjJK6m5NySVeo7c+IC9Glo11cQgp6Q3wskWKCDl+KUwI7p
	 0iHpCfKFi9/xBj7SJlW6zhO6FmREKYh307Ji1ENRWeWbQRTqkycD6lT/dUsvn13D8X
	 Rv6HzehXmO9CpzS1vz03eFU1za8DjKYL/dO8L0tyHdY8+enOYyetifWUXUfiTsDRda
	 QSAtD2aO+ms6GhE1zjP/2dx5qdMiCCCy/u6R6JhdyxgDNs6ykGYtuU7Oz4j83Ewm+B
	 gupyZeBTG5TmkledcafxGE80C/CLOIf7Q2HvN0/RYAoBfl5txZkcVFm6fZOeBiO4ch
	 InZRdiF6bd4gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD14BC2BA1A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883256282.29932.15438145588234302518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d3375f734d1d8802b27795b22e1914aedfa5a0e821e2069b5bf1a5717869cc
Date: Wed, 19 Jun 2024 21:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718832562
