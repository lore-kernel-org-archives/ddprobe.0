Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E9A17CA1C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723471554; cv=none; b=XDbXNxz5FS+XQNWYA4Z1pgzl30Rc6XRwMWvY+PADLUlSXIiAFQNyEIeP8QDYKmNxqsYG+ZzVPIOr+nq3xFBlNX4KE8TgaHNog4Do8lefngiWJYAL1ax7TRRvIdkx2m4b97AD2+S6jSJ5qnJ8e/i9fK7OpbZrV52axPhBJXZmHHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723471554; c=relaxed/simple;
	bh=YZ22K/xsP+byflk6FiAkBrLreIDJbYX05ctENBHurt8=;
	h=To:Subject:From:Message-Id:Date; b=d4wL1G+GAUOaTsJmrzHTqKDUJvbitYQn1K5SF1OHqHlgJZFJBuUQpddgq/6YQuE4NIXVH+565cx2P3J7gMKRTkrwGjXlK2YEzsTEd2IQPXdiXoDTF6lgbhCRV398Hqh/PwEhJNi2QARc2BT/09NVExNBtJ4BWtMjMdYJKkI6Xog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3TaMRF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3TaMRF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF44C32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723471553;
	bh=YZ22K/xsP+byflk6FiAkBrLreIDJbYX05ctENBHurt8=;
	h=To:Subject:From:Date:From;
	b=d3TaMRF+5BMp4CAwR/jq1hDGRwppjgm2+6qRyJ2p1Ht8K+umsX4SUQpLI6ZcqBq5o
	 W0kSvEz+iw7is80XeDKFnx3Lp6lp6D40CCBjYNsIIeWZCQjGSKxAmbOVLNjinSrUQf
	 kcQGoUl6pKrbkR8c1JcuSyErohVoeI9SZeLI7aj0rpeADqCPSKcc3LrXCkpd3IVAjY
	 4MlbPGvjpcHHU6ZbBjTinrZk3YME5TOemAtRdyhYwUWQiGme47U6Zg+9Y+UMs/sRLD
	 D2nlXLTFxLprLwg5r82nHAbtcJlY1ea3P707jtqIkqzy+lCixR5FqEKvtAtXXDP4nE
	 2zzfbx8Zof9Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9134FC3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172347155358.8346.10183738739084730112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19eae2fc9156c47ded4433c5f84e17c2f4c46c04825624e2d1d209aaacccef83
Date: Mon, 12 Aug 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723471553
