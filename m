Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1863321348
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753594794; cv=none; b=O1J6I71qPNKXj9W5bz6xqL4DhnWow9T6UGM+f8i8nsM9OW4swBxLYFbGXi4gp/r5DQAsw6yvexzFvuQh8gDOqXnJmLebkFXBtbyCMnn8F1KZyIwUGwch9Q7hI3Pm3pghA4KkeqRGPvbssFTJdVlJoMYWtrYIKwvL5GrmyiP85e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753594794; c=relaxed/simple;
	bh=dL/zgGR4BKBJ4x/zYVFJp9tvaltVcO6SHRLfJwtqC7U=;
	h=To:Subject:From:Message-Id:Date; b=giZnt7FDiN8gmBlIsEODwQoMdBP3bTZMclzFC6c1hix3aqImNwTSjmbglvgdFFZDh3qQdl+K453ksRmnSP8y9oc3uUQ9/F7RfD/8Bz3zDTMojrRW19OUEVCaD1kbayENVLCRPtEFRL4L0AXcVYZkaKsmwFGCZKe86PQAabDsMDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHJgsx4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHJgsx4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77ADC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753594793;
	bh=dL/zgGR4BKBJ4x/zYVFJp9tvaltVcO6SHRLfJwtqC7U=;
	h=To:Subject:From:Date:From;
	b=jHJgsx4wNzaeV4BQ2x60o4hvx42D7gwxONq8OCRv4YkR5LrdGdmQnrJfNiQKUAi4x
	 U847GtNVcGSjzLymv4GGuh9zbl10DlO2YQwYpxqDIIVkqPKOr9G0k5pQRj+Jw2DXbV
	 Yb9lLWAI02iJ+/7AOuyQ5Ej/Lbn/ocOz7x+cQyjH8fA5l0UW16PHMozjjsn+9pDvSo
	 Bxq1RNvKbqwmAheJrs3+Bs2xL5KnDVyNHV6xWrblbIn8LerV/o/jzFdLt83Z8UHoTj
	 1E61ICIRqPup4Kj7sDWJpRiKicR9eMEm/QwJl5kRt12eqv3lKslnifN3wRkrjaPg/5
	 A25H82As5aF4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95626C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359479357.22226.187312835492162023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8197197e2bd00fca416a1b8dfcd04c1438eec4fae1fbeed11d44c156136b8b
Date: Sun, 27 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753594793
