Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1675B279DD8
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758403794; cv=none; b=l2+DDE+QcTWAgQRptNGxUaoxwM6Oll7Vc2PsNo5tS/MO5I8xDHoEd3XlkYhytMfOc/5UeXYRollbrnBF27b32ab79eX8Wpezi1ifh8T0lZkF/raFvRBuOwl8B30lWQ2WO3EURDo/8SzkXE7z0s7/AzPJAIDfC66lvPpqgJXdLXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758403794; c=relaxed/simple;
	bh=OuvvbvEO8JW2pJ4WB+hUBPOC2GCg3SRKX5ATsYORHg4=;
	h=To:Subject:From:Message-Id:Date; b=qrJPYwjXeRcnMznHNsP0c/ZJl+jgzIc3xU5UL5wxXf0wa8fYovYMixROXAglOVLExpjXFlOPlLUpGg8TJxDGTBew8my+KOmsbnRmFGJyFahLsTOYwA66wxCokyslknSHMwD2xkMD9VN8WdUQ9tMb4XDdYfNHnAJe8/1AgQTPUhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eO8Ghdi8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eO8Ghdi8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB94C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758403793;
	bh=OuvvbvEO8JW2pJ4WB+hUBPOC2GCg3SRKX5ATsYORHg4=;
	h=To:Subject:From:Date:From;
	b=eO8Ghdi8DKXxKyOYlBF8/3PPXxDOhl1Co0RpjcMcTrhgIZzWV4adaSY6hKYUA6Z91
	 oX/vEkwRHanem/cbLsPLmaR10Z6JGe4iT7DUJ84aeTtNIXMJbp6Jh7x705jp5RQlIo
	 cs3krLjnKa3xWsuZ+RVs9iwgwg79bOZgVsa2P8TGntytGiJhdD8JU94wUuOMVnuTDL
	 78riocHIgk6kg04jbB2hNH/aZ/K/KoQGwUj6X8t9anCDorHkEwyNfymqhnZSxd9L8r
	 u+8CoRikGwCQrMZz1ttPiEy5E8rAM11nKeLCUq2zoCAhr+YGewMDJGVbrWmaMEguM5
	 dOThXGqPEvnaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94788CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840379358.14361.12266784796947674774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5966219154c334ff9a30e5a7d26f9a06ad7ed9b35832698c225a47164c0af250
Date: Sat, 20 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758403793
