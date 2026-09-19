Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A373333E360
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789817434; cv=none; b=p1ct4Vj4SZps8jNIipMkHQjX6/FDyq2Djv2xCXf5h6tS9Q9PDAssXgdyOW5I8bpI2gh6zJhTr0g/4UHCZhz/ZIhJepyEy0U9vnrjvqvm8tVVVTdG9ZIJP/cwKKq5Y0FBFdjb8lOBF3DzxNsOryH4hz1isQIjqK8cr1G+9HHhmSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789817434; c=relaxed/simple;
	bh=xtp2sZnba6CkBPRSBtthTukBYjhXKm1tBzU8BLzstmc=;
	h=To:Subject:From:Message-Id:Date; b=YSTnzW3Pfl3vGGy8IEHsc/l68Ktuxp9M7taO9ta0ihhtWTGqL4+PxxrLR6IYWLHWN1VIWLDQRpFBderVKbb1b6eAovCNeGE+5NVq3sNNqspUrLA/TYMUM0IXdhEMhRmydR3TkDv4bN6/2DyOKLO5QPf1mhmjojv9d0oaPi/g6Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4cGfA1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4cGfA1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30FEC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789817433;
	bh=xtp2sZnba6CkBPRSBtthTukBYjhXKm1tBzU8BLzstmc=;
	h=To:Subject:From:Date:From;
	b=t4cGfA1ydCSvSKG3ICMM4by2VcyfCIOWlRZPQb7ws1gkVFM5V3079a5v6Bt4MYGm9
	 b914vQPLwtNZTWPOca5nO9GwJyy1HOWG2M/SWF4LSi26h1vvP9ARLeRlXeaRfSKkdr
	 ihJvYecxfi5k7nDaqy20Apfk7Ky1TMgHzFGqYXU9+Up5Zg9gg50OFWaaRURpmyPdTA
	 /htwgugTufetBmhGzYMI0560w7zI1qEodO1PZKsXdi6ZieqKjPKN84F06km6CGq/s8
	 x0bUnku4ySmX0bVP9tF539pEWfMAISZYZcTNmMpMZJVFrOmouot6hIRZnscCcG6jR5
	 0s8q+E0tvoyTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09ABC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981743368.7821.16724147927238295679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c2a3128a0c905c307680fa054bc17fc173cf8fa7365029c1a49c342949ed94
Date: Sat, 19 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789817433
