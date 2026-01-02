Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16157217733
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767366234; cv=none; b=k/blgxaAztGB43fFby3NjkZi9CThVyo/6W9W7or0wnNDB0Qx69zsYN2qpRr3gSZuR/irlo2zkyM2zChaeN/7gFb71spzMZC1q5uFSHwObXgvuet2UMWwHAGnomVrlHdXFr9TTrm+tOGYD8f6luNyNC3RQXAXxJ8BwCUDbFI/J4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767366234; c=relaxed/simple;
	bh=R+3gl68bTDgRQfJgqjEB4RqQigHL4yTNdE01wS3Pm3c=;
	h=To:Subject:From:Message-Id:Date; b=uyJZK6M9kxZBAOiGoMGowTfRtTEz8P7Qa1bnzfiTEtlU+IVopqYdDq8VTNlz7o9bP8l6lPdWmTP15OnxJCl8/nAJJ/3K/MZqDgUF1dp509fzFfgWfNxDljEkmrdZRWGVxp4TCokTwG7r44EAdwVQQU+6/YisWKe742d8iT13JU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZIVFv8F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZIVFv8F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32ACC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767366233;
	bh=R+3gl68bTDgRQfJgqjEB4RqQigHL4yTNdE01wS3Pm3c=;
	h=To:Subject:From:Date:From;
	b=TZIVFv8FvaNMM2h5ZD0QUxkHjBIrkiVZf+o6bIDmviXoV+NXGie2+NTZWDaHF0cPz
	 yMwmGGfdTFhONcP5HtV6RdHZhOyM+3qyWuWh0bdKRezKhEbxo9qhnvXFodjPD4pNGs
	 nw33pG+hXR1yBvG3zofWR5pHcg0BuZvP3DwxoR3HG3kakdZyy9kp+d5EwhjaFAA4Di
	 7F1Jsql7F8nPZOJcBiIhlWvcsHaDsHB6D4vvb+NE+LD/dCim2WwPm+FFezKuLTkit2
	 RMk6D3Ng2BPl7ifSQ5OxybT5qLLOFid19nMY9YslV8R9xRoaM0rnwLf+opbGnffnie
	 nATyMkM95F3CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AF1FA374F
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736623358.28924.5695638078675629933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b25aecfe0cdc6f61e6329e8cbf1028d1c6511bc24fa3aeb02d042293a97b64
Date: Fri, 02 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767366233
