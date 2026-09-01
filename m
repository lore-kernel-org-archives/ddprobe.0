Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A4341F35A
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788234634; cv=none; b=HF9O3XXqiwQ+TIZhq1D50uIso3346hMKet6LK4Sq0mpBxe7SkprF84gcujne1yNKJmZZqtgAtii5HJbdqZwJuRg+gYsLxvuF3iX1VKSy3wB2MRolB54gL8jVgUOeQdH1bK6KGpaCqvhm97kNCdVIbdD4j42BVCvQJIZykExGKW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788234634; c=relaxed/simple;
	bh=5PmVPv6ZOoHhBjIIPsz9F709RvbGHnat57v+mRSMPm0=;
	h=To:Subject:From:Message-Id:Date; b=JnzTdF9nVvWjv2yjT68uzdoCtkhDc2+GpwJZqVgiqh8JyqOxjc+4NTZBxT/eEC+bf7SNd3fuLV0ST8EXoK9gst12UT9frZKR4YVBOCiVxddbE8Cp/oxAAf7onOx+GSP/q0nxb7XS8RHLLF9qFWnnMJjITVeArJrFpGQjPntaAQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yvc0gal2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yvc0gal2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40A3C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788234633;
	bh=5PmVPv6ZOoHhBjIIPsz9F709RvbGHnat57v+mRSMPm0=;
	h=To:Subject:From:Date:From;
	b=Yvc0gal2vFNLK+rHNY/xu61ds6e+OI6tGpXjiq5LcTSOvPzAkyadtB1yC+ovnewlk
	 kp1Fz2g9NOS1sRxUiYDgWBZeEd/1KkIzQvz4BeAk/JQIDd/AEGIxtNPZIC3rx98EzR
	 aa1kpsi1x9LCDzNnDR5l4+HHvwmN8d9EbtYOovxGYYPW65eLd6c3zsQ8luxGJRZsii
	 PHUD5p2kDfItuA//56GVT4pL/n486sIDexgXvFTOirwncPrZPhmNQ2X/orHWnIadF7
	 o8CaxkKgj0iUgFbp+hYquJBTrclJqVIlQY/TT6xUMjB1Zg6VakI8purx2WBIJAMmP1
	 BR1eAf/EDoOnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3529C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823463372.23832.6627306794316732510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397490190684b0e359c7a376e15b6287bec9f623074e2f61a2dbc6869781c54b
Date: Tue, 01 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788234633
