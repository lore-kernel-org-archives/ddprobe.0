Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E153ECBC6
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780069954; cv=none; b=te4fshmsRguBVQdbfBD3WZcbMQOf5euROpi5GjiUq4UMUxCaLiUHfT+P5l6Kr+GM2wl+zF6vs5X1BlGEBjyFJ1/rNDzMYRu6MfBJUHDrYSmg7k95MEFdBRaWAxKioAVWPRlTn79Yo+sShsRhYuts3JlllsasGbcMYlUZhEbD3zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780069954; c=relaxed/simple;
	bh=SSv1SiBlKmfa+d6P5OxaJWrOC17s5zDvs9+YaqrJE2Y=;
	h=To:Subject:From:Message-Id:Date; b=UVW9doNNCGy82vQpTeHBQyHzN903/9qtj1NplFPkhBB/Jh5Pi90h2PhXPjAgMy3Q1UJguum3BHe41AP1Zfj1S+JENMdQa141GYCZSH5Lwek7NLdw3M9zw6unFBWgML9obl1fQ2Ud7uYhIwoP0ecsfJQGcZmtws8NWAgRmcb3424=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMLSYpHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMLSYpHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54D6C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780069953;
	bh=SSv1SiBlKmfa+d6P5OxaJWrOC17s5zDvs9+YaqrJE2Y=;
	h=To:Subject:From:Date:From;
	b=dMLSYpHpR65bPmfCOOdx0eENJz9fWd9kV3cr33GFnLEtxWRS+YBc4vxaJEPJJYedL
	 2PUq4LvRbBH2QLuOlwSoJ8Xy4rSmB/dYmeG3e9v06emwt8slV4oUOmwAAyjbkJTXF5
	 FrKexB73EV1hlPOGKFns3Ib4dbSXCOl5ZMZRIh/dDOmhYl+KedVs0a2UsSSDQ4Hwi2
	 wK+v3YgYnWHfBoi9gzWxEvk4dBGd+YbHX/3JOsvP+gYd07IIUSEU5pqOBiHomjrmLo
	 HgFGYg9VKT9OpTYgC92GtmMLv9HAaiMN4ACvQQz9fD8AL6UfWMR7+q8GmG2NnWsDUW
	 blD9JD3CJ9t3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE43CD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006995375.1231.17452879864342930564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c208a957a65bf5afacfe2f83a4dafdad6f19f1f7a32e7118ff023e3cbdb5217
Date: Fri, 29 May 2026 15:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780069953
