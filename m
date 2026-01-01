Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192D0217F53
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767302034; cv=none; b=To081COX9pjXmhSw1pERHiVVey/BoTNK+L3YslhJRrtWz1Y7ma/oigI8RdI9kqrTR+O3pf/IsmU2oUNfX8xWNw3Ux717g0pM8+70jykAQfH3sazXmiUJHyNfKH23oo47nWtToXQ6PjLwRclBUR64pymmFEw76HQt4ML2np7BXaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767302034; c=relaxed/simple;
	bh=35c91Kl1iXniqvtt75T92XZWpQC9Frh+ChHxiRrHOsg=;
	h=To:Subject:From:Message-Id:Date; b=qJT3vlCj7f+YghKoAFHqdJhzAKQ1UnXuVNztAMV/X7e74NZwVZIs951vy11RYtbNVXCCzzPFEKNTGZqP8VBW1yRQh1v3ElPrZnYwsps653ANVzUC/zhQ9Fm72WWuuu0oET4i7ocKNps/lJD+w1lN24FfJC6kX0IJrs2JG9v5d6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKg5xEty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKg5xEty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DFCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767302033;
	bh=35c91Kl1iXniqvtt75T92XZWpQC9Frh+ChHxiRrHOsg=;
	h=To:Subject:From:Date:From;
	b=aKg5xEty+xPR4VDwjm1c38YVtgCnp5eZhzaYCHK05KihVT25BDm+l5Oylq0lUfxCd
	 CIzCX3yWWOiE97r4gvRDL2NW80/H5brNqbRmDbWD3b+KB+5khJJ+wO+I+rw/Qv91c0
	 P1h9aS1v69I6qVa2bxFs1dRAFhsB45+wqOFeDOJTwvPTK2m0geFO8HzrQ1sf4jCxNX
	 ThpK2aJQs97fkT/m0Tyq/fpTN48Q0HgSPErcc4sY2Jj1Hb57jfcITYkMooAokX5ZkX
	 kmKpl6HpcSfNlSi2XVF7Co6gUIW0BWaav68/K3hR8SYUwTFKGjD1cc/gwPqCspYhwU
	 0VzYstzeVBtDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93550EEE25C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730203358.6845.5232329195857422339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e42feac7cf7fb5aaa25cf67646f75cfcefa855f828e4341ef6eb97b8492de34
Date: Thu, 01 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767302033
