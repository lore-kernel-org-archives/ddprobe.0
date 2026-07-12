Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55389306776
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783845514; cv=none; b=VeyLo+2TlAVuaOh7bAH7Qs4Gul/d/GfXvZrqOYJh+dT6BoFer5BjB/9MxvqraMcu/tmlixe6DxJnzrkzFjDpwnF2muRDEBQtU13C9YDKp8NLel+lRRrtck/nZ4lnLvrhpwvIczzYpjSEyW9P38xLV8KG3aLP2m5qxleFUIT+i48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783845514; c=relaxed/simple;
	bh=L9xuMSzqSBCkChwYJ+15LRh9KBCNYeluhqOJ0efiU5U=;
	h=To:Subject:From:Message-Id:Date; b=CqDcxULgenswK7fqx7WxcC9VwemG9E01nFqCwXEvbu/7dKgDUw6sdz6ctLmml2fXYHMGqBPcbpfAZZfBEhE2zj1L7lTyaEtOqNCFG8ZzK3pqd0cE0WPCzWrEqMi59ptkzVD9ov634fkT4HUUEMRkSjGYVSG4C8el+jUvsiXDAGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwBcrLjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwBcrLjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5D4C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783845513;
	bh=L9xuMSzqSBCkChwYJ+15LRh9KBCNYeluhqOJ0efiU5U=;
	h=To:Subject:From:Date:From;
	b=KwBcrLjXVhGGjiV9bBATXjBWP1kFx9WcgzynUfcrbaahemGZu/g2NIytlCqe+i70R
	 xHr23UbE9CdZsw6rs39nGYXKtXRyuQEI3piXE2BqS/M20fVrADSSrytxB/zBw8MmTb
	 7c8CwmK75D9RBGWxi6CKd/71aXbFOOf7HpIm9BaoxXcaayMM1Dk6azbhWDlhoO3JXl
	 f49VDv7S7gGJ8KrD7EttOjCkjtlJ652/bCZ0yAbpa+bmkHymfOzUXSLkBT4+pv0RBF
	 Qz3CAfMuh2ciHKUsnff0Aa6/pVfRQgMShrgX9ub3FRzWyqe8mtf/aojvTZ4aK3ubg/
	 9IEpiFH75fSCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6D1C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384551368.26595.15937656925890540933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693b60958bd7a663403998258c2990ba53a64b16b84c26c8c8487d079d33b4e4
Date: Sun, 12 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783845513
