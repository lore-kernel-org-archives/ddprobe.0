Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479E52DCBF5
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748149194; cv=none; b=BD4M3lvbb5InzZRJYvV0zqh025pvKDe6cNN0VHVCTQVUT8yEQ0DfmYuRPM5SjqEzSPZDCWr9bRL5w9ImhxzMss1MXQA6rgP/6pdGMZdxr7BUNhzU5YnbSx7x8XpF3bUy1OyWY5zu32q31IEkYBgnOdXNKPm97BuXBx8DLlJ4bqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748149194; c=relaxed/simple;
	bh=RAxNWdFMIeuLpRY9FL/n/0sXpttOQVRh2VZ7kfTfF3Q=;
	h=To:Subject:From:Message-Id:Date; b=t3KR2ePYpRqpR8owg3w/qSwCpGq37xhH1f1L+xHvobDE2+Xnz6pGNsrny7z5ym8gZSamXr5mvCQYK/uguDDnoPVZsHrwzMMIO/Hr1JupO5Mkf8Tpsv5w/jX+ex98im5bZfPJfan1Hks4khTDRWbAkMint3JPiTMixBpbwCI8H24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVpwYl+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVpwYl+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB557C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748149193;
	bh=RAxNWdFMIeuLpRY9FL/n/0sXpttOQVRh2VZ7kfTfF3Q=;
	h=To:Subject:From:Date:From;
	b=IVpwYl+4Vm7fIA8vUmKCj0Y8MFngLvci2/o0GiDfxPl0FbkWhVieizim62ikqThOl
	 IXMB5LdA+0BPKmUdgSDyervxfE5RLVRGPCkhjxOOULG9B86m0QY7HjJhxtq+ecYzKG
	 vaW0cShMXwFvES3lkz8FkUkBwza3L8c3is5KJLc6bCzuPSYkh1LckW4EFsFgKQfwuZ
	 xPqWvf+qFEciOXUCXfHtpm1tabuZ0M2Hbu6IZw7MWtUKy4uvwP7hinoG2DzuOrH3hH
	 x5I+kc1kvAlNjYvsSLrVkLmg/HqeZGtLjwcqMCPJ62aUb9berljdgkutLh6uv64XBB
	 XhKZyRWsNNs9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97596C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814919358.5161.9300492746894590416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6826682aa44e8d57e3fa4d853eda364aaf74f255f462f8892b0f44150c9253a
Date: Sun, 25 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748149193
