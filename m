Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9ACD810
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708307896; cv=none; b=DfIvyFDU2P9hAwwSHfDPWSUW+EmauX8Bdu8Xx9rSs0Gc+TmjYw0qMKy8+/HXQABKObHRPpEycE/RkP0T9567yaSnjADQVeVBxuoa2Dz5yfj9EWmTUO9rVCvpmXgK1MtkqetWJui053usexNU1iApoLHhv82LZrHRRO7e2nZieQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708307896; c=relaxed/simple;
	bh=Bq++9BWOe8rKQcDWqnQH0rq9NSGrhqWsTm2D/ebxzEw=;
	h=To:Subject:From:Message-Id:Date; b=JmgewXGO6hNfASn4FycEjTbcCv4XfaoxMRs4M3zQxNkoruBf2vgqHAGuVgVpSS5HQkmABTFrARGp1Grba2TyTceHWpXDoPwPghqk15X8ZuUZbm9UZVbqIJy8DV9ag+PkmHqizs+tIudB/rNxwIi3fLoeTWoWjqvm0W3MkHNJddE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n60JxsXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n60JxsXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8C3C433C7
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708307896;
	bh=Bq++9BWOe8rKQcDWqnQH0rq9NSGrhqWsTm2D/ebxzEw=;
	h=To:Subject:From:Date:From;
	b=n60JxsXYB5aJbLcnn0eSSqwRZYcfB2HdQYV7XOicAknI8bPQkyrVcfj0glbLQkhH1
	 +v8DeOMfO+GTJjnvAryhKre1b9HO/uRHBOp5h33d9UcCQpCWcp0AUretFpZ8hFoZm8
	 bW6FX4ofZNyyKcY29tPICg0UKwUVNuD3FwupD3krcqBkHuW4f53s8Ib2WphdUCVwff
	 VibX+/c7sR289Y8e6hdzH0doRvcaRAoxMXLyH+xw6OMl8wm9KSqkUCdu8+Jrgn4L/S
	 8wGUPfPPxa/kb3no5lIpTkn/kMcSGkUBqtubq+ClMT44H1sG7HoRWd9S2qXThN+XpK
	 TGDvk4ylWErug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CD8C48BC4
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170830789637.1209.16037530960948947655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494abfd0218143e0928526dec3490377d4c05e3c69b2025b60d7c97aeac23afc
Date: Mon, 19 Feb 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708307896
