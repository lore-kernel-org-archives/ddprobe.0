Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386AF7081F
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745738395; cv=none; b=sRxhRuBVY3PHmfJoxo7sG+t6SlNaiL23Qub8GL3WNYINHnx9nt+ZBLLNvJM+tfoBZDM93DNu/Dcyd8v2jlZmGMN2c0arZGuyA6nl/hfWTiLgtInQOaSUvcM928COdoqnP4O6VsxigQtCbADybGetpyuLdQv29XQQciPQ6FtxuJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745738395; c=relaxed/simple;
	bh=jZ5l38VxxGGhTlYc5gN1JaBYoKYDCGh+th67GoiA1a4=;
	h=To:Subject:From:Message-Id:Date; b=at8Shn53lNwjgQkYWlbZ6lIUcyvkHHtsyfCpDDdftscqB5j2pOSZ9tSrJ7K5QzBFzNXKbA+bpow9XctL9zsoS1c6bMP3gu4//tFEZ4vlol9BSswQ1HWJuWi10gBtrhI1CPhrnJlOL2yJASvP6R8rJ0XLszTCj8RYMFkjq8pw0jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyMLiw/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyMLiw/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F580C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745738393;
	bh=jZ5l38VxxGGhTlYc5gN1JaBYoKYDCGh+th67GoiA1a4=;
	h=To:Subject:From:Date:From;
	b=LyMLiw/kueMp/JxNrl/jDl31v2HbuuI30yUp6RDXDcCdvbvC4HDwCpwIDuA31IQup
	 9xRQ73TDxDyanwI1BGFHmnSr7wnSglLXoMR039Jpc320UG4B0o63jgkeXwOTl6NMs0
	 +Ea3oDWJgDCN1ZeOW258P1GGoNZewLwe5z5qYemDynEE3zdViA5FV+0jLFHV0g5cMf
	 49ARYhrmO1yW20svFEVQWl8YHkizHEXeaBUZjOaw3H4sJhqqcZHIqxtQc+eudgoFhM
	 KExXGCoHyZ64ANM5SCnalUAf279DQ5ZhcgYFGqzmdBb8G6FfxeK/o7nejTuB/ewI68
	 IMUPbSnjaBoWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA71C369D8
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573839357.17122.5473486962421565280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d298e46c5f8400dc268b5322e02694849c05ce42f5a410601a542d276c84e9
Date: Sun, 27 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745738393
