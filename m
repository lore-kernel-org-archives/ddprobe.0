Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1515B21256B
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755080394; cv=none; b=GfCQLNgGevIgem5hQhLBETVhWQE1Ti0itFuwxe++IYEZDcIyapxQOvauOmw4drg5fAYSipWv7ogB0txZ4ksYgAkce1lxUBsSRyFzgn1N1/1w/NbwW8+kvAgFUupOLS8xmmFvS+ucpMEF6wfx1oQ72PsoqXqpQG7OaQOjPHp4gPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755080394; c=relaxed/simple;
	bh=OET6NSTzBqzTT7i4toNWN/jSj8BbZ0ejm5310yyEZwI=;
	h=To:Subject:From:Message-Id:Date; b=dM1Pbey9OL5TR1tExII/0Rw29Y7LH7kfkgU5g1uiv8bzEdkeiMVi893q14GeFvTWXESI6TAUjzDR2zklUm8EXPKAxQ+uo9JSSUOw1l99o286t5vwbS1tbbVsMiUKcvR3aZUv/GhD12CGZ4LX2BhpRVaI7vVq+Ii/WtTBeMwkjJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKIrlMZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKIrlMZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27A2C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755080393;
	bh=OET6NSTzBqzTT7i4toNWN/jSj8BbZ0ejm5310yyEZwI=;
	h=To:Subject:From:Date:From;
	b=MKIrlMZOkW3mWIAilrArzBJ6jHyJaid8r9hKlz04U7+G+ySIXvjl4z5BnkyUwOvy0
	 n79e0FTSvAYroalgYkKQi/d14Qd6egUoFYvPkRon4oqN4E2hLX0vwBMOR7mnGVOy3I
	 nZzaVVImADUvi4KGGfX/fR4MxVMt2+OHXmfWy7hJ4LU3y6HDd+/nbi3uiGalyeUcSQ
	 tcdH5pCYHvhocBdfOouriYVkkaKiZO/VZIY8KWKIXtIPBL9OzLuZtoOG02aCd6MaQS
	 +vj17Le1DKGw1JfQkIXwEfVzPdY12OZJCxemm+QqZiTHqRWXqrwbMOJ9WMbbiQsdFD
	 0kbTiHqTtcRsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91641CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508039358.30714.13965896842127471910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2139d745d6aefeec2d4e2c5db8b7fb73bedf6de59a7cb6d1a6700f4a9c148c9
Date: Wed, 13 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755080393
