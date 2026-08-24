Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048483AAF7E
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787560234; cv=none; b=Lh17Ur3L3AcNO1v0Nhgci4RbfP3gYsXgU88TCJbWX7o/XrWmGG6EDNdye3XEum7jccw5hH0OfxYiGntOhwDPAjQveyWknLn93MK95DCiBmdEHvzMPgwjaUDDng8bADp2kqZyDN2GxpuQcIX8s6QtImRANo3zo1aaYocKuGZQfjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787560234; c=relaxed/simple;
	bh=9cntE/uy9lejFrvNxhpS6oFcqbvE8TJt4xav/OhSLU0=;
	h=To:Subject:From:Message-Id:Date; b=U/fODeopg028oWF9nwbRuJjzjfFVXTXQTRZbNc+L30eLYWKKDiqe1tspLIqz0OAHiMpqOjpiS/YyllF4njv9p/63o1pTAZAxEp8WCsUM5jIPEKdsn5NbLwnqvTo/5lE4W0P2OoshHiEPtKZK1UQ0w2Dy8HhbcggGCWD8tC7lAFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWtLXNJo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWtLXNJo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D51C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787560233;
	bh=9cntE/uy9lejFrvNxhpS6oFcqbvE8TJt4xav/OhSLU0=;
	h=To:Subject:From:Date:From;
	b=JWtLXNJoZmnfsCVskZ/vwJrxLQxpoOsd44iAoQ2EzIvfSHaYLNYjmw2cOBr9rXiUE
	 kJ++g0kdc9eG8aWygXrboTSrfgxf/riQQMjiKNzhbuS5x+MMf47bErmpsfvHn420s9
	 6NgQy05+zn2Q5MndSaphEEV6s+n/SDswTQNf4bm2Ve92Ayp1NYhEWYPC8DKSt4d9hL
	 x1lbs7tsjAXubKIEtYaceZRWMp5L4fZSoKwvTjlytW6RNBa9nVEH3OkpbGJQwBrNzg
	 4MvaAM63xdPfQMmsq71+bugfNrKjnxnf0QRehmoKQFComYP+GqJIy0LJ/eQ9gCgZxm
	 L/Gr9P0uf5/kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F66C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756023369.2363.7078403761943259835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94a3be2ade43b6fcbd06559974d0110f29716964c89b22ae35d7298fb8ceec85
Date: Mon, 24 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787560233
