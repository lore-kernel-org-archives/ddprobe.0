Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FA3342CA5
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770654234; cv=none; b=YVrvmxgLcIJH9tzYJ/A8ZBnACo8K4gGGSlYimSsbC4lKzkjzWtlRVcGB3Ca4fD0YkJL8XEFZ6Uyf9qP5QVMCYUJDgTCOCcV/dVJ+Y3mhUSJSyjLl2bS5WnDalTKGiYgzw9KpPJzdey6ZZuBHXmJWl7vH9WHCDs4nVgbHZNqFrDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770654234; c=relaxed/simple;
	bh=o33BLkSH0Bi51Czuxk9RJTQBgojYS8WZBK82iEmGpk4=;
	h=To:Subject:From:Message-Id:Date; b=ijsBtLO2F51/NO74WLka12/XBzvliiRW3lgxovZF01WFwdf4emqSLkCgOuyS7NaEQBrAARn+WTYQwPvPH4xf0YhykpA/VvWaUmk6ChHaYzy7wBaSFlzTlV28MPjj1qhQs+0GsDsvhKIf7/TVMcus/7BoyYr0yHvkF30Lodo60t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGPPJeWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGPPJeWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C94C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770654233;
	bh=o33BLkSH0Bi51Czuxk9RJTQBgojYS8WZBK82iEmGpk4=;
	h=To:Subject:From:Date:From;
	b=HGPPJeWHQAZWhEfxkSVGJXxKcK+jMImepvJWLnXj7IvbzuparNsNSqgaFPF8nto0G
	 XwSeApGrcqGXsUPcL4PSbJ6SOIeKu24eVF1ISm+tR3eN0RBDOFBgIfrrTIM5SWYyPy
	 x4lpb5dPsVd1cbTNRAtHOms/TLudwQXHkZhueI3x3CdMcUgFqptnnOobl80lBVIBJv
	 xDdR+FaRL5YHL05E4E6RGhJylyrwOYKXXOZMGlyZJvlXtH6arORud2tMtrwqmTJjBJ
	 FePO5zfRKcMsbO071ykyc2wD3mQdNaG9GV0Du3P2X5kC2uXtIBcG9aR299Yns9G6ux
	 fmCsZZnKX32iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92257E81BDE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065423358.10667.16391828266158410855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f9b7cb66e901665abef30cbebc44235b6dfe8f0e8e2320bc99080cd5836187a
Date: Mon, 09 Feb 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770654233
