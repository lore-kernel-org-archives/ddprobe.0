Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C3D35E952
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791030034; cv=none; b=nnLZRT9JlebODvlh0Pz4sXgy5QIw8w69mApUqMs//BRk5tB11BRT5VI+A/gAmyUxZRpfb4cuc1rkPzRWJP91KJTyUvz4ycct1PSdHEhoIV5hiUg6zN5oTymiMjiYcCy/C+GbB9SL+rDe7PV9r+P4OBR33bf5YYK2Ir+pZlRQQBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791030034; c=relaxed/simple;
	bh=CBcEGfZ5mYIgFGHuq/pE335mwhimYkKovg2tByYIB3A=;
	h=To:Subject:From:Message-Id:Date; b=a2s/W4ka5MGHFNNaYS1QpXh6Rr+GLStmprjv26alejekpZQH4nv9T9MVCkTK5D3/mlOAlPYMy6KIDiTLvo/apbaDQDKtAgv5YXh6iauYPln8tX4Yz7NkaMQcj7lYBQSioO7CfY2BT/0nwRB4Ee+FsMw+A0jqXOotpN0RrVXlTc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7yHgx99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7yHgx99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD504C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791030033;
	bh=CBcEGfZ5mYIgFGHuq/pE335mwhimYkKovg2tByYIB3A=;
	h=To:Subject:From:Date:From;
	b=S7yHgx994SBVhWzCxv4lkmUMcNI+JK6J6MO22wU3FzmunVweyyXlbcDmyhao2qb+N
	 JSHsRt6OxUoMbNpJK7Aw7tzhTZ4KQ/cZ859GTAwQPgIMz6dosh5Dis/zFgGm5MkVul
	 6Zx15VLHFi9nL3O/AXJZJKWVAOL9dOMbP1RrG2773Wu1dS/pBy5yr9avsHAbsysQ3g
	 Tt8rMhrFI6LgCFSDDjwl0ewaTIN8JwAgzU304CcacukEY832uZG57wBLAEyF2mow6b
	 6gYa6fGFmhyVQ5SIxXLh10pAnzqt9WWhkKANa3ktVN704ZfQlwzDT3XqXIoXnLAeqx
	 9vuabHQtixZMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8F2CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103003368.4430.10816155439241054965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830f77f8946511c6fac30dcd52455998d0142e88b83a7922db0f66a59f4ba4b0
Date: Sat, 03 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791030033
