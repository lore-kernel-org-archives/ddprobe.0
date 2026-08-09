Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533ED1474CC
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786255234; cv=none; b=G5yEV7rHKZ3gQfhwVFEy439ur/PQTvdGrYmiFxy2QkwIpewY/V8hJV7M/2IHtw7VJL0fEhow3ej20QYr657aRb6xdr2Raq8SvwxpPd20xkLHFtZk5Y0AutoFKAMhoEIcvgpzHG2fkxBvjWZeSkko/d9LXCFm2Ry/xvaOOMok1D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786255234; c=relaxed/simple;
	bh=YDD8z+eQJCZZ7+BR3mCLKbIg3J3V+FOW9ohso7ifjSA=;
	h=To:Subject:From:Message-Id:Date; b=dAo6KI3X+xTm3IdAAxhL5+Toh6GQBerg0+mZoKXlbWelMMXCZYLD7J4z8TB1j7/Ckuzrhri09hOyEq9q5NBAR1OMhSiOnZLPK3/AQZc7k7kdjJyIe0QRbNj0rgEsvkYxKL5uxCDVoAyLYXQPEUcl2VpfUo3ubkP547JhiL0j8HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxMcls8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxMcls8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4545C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786255233;
	bh=YDD8z+eQJCZZ7+BR3mCLKbIg3J3V+FOW9ohso7ifjSA=;
	h=To:Subject:From:Date:From;
	b=rxMcls8oIBY+NeNEC+4FvDHPxpyLAb2vVub1pClt4t8JtpN1I+xBcFxjefoTn1Udb
	 45wxRwxbLFlHgF7WW64KgoL1oZhyFaJvrGz8xQWPMr1jj5LtXnRiWeRVsjk24rSWUZ
	 tCmr/qImG2KerCcbHoHMzL7fg2hQAgyT56+VmGyie0QKC6emWFC8mFXz8XTQc0ID8Z
	 PWgCycWD41SRZQpzM9mgxiK41Odiol0cgWTXJZfj+gnxh4caxQ+pAwv/Sxyl4ZbZm8
	 op+2pNoeUwO2P955+V0ZG4A5NxvnuNjVpEdITyiyhWREAUmdABTTBde8GPoDnVQd0l
	 1/FRodSzCtX+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9D9C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625523369.11551.17743802718848149955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c735c997d4833a89aeda8e0c09ddcbd1a9052e00d5a8594110d0a1449d08c55
Date: Sun, 09 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786255233
