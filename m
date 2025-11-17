Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4376011CBA
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763379714; cv=none; b=Sp6NInPGWd4WwdmPm/7ILBBmhgHgfef+rSzC5BA3VUSYowf7tYhywksXluusIkU5nVMzEZbOahzWg0gT9JMyUV+0JHtw+vou+m2gXK7ufZmrsJ7Dt432XOsnFR1Dy/Aef1tU1rYU6aVWHkC5Jf5MvTMADlAB/tL/4nRH8Ddj0kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763379714; c=relaxed/simple;
	bh=DX8dHBYLaEXP23pULOg2Fam0xTWz/RG8zPHanPnBu1U=;
	h=To:Subject:From:Message-Id:Date; b=KWaqqy2qtnyPDvMJginM+IJia0EnJJ9zaKl4Fd/lnMpKK1oRlzBe7r1c/OVNC9gVLZie+Y5KK3nh98SZsHbZCXH9MZqAlza70Of0z6m4kiqMuaDVzVKWBGsLEuM604RD/HNdhGSkbVlRB/t+PBIgFcUsNbo4EknhjH8JmzdkLOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJOCBc8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJOCBc8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4371C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763379713;
	bh=DX8dHBYLaEXP23pULOg2Fam0xTWz/RG8zPHanPnBu1U=;
	h=To:Subject:From:Date:From;
	b=lJOCBc8dIn0tVMaw+Zn8xL54BLkAuz7hn6UXhMXPSUwrmWETmGWo0wys0S+dYJZh6
	 adQIWU5E6quyl1tMp2rkAoTL+HamVn8vVScxxGruv9PAK9nADS/aglTv4L4gDBjrfs
	 LLcIfY5AyC0AQkxUiuC1yo0gRcuovOf5MmgVRVodXTnapxh9CE3MHx6o0UCfnxRt45
	 jaip3SyVl/GgGDfs9HJMwIyiKXD/7UCkkeX+FSFNWV9/VIOwuKKpjjB1Wkp9WCjxjT
	 T674rOz1BgYYF4ohuPgkly07p8Gchh0hh6POGmOFwQdckIMjx/FG18uJ1kZV3E9yLK
	 wX9f2+b5P22Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94245CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337971359.9977.6985686307965789476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ec04557752dd92a8fb9805d57585e91ed828f35c1ea98a1ce755937cf1ecb8
Date: Mon, 17 Nov 2025 11:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763379713
