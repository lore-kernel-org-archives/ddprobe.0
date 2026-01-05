Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39E0311975
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767638033; cv=none; b=Siz/ZxEa8WwFATquArFY904WLDLvie0+5q8zrAgja8akrVPK/X/42G/+ugDg0m1Tsgeq3lQCczhNEaHavzJ0LQQN3kPvb2a4FC20iT61AOIN8mBYd7il+PPWfx+LTLDbo8zl2Q/drON+Q7njZWDeCp+vVFu1I8ogCUJZyEElU9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767638033; c=relaxed/simple;
	bh=ML3sjszce7+5/HpNngf0oWxI0nwL1sK1UZW8jsRNgWw=;
	h=To:Subject:From:Message-Id:Date; b=AYS5mBst4ld/OkbPD8EaSeq8hEwU3x74RdsTgRpQjkpZOozpWtvfTII9xpBjd/fQJDXXFx5dJZVR+kRoIwUzeriBLfnqDdhQXvQ/VSzj6JoqBnIV6G8WsfLc16IW9fZQlvJMrwn0dSYZ2fxTfyoSlhHN3EJz64Foe6vpv4z+7A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucawg9c4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucawg9c4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5267C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767638033;
	bh=ML3sjszce7+5/HpNngf0oWxI0nwL1sK1UZW8jsRNgWw=;
	h=To:Subject:From:Date:From;
	b=ucawg9c43n6kEAxK+N+YbOQf9XvnSq4sTpIKC3OLwCyBTmyvIS/ovXEJYpllpTr6f
	 BHbBNZ+K71oSTBr5nlfPOZjo0KDmNEPKrMyUckXS46AX/3Q/wZF7ljNGj1qLOozhte
	 F5hXIZw3I5zkkL2E4CcZxo3ZXZ9my9NRaRWqkP1pE40NSkgHyYUn6AvR8eP05D182N
	 T27T1Igy3lnaLX7wRP59P0FGKE6NyLv8O9QEcaSioU3GYWpUO5flW92cpRKoCQpJbn
	 R7Z9FwIvEA9lgcWL1flUnXtmpreFZD+2U2B49DWauxPAfLQDEyzl4ZWM+Nd3BJuBl2
	 vRuge8NM7/lgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A73C79FB7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763803357.7403.6212710099081512745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c88148133248c471fa7d3b510de5169aeb70ff60554304917474cb9db5a20d0
Date: Mon, 05 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767638033
