Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CD82110E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767247434; cv=none; b=Rlpzf198L8EIzmvVjtoQjaPXGQ9BPsBlyF5QEGfyP4rdBUKGmpkpYL93Xqx5/z3boFA9Ksi8EhA+zwROTZFk5v+M6bW/DF3WEZh+s6Gjj97qlAue7ebPczO5eLo7wHNsuNBAKGYo4UGeYym0HsEk2R8qEP/a5FNCNn2w3yCLews=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767247434; c=relaxed/simple;
	bh=6bvpjWT78jqKXLHfh0LpUXpo4uXYb/f0/5wJwWSa2cI=;
	h=To:Subject:From:Message-Id:Date; b=m5J8AROS1crne5V/iirn2b/XTSF5xQPFGZAO+m1AO7MFUbaA72ylCAzjaT8cyJfUnH8o/M9fmhmnkuels4DFqNU9CCrWHn41S6Vseqq9p9TyMgGYfHagCJZeAMTh1GeZBLGIGH32vuHZ4uM3fLhXhrsbGEGSW0MP09CAiOHmW7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4j5qzLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4j5qzLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A773EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767247433;
	bh=6bvpjWT78jqKXLHfh0LpUXpo4uXYb/f0/5wJwWSa2cI=;
	h=To:Subject:From:Date:From;
	b=d4j5qzLkWF5hrAt7yP6ECwgeh3Z1vFVyvjSW0IAipqLPqx6az+inVJh3jqUGjN+Bm
	 bEw68szHAsh3nSLxbn1g0tOInoJsNtE6q0BSRHBqONaw+WW8/JgVbx6o9DXX/YBqpt
	 Ler4samsjQb3kt6tJZGtAV7cU2MtXK8HMtQxPvYqgH98AcFxeKgvizuL6ulCm3U53L
	 P55GaQd9XrcKiMf8EoiBfWGDIyadqB7pErVsdooZd5/2BaixpqQHWWWuTCaq321tzZ
	 9E614d990eZ6MLn50qY0UJm9PbCFS9UnXqBTu7bIRQIxQESs6E9SmyBSvnGgsQpSVh
	 cxnyZepi5RmIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93130EE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724743358.4793.1707780494076729346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e817380f77c5539780e8dd1f3cd8031fbd5a708a1e1541a6f7ee28e345ebd3d8
Date: Thu, 01 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767247433
