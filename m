Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C69120EB
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 11:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716204143; cv=none; b=qbKg/IYrzSORlhUgmk1YLGTTCoFXC3M4QzNXqkbKjAwutPauVpNw7US0W+rNj89e6XXHAKKYHs7sQaim2x5DZaPszuDFzm7Br0rH2V8yObmdVpSOsiP6kSZxt+BJeF/6227fWQg5mAEK7xDUfvTC+PRE1pO/1313IBl2xY0HNDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716204143; c=relaxed/simple;
	bh=x9jY973LzId6sHafxWEVAMrtXjewrJF5N1HhDynGyIs=;
	h=To:Subject:From:Message-Id:Date; b=sktVIpffQUlJh5Fuhx3Fs1gSBEtRY3rLGoyNoYUH+ljXXaFJMnyJLiIrhowHygXJE4Adc+8xzfXLhpTyUayXSzL6JrgxaE31jnY8VijmRjLBYz+pDu3dAzOllzHj772J8i6ajm7g9v5j/MwjqRHTK7maM//8wDh+o65/qAFXdDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBA14rZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBA14rZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB942C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 11:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716204142;
	bh=x9jY973LzId6sHafxWEVAMrtXjewrJF5N1HhDynGyIs=;
	h=To:Subject:From:Date:From;
	b=OBA14rZ6OJjRnxMkrrN6OVq1KGP6oSfB0dqaBhgCLFV3Ad/AA666Ehu+H2fQu6yGN
	 1uzMOsVwvQuRWj4elaUm6yLupN46o7uOAbaBnqwtXxJe1jM3Yf5uafYc0ihyuWVJ5P
	 VmLB3N+gPGxbXqq63/Y/YWPVfaW3ibStjHiJqKwRxqflIN4+t3Aug7pKdR58LHoZ7B
	 xLIBlCav8emmGRZbqSAs+ieDmfsjASIpvZT0xkFwVXE3TDy6T7ac1YCXuKiFZlFt0w
	 PJrLtUqwosy5OkVvfQnrjtfMmdillrq8wHnywuqtNcBBFt3f/DQSKt1Xz63dhcvUQz
	 gi1fzHDktmEiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF27C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 11:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171620414277.26585.11722402385862702616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2afc87da476834ebc1a1eac285dd7064c2b66027dffc58aefac2b3f7bf0161a0
Date: Mon, 20 May 2024 11:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716204142
