Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362E346B5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745819394; cv=none; b=OPfAN6xJcQymooncFfk8f7nXbuxU5wqiQN6ZE018piaF1MvGZS8cILPYjO44yym/787RP8NSUlUcnO6hxS8bZ1lku6FfIMIvIb/puRGVBa4olubJzJVXMEgdpLURsDtEO3ZSZh+Oht7Nck9v1v0+SWdTyxJN0k78zz7vz3vgDIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745819394; c=relaxed/simple;
	bh=DjrapV297q/Ke+3wJMrbJQqYHRhRBoarh702SThH1V0=;
	h=To:Subject:From:Message-Id:Date; b=jNCXJeC37wFa/jEjwjQ+Ig/rDyuDf/FDtu7uSxbwKU+6gQbsgNM+3TbAHHbBTc1OEvbD9c9QOIEC5brYbAK8B11hcq5I3tnAMEtXEYOy5TRpnBjrFpKvWH3zCJpD24bciUeczFW4GAV1LS/CRBmpurg0ngD39Tq+6sx9nCKb/Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9uRQyPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9uRQyPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1A5C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745819393;
	bh=DjrapV297q/Ke+3wJMrbJQqYHRhRBoarh702SThH1V0=;
	h=To:Subject:From:Date:From;
	b=Z9uRQyPNlZA6m0mBYSV4X+QzJyOAh+rlthzhmtknOMaqMs/iJBirihq2BuFPw20wB
	 /DXoV3/BXndMVbaeplaSxAwzWeR4y1F+vU6YWfju75jO8q3rRi2C5gaaL3yJ04rT6c
	 2UlRGIZDSTlG0tYf+I8Qmt9iqCR+DX3h/WDVYzsH/c3igrH0C5wDoYQPORJfk7rjkE
	 AWcHyPzCcVjajA6ijAfk5PtDHkporDaD+6MPnkoqeEvBQ8z769feDmvUGd1xDOo5w9
	 eLTiY/R+LcdhcaEvpIMprRg1Lw34gC5QcudaQueQfM/pMlM85rwdsLaAZv2IOC5Yu4
	 xVKJsrZ0Zkalw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B8C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174581939357.15662.5267924007120668568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7152768aed612c83fb5322c7ad69a8b71229124c0ae9bfb033c9a770b2abca
Date: Mon, 28 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745819393
