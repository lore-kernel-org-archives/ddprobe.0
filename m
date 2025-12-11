Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B27229B38
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765485774; cv=none; b=rMFJhxp+2rMuKeJpQCdfYygBQ8uR7Rw0QW2dQR0pBE4xG/149dLWZ33lQgB9eZBawxBYVNiqIdiCKU31YglMEaRz9IQnL4ZDhae+bCwOKcBephV2zMk+7FKUe4KjX8UaFOeHFWvYc/KiHMg0/b3oATrM6514fOQ9X0N+WgBXHWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765485774; c=relaxed/simple;
	bh=YTmGcbPHlT74jC67psxaNZa3D6HC9/ZBSGlk9YoEtp8=;
	h=To:Subject:From:Message-Id:Date; b=i3z6uNsH3RsR9l5PK0THXeQAYXbd2p8h3a3oajrRjUMwVmrZ1TJBoN6m7VCQL7WzVmfVkk9VyqyoggnuOp2MTVlVyp4gbGKwhmAKh07gyh3L3fzEM0ZV4oTo2iZ+7zk59kIMjR0mUJYFXag0vHsY3Wgrw2YYwLvmbAxiPi/eXGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxoy0LLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxoy0LLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB118C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765485773;
	bh=YTmGcbPHlT74jC67psxaNZa3D6HC9/ZBSGlk9YoEtp8=;
	h=To:Subject:From:Date:From;
	b=sxoy0LLX3OHky1Lshj3/ElX7BG/OGnPRQPQ+IQu0VFNGmE44vT0dUp6ju3BiX9/es
	 tRmOt4bs34oGgGdUGfBI55hQ4ureOTLHtLHXTRsovq/ox9hPdYI/PutlILr6c+psEK
	 gV9kZxmT9TjQ0kxsSHTKpZhJhe4OH/KKrYJ6HlsXrrsKcjJf4hcAyohPqMwlHLuVSr
	 2nvJrcB6ng3G01fQGE2AAMKB5jvl/V2+oUG5ZT0Rh0BPruisYzu1Z1K9aEy5R2a2BY
	 C0F2G0aRV8/YD9NzJZAnQkDYLrbLmmS9/OLVepLMim2NF/E2Q7HWygAFWoxKXPwRk8
	 wLdswXazjwVjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963EDD43346
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548577360.27050.18089745846058885516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6c80d236675cc54d649ce24d40a942d72ad4fa1aaef38da5947584681a6cb6
Date: Thu, 11 Dec 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765485773
