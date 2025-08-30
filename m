Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EF41400E
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756537794; cv=none; b=JdPgxYuxzlM5ylTaNqK98siLzAyDyW//IYv26E0iRcJVYO2saxORkO4/PgrltFm+Hor8IFom8Cb45RLpy31iQpQ0fn5xeW2VDMzUIfzpJDUtUU1CPesNqrBVZgxbh3BPvqbHFXT0idgan8ynrgFcKfc0In8ycpuybrZUFotB6ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756537794; c=relaxed/simple;
	bh=OMlh8TnA5tlSvFLvpctwezHGXeexxZ9d79FiNCaD/9I=;
	h=To:Subject:From:Message-Id:Date; b=BSmPm6d/z7x8IHyj/5FvrYm+Z3wj2x76VpvCbirzHGcYMoRIT6XNDZzOjFlb5bRRebwWkknGyYXUcVZqYyjEs1BFvny1m6nqj3zCExCYlGV9C+ACzY2hlrqRHeDPCFbH+gdMhn6GUrOTMOjxyWktZlFkCrd9FxHLLg+ztRBGpM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJ+dlU8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJ+dlU8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A344CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756537793;
	bh=OMlh8TnA5tlSvFLvpctwezHGXeexxZ9d79FiNCaD/9I=;
	h=To:Subject:From:Date:From;
	b=QJ+dlU8CgH8WQ41htw+R+weY2j0ttHWfSpASp09ggmCigs2g2G1ZQoyR5rPl8ufdI
	 V+vpA99fjYI4iIy0vfn5ZI7wyC0WQktgRY0bK0Rtx3GcisSn+bBESNCNuAgxb40Pbp
	 8dsIbe8he8tstwg5fNaiVHIQDVACPIT3JAVOHtur5yJMLGrtFKSBbkLjm8cJF/e5nu
	 qefzy/V895WDjawsrG9ktW0TLzpDfo1CLmtznN0OIyJB1zDHvdzUe0+Zs8KeMku0vC
	 CmYe5gDoYNxoKr8/cyteIwuGVoelwzdv1mx4dDqDigHn501Nd6esycog1v/D8PouOs
	 chAD/3iBrXVjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C86CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653779357.21877.13548129516040164359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c1044ebaaf295e2ca81c1041728c7f2ed23de5b20eee69af0b4b03b2d3601e
Date: Sat, 30 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756537793
