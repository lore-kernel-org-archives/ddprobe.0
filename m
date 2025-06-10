Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3525029B761
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749565194; cv=none; b=jdyGKcWvtGJzfQYB8+WrL2NA7XPYpYgtaP/amAjCYR9lVfPKeWnDgxZaFd4++RysDz8s8gGkulQ31Wck6C4ZYKW6ArO4O6Vl5EE4NPmVi6UIYbPXvwZXrrA4f49H0egzpL8lUjDE8Q7/UsoXs/q9ZiXxjFcPyCPU5ytVE/S9Er4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749565194; c=relaxed/simple;
	bh=jP5DGB+5VZ1vbWc/Ml8m0kyC/5lB4xz4DvfT2/+iW6A=;
	h=To:Subject:From:Message-Id:Date; b=ADaoEg+ZDJr2tvjm6lSeF4hzKFtEOZtdVVumR9YEgwxzvAHKiFYCHMSHqc7CIW2u1HunynDdhG7YKAUMaEp2mhCTxUDKS44tDer56sdb7HExjcilhF5tss6nt9UE8hTT5F3X3mf98C//CsL5w1AlQm0KnuTJlkv5ahuXpzBKAxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3si04Mh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3si04Mh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CE2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749565193;
	bh=jP5DGB+5VZ1vbWc/Ml8m0kyC/5lB4xz4DvfT2/+iW6A=;
	h=To:Subject:From:Date:From;
	b=H3si04Mh+nKn3dPoaDRE6VUtB1PY0H+h9G8cePpzuYJqb3kwzR0KtQkfyn7yCOvrR
	 u7tRZfMxTMqUzymB37EPSPjzS0LtUFOkpCYue3JFXOfwqu+KjdPa5VRwhpvCkPLpF4
	 DPcIZGoO3q/r+gKBVe3LKIpltbGZyNS0LG+EuTPTvElClIbjj/2jSwSN/AHVWKAizb
	 Y/EMM66/DGYnSeQ2Ggbz08z4EqKoFCz9pFbZe+pluRADCflCFshjNbFT8An1OMlhl2
	 baQVamw/+bQJVbJ2ARL47DBBu4JtBnR3kC5uLnBW4551tyjxhS1L37D+vX6GboPE9E
	 XI38YSOI3e6vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94098C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956519359.21809.12075852150614542457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb409a5a6cc07f0bbad9983d25e31dc88245fdcf92e48bbb469ae99441e10e1
Date: Tue, 10 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749565193
