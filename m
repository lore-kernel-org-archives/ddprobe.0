Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B3C1F866A
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755480594; cv=none; b=df0zVz8GXgse78+yR/1cE3w9NX+KGadW+m4otzyK/QsvlbNhU7GpO0S2KM7QFmzpFecIO+x0XXskXeJolBUF//SWGfI66dH3Ns7Pqj1voA5oNL1P1/YlDveyD/SEY98wjC6qubq97jcZ58/GU7jZE6iv5roB+oiQYCZibBbObHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755480594; c=relaxed/simple;
	bh=NchCxx6TZYVGhdRctuwmSpZQT83BLlAZEdooykyjqZo=;
	h=To:Subject:From:Message-Id:Date; b=ntBVqmfNgERqOIoU5vKWZBWEUXDmapyAfnoFWrJXqOxJAhdkzDjFVsxJ/5KOjXbBhtkEKibKQLQ7FlnsyZTd2NBIpwzww+wHVmewnO/9bqCIh0o7Pb4smBfDA4yr5am0Bw6d032w2l8aO1OG+ljb8Mud+PaMIlkP2tEQslNLrQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJawjlEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJawjlEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C65C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755480593;
	bh=NchCxx6TZYVGhdRctuwmSpZQT83BLlAZEdooykyjqZo=;
	h=To:Subject:From:Date:From;
	b=oJawjlElU49MepUxbGURjeYxDB1UEZcgXFstrflq00bkMBuq9cNKysoZ0PTfgZJUS
	 8kJVqeP6vHa6zomCkS8rvKrLY6REii+9KUHFzN1q4AGCQbwCqIHU3PfTpebl+BOvuy
	 nwDfezg9ZbeYiKpG/b3TrEC6FO02Qqv88iqzrcRlRZHD5Ml9SwqLcq0zlzCEwXuG6K
	 lKQPBpEJ1utrtOsqiBnXrXi5PEcBjSK6mFIFEwQslP4qgwdoBspzE9qWjrvQytULUc
	 Tdxru9OB1XedBHhAR0w1aiPFMs5lxpz17iMZydgutApjjdKUEW2qTMCrB3rWUiy7Zn
	 gYvkn98oRmMZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A7CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548059357.21248.1514508475688069798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4c9fbe527d95779d9e548b4080b295374d88ec0138cd52e26ae0c9e1b58b14
Date: Mon, 18 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755480593
