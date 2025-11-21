Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBD0270557
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763758914; cv=none; b=hjPRiHdXBh9RLckhyscKFW+Pz2S+JQuTEZUIeUyZBL1RAe6QHDVyImHfZZ0MFtQC8b/GoE31qcr8Ltoe3jjUKM6zmFbEaGKk0qlxrhes6kcBUqlzkl5eMQ80rP+lN8XTpFTHSjgp8WuZFRecJ1Je05EvlkY+s+UcG7GjtaaWjbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763758914; c=relaxed/simple;
	bh=xh6CPvgFsiBlJvnqNvO+qmdT2wcx5b16E5YHuMdBmiU=;
	h=To:Subject:From:Message-Id:Date; b=eeLdlGGW2YesHD/WhnRz/BN2DDZZC4xuXON1446/yym6XBXBm/sbtxsLKjLD6WS5+/bWw2BTXigdESjzmZefVft5YLwEoHELMQwIyssqmfxkdM3yjyEJvbAw/9PF7EsPN9YmdpD0uYPyYx3SOMGVB6flX1uLOdNC4us045Nx/B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iz4sCqPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iz4sCqPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA938C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763758913;
	bh=xh6CPvgFsiBlJvnqNvO+qmdT2wcx5b16E5YHuMdBmiU=;
	h=To:Subject:From:Date:From;
	b=Iz4sCqPP+fPDAzNv215W6ITNZxECSBkxEB35B+uwYb6rfS779EV3K3kBps577Z+qH
	 DmmlJZTzca0xP4Pm+k48+nyeY/miZZ/B1YALX/ZThE986+USRMgAo15DAzIZi9OSvy
	 kYcstrDw1PGvzJa0brUF9VIdAYjTWRKnlRoYBiSZckZ4cTbjF8hgDZQJL+fQpPfqpc
	 hzWNBEODRJu9e8OMWdJG0j4Kq8lFwtfSEvDZn6P08MIfYMZBW0ktSwnCeTKi0GBnAE
	 gCa17Y4B4QSda6MyheBT1bfXKBuUIwpVq5gBtMWppwaiktxtflIXhS5MGCWClx/rfq
	 ++VvJrG7hRi5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95901CFC281
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375891358.12674.15272566936864921022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c70f0c791ae73d743c19f32c33f90ffe89c44e851b8d5ef507b59510a37160f
Date: Fri, 21 Nov 2025 21:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763758913
