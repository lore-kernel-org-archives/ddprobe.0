Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2773938C2B0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781228194; cv=none; b=LSE74w9FkDO0T2nTik5laR7gGrfL+MEP0yWZGKAcb6/jlrxXptuSv8AzbSZgJwNSTCZGsPXn544fkaUiHNPrKrCdXebvxhmJhMnssClBqKPhg2i1JZYz5oE6tMJI0vFZrNAzXFiWBkAEDsFgqjgM4VdgE+oxc3qTABbylnYj9dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781228194; c=relaxed/simple;
	bh=2r5V+rjIYN6iAht5Z1aAA2fTskpd73vyAfSggd/z97k=;
	h=To:Subject:From:Message-Id:Date; b=mzj1K1fy01g+rkojzx5+DENfc/KrMMleB78WeVSDYrcLw85Y1JFoUT53jWUEy0mu785qxdetK78cmD46AmnweYoGuU6map+Jhd8gFKveZPaGMQLdYlwOxYnW1wBnksTaOBtlW+xawl8LpsEmeBoqQGCwaEm5ZgTZx5yyTPuigfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTyv1aG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTyv1aG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C57E6C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781228193;
	bh=2r5V+rjIYN6iAht5Z1aAA2fTskpd73vyAfSggd/z97k=;
	h=To:Subject:From:Date:From;
	b=iTyv1aG2JnXjeKJCfoie5EI7xWy60PKalPXCLiSNz5Ua3xuGPM3WH9+jrBJUTeX85
	 WpOjmQkWud2HWHj0nhHgWjwumNTuB2Vp+1IghBjlwzNkH13POL1tTxWxwe7qqdAYaP
	 gScfjEWkpVRxYQlPO2eyczBFnmHhj0Dof+p5ZG6tNsU7m7jAFVOjSaRqQy3S0PRKuw
	 ts2wn3N6I51kNm7ZJTGhoJj1VYiBatUX8Y2ROMl7mXktqNhc61979Qo25RnzYTSL8p
	 nGUA5D0oA24wPOopz51PBbFD/YCTnz6njsXK9U3Ec7+VC/+svSncjx35d8iUEubDKO
	 TcM7w/LKVYmmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9651CD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122819368.5430.3246438817835379779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077e4ab44dadac321e3a08c4077905c93f15ecaae5c08a2885b9d4bf66a10fcc
Date: Fri, 12 Jun 2026 01:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781228193
