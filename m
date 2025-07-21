Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220C02918C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753109994; cv=none; b=gzX24Cgl91PWHvUFMfSL1Dal+bwK+/m8YwcNXaVSxAC+JqdkUjCZTCpAKxve+Xhr3JvjgKB7qYzNHcd7+foqNbGDajrap8Iy/nipidcA8QN0dWTuYy+2DcRKVxr2gmhC8JUVFeXb2vzdgGzL7uXNe0d/R2OxJNrMKo3H26BuVD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753109994; c=relaxed/simple;
	bh=q4FB3onHtKXH2QD/mNVVI9nIczKiGvLO54G5xrRi7eY=;
	h=To:Subject:From:Message-Id:Date; b=G1lpmnstCi+kfmRaRm7ckA5Cg8ZuoGSYgwEPsS75nA2fLynl5YYEc1reneoVFZUJGUm1H2D3OPxNrcu7KS5/CVoDwZanPU2hgDXhp2VMjeuIm5uZXbZcixI9rrhCf9jXpH1sb/fd0oIG4V/nqsAByi7QHcnugqI+gdQlJEszGtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4uwjmLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4uwjmLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3E5C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753109993;
	bh=q4FB3onHtKXH2QD/mNVVI9nIczKiGvLO54G5xrRi7eY=;
	h=To:Subject:From:Date:From;
	b=E4uwjmLd1kN0EKk6gs/nGAVGBPhIM4ysRYQpbxHjrtf8ocMq4DECrHnxk18K9Pyy4
	 tzHGTYRluEqqWeoV/7a/q7ZX8QKkB3JBAru6vPGrkIPXBnnN4CQoYCCC0S7KlLL/OC
	 AEOY29gcRibPOFqmRJNMixQtf5HzdoY9Ce37VJejJ9B9Jzsj5oFQEahaE4eifjPk/X
	 QangCKwLBS2OQc+30SQpLz/vjFKD/okvcRzk5rGXxPmaIA9+L1BNxsg11zrMn0ESL2
	 kp6QYWOUqujw7T6Gg6FSfN1fzsQePoZXQxeDI6+XPJBSbyCuy1Q4zwy4o2WzZWaQek
	 qqGpxDVgX2ihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD9C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310999358.30544.11112833831081355073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a1c758c6631b6f5629bb5563cf6fb558bfec9ca3e3f1a84741d5f1819a3399
Date: Mon, 21 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753109993
