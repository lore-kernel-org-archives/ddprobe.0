Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396C62C08B2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754933394; cv=none; b=pbI3nCStYuOkiqCrXZBc9DMBGtrwIRnWhZIs1rGJ18ZEDBaMuK5Ne861RXAWxX9fGJQ3+Pecv2L+FkbJV9hZa1XlzR37nCQkoO4TxI2U1O/ZygoHOJwbZKHMXnS1qMTWQ2aUusuoZpabbCfydnInfedG28vMdvSnE+6ZUjKahtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754933394; c=relaxed/simple;
	bh=V+IdAwODU7c1BlGm2kcpzJp380yOthc+gPekBk3Tg+g=;
	h=To:Subject:From:Message-Id:Date; b=L31/LBJ87NEI0UUvCUkvo+B9gUIhzGHEufCCv8y0dGhB9ixcoeFqIwN3nMEWE9ZtVJSlCc9ZnwBXN8rhE/Ju4mQ4OoGSHoQ79iWs4gTv1j1E3w43q+Ad9TYAYzVvtHO3XqQJFaO5/XrbSwMu8dSQWzWcciFpZOnmTyd2gESRMqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUO+6cbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUO+6cbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E021C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754933393;
	bh=V+IdAwODU7c1BlGm2kcpzJp380yOthc+gPekBk3Tg+g=;
	h=To:Subject:From:Date:From;
	b=mUO+6cbGg1MGddJRDYgJXSshGja4yaD+ffaU07zPo8vIrlNk8tMKeg4ayHmEEkJL8
	 1fAJtPn5psFo96coBYFvoN3fHoxCaYGXarDvkCWho1Xc022Yl6jcG/JJRpIuVJltDv
	 8x5dTCifH7xACx89eu3J2iAbY+Qbft5L9K70cU6KXliFAOBlQbvYZxtmFvQVJZhpRr
	 l74gGR58vClUUuuXLiZ2tNdjlLzamezqZx5yteAA+v/PfimV9ceZIHDyaDCw2RMOlh
	 7RDxFuH05UxoB6wgZ0CXi6KsNhwaEr86kqx9oUa7fL6PyNgHogegpAKVHUc3CPfGz0
	 Fuug/Z+z6RCsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF31CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493339358.12602.9415413280322955062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a488e9623db9b17ae1c509431455d89c975a0f3fae50399f730325964ecb458
Date: Mon, 11 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754933393
