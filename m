Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B09D2931D5
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785076234; cv=none; b=Fzn7zehfRjCZuHBIX9Pj1+XcJyoPbrInZRF26qzDNdTLALwCWzXcodImQaLbBST0m0ppjcPY7S0G6MkAY+f6Ca6X1k4l85ViCICXHO2uBs5YU4mXG+UkNUnV65U5myw5YO0OtLHRBHU0OCkZV26ArRqpreFV3fce3vTx0SshE7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785076234; c=relaxed/simple;
	bh=5CZjRSzzZAufaXKFOIF2cipS/AYs/LtWwYFQJm5+xEY=;
	h=To:Subject:From:Message-Id:Date; b=gLOtPzt/+Q4kuJGu6wcIzdxRvB75VtXUULPKz5QgRTW+JPrkayKAikCe8Er2olXvodTuyCcMP1O//0qOzFmaQSbrJqfE4PNmWT5ZRQAdrLJXCGCNzSWKgs6ubJeOsXGZyUtUCuI5wp1yqx1wmBCuVvkMy5KGa5Lgi96rik9UNMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gjuuw24A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gjuuw24A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF628C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785076233;
	bh=5CZjRSzzZAufaXKFOIF2cipS/AYs/LtWwYFQJm5+xEY=;
	h=To:Subject:From:Date:From;
	b=Gjuuw24Asa1FPmvF7h3DOtbqT5zWEIDJTKVfgEmRA0ed/saFm+rM7qHqDlv0+4a3K
	 TnPgkheEGN0Ya4MkzkigvbL9TeR/bjEgPu8mca7imCYAjqaCkH1tTELbqyUciOLcvT
	 1XdvTjcDvHZ6lA9Kud+g5HSZDwjdwfv1MdiDJx7v85ex6SFFXTIDY0W8F+133hpCjS
	 tdxICpbMCGK1RRGq4UYk32bfNICpCWQZSvWM9IimjhnFQh978WPOi2z46F8w1MfiRG
	 DyiF5WFapBOtfp7IIbrG7dhVDl+hlKTqys/dAE62qPGz4VpkiqTQuDqquuatahCZqg
	 GUAPks/G6Ggag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8566C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507623368.27081.1533989368110214037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8222bde569ffc9d5ac1f5709014e4790d97d7426353e1b39501b4039543b8319
Date: Sun, 26 Jul 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785076233
