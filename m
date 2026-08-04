Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D2223ABBF
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785817234; cv=none; b=WQ2Mhk2kGtqca7IDTBeyPM5uIJCoig7VjPDdwqKTd+1XhuczyfCfWvOYBMrqHUVc9QZaaek0FrUlJAGy/OicMpQVoNwuNY6jy7hNKKb/C1WSMey8J9LBt637c1nqEJbnWuWR5nPegxDAAM0b0WzPwPXc7y+gfSytE+sWQUZGATs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785817234; c=relaxed/simple;
	bh=ThN4YTZHpVOh0kGlzmTvBDjZ81drlj5v01XqI4PN0WY=;
	h=To:Subject:From:Message-Id:Date; b=Y5PV61A31/5tx+IvkrC+bn7JxXHOeQSlBr3LF8I4LuPfaMHCL0d+cHtFaUWpugBeW6k6x2R3C/NnL6Pp/ix917aFFX0e1kAFJne4vghRIUnuhpbNKHQJYAOjZXjzZtwGT6bVRRvVZMNvoUpemL/Yr9LOvVsa7Kv9bCEUYJLkn2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eh9yDpfZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eh9yDpfZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA92C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785817233;
	bh=ThN4YTZHpVOh0kGlzmTvBDjZ81drlj5v01XqI4PN0WY=;
	h=To:Subject:From:Date:From;
	b=Eh9yDpfZW2FoIO+XfsxdU8WVyrxB8bmgZKn/MLJvVc2V9inGoWRTON6bzxgeTASRe
	 CZikGaggKwqaQ74YkkBXDPY0hEQbfTeRgkWUyCLyMJhi/d+Mg3+1sZq2Nel1+UYBRv
	 PFJG6aYO3VkTJtLYK7S2omridr7THg7/hFKd1ZKQGhrd72er4T3wZNuZ9HejIy9svq
	 mS0YYMtzytkrgE0KG5TiTyaAbwZa7THd6evjPc7MCEQacX47+XUla9B0xWH8Za7S1N
	 f8GkydFZGPn/63HpDn2/XoLNl4VFnxP2rlbaGWbBDDL9ffICE6c1dnCt+x4DhuoziU
	 3RCQG3ptvd8LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F60C55172
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581723374.8610.17928596613200685755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ca8a1431c7925c1f70978f1b798a8824bb1946c048690b53f19c1613271f8f
Date: Tue, 04 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785817233
