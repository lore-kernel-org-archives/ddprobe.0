Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233881A76DA
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736326554; cv=none; b=mTocM9KzxPAn/V56VkR2qYnm98NOgprzOQHIyUaixqcQf3aWKIHhWMH9HYTi4e31otatEz8arrFwpPI/Akn+V4OUXlUhklLfPmHRZjbd7IpFOF3e6UdPcFRpl2ox+M45oBMqmzuzEMnuUWPKOKEF3hv2z7Qn8wUzsOnQqgzBg5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736326554; c=relaxed/simple;
	bh=WhPTLthzsOmuO0n/wGjoSGzbAC/Ra61D0gD2RgNeb2k=;
	h=To:Subject:From:Message-Id:Date; b=nUO2/q0rQEN6wPnaNpUm9oTYqe1gMmVXxJszGQIvFoOsmjqzqsX8fA49FmWBDfivHzIAGxgskL/y53eDg6a4v8YXMyWP89sEwQZ/RUuifnijZ0dc2OD8rvd6KdRaOOt/jHplsJdq6OefMNRHYUsg5oPqv2ZQ0HP+HBCg3QSvMMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFOLtv0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFOLtv0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA544C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736326553;
	bh=WhPTLthzsOmuO0n/wGjoSGzbAC/Ra61D0gD2RgNeb2k=;
	h=To:Subject:From:Date:From;
	b=HFOLtv0Uq+2SMAk4d+V7lL54zSdmsVlLU6qINjcmjz/AG6hAd6DW1y1PSslAsnvF9
	 0CvBsSciRx1qNtKLGi1ZpmhGtPUytWtHJFRR0zCYgD63C4kQ3fogEuFyKcTAbnrhXQ
	 YoiMTlci4latcRoD41D+2d29u8vatdNpXffvnDPW4JcU4eJZWqgpBLbVrtc4MTOQ4z
	 G0SSNuN/GV9nZgcajsomfZ+bCjYFm1OsLJzcabXV/ehv8ubH28CuosB86r28HA3Sz6
	 cNDMEdNp7J+lMx5c4d8BtwBXyqcDb3aULQZIn25iL03CztIrbwS1VWw3U01pgqW0I7
	 UJe/tRY8ZbZJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E37E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173632655361.29083.11475626641508590248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d748125cf9a47bcaa0dd1bf1ed72dafc0127c9cb8d6d6912de2f87983f05c602
Date: Wed, 08 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736326553
