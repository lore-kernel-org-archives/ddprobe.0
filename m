Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8501C28E
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767536034; cv=none; b=tjQze5y1ODK1r/f4URvpqbN6Ppr3MEJELaBVOgY7x80YMLyq75Zfag3Okua2hLcxK3hCIMOahZQpfiEtyYbET9lPvGNQnI89vaKRaoGXUJqeCUA/ClgTmPd6O5DcKW/9DGfXIkpnnzy0XbLqLORFWAcR4pKRX3gEaJG9TjnC1PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767536034; c=relaxed/simple;
	bh=BUDzYFt7VXYHRzBowprHfc4JK9yfTM+gdsq5Uog0Q6M=;
	h=To:Subject:From:Message-Id:Date; b=II4u1shonUeCJ/jkLcg4PkkzGWmbZOfY7gdzUXMBAuy5uAh/CLGKLcIzc4cBM4lkiI+9kaQ/7u4pr6CZyH5hAdHuf14f04qnqGhrjs51/oInteBfYFJ0njrkpPgrhOhRmoA8fuAyKrMS1pVZU9EQGocL5gmfOmRpCdo7uxzWlHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kas9B6Cg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kas9B6Cg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2342C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767536033;
	bh=BUDzYFt7VXYHRzBowprHfc4JK9yfTM+gdsq5Uog0Q6M=;
	h=To:Subject:From:Date:From;
	b=kas9B6CggEOzeyjPAooa9udgfKroQm4b/DFg5Ryo/1Zyfnf6KQUkGeHgpoprckS3o
	 uQ0nlA1Wbj93SHP3R9MmTjbDS4BvdgpsgG1W+3yCvnT9BxyWtpRWPdU4uPSEBqVCMD
	 D1vfJoEfQpppHtio0JaI5pN39Q4xElym8L8lzr+QM2gEw7puMhm9r5sX72ige2lJQc
	 BvWL+yOD4C60SQ2viN/0og92Zha97zzIrMp0hPctTCGZjVYesh/lU/ZLFGcmZmNZ3F
	 cGCiA91c28i8Kd3wqOpl4X7qoR01MEYG5pkMPQJhHrvPZvI5dadgqpNv1JR/a/c+cJ
	 1z4M220pwrRcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C13C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753603357.15278.10969052808555129146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74682bd728c2beadec8186e5accdc983e6e15f30fdaa2f36bd6c7ba5994460b3
Date: Sun, 04 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767536033
