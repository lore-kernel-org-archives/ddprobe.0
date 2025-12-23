Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2433C4A21
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766491434; cv=none; b=IsIFI7jGXHuspP9UeSsSVQAAQmk0CnzzFxuIh+8dieVXWxKBmMA99DaSB/5vyvlTM2I32Cxmwzo9UKo7vjZqQo2Z5ICoPebatdtsLb2KUsXr/27KzawzvI0VSRMj1yZ8nRdy2Z3WNYZS7i0nwXNmkzW0TnPfD91+RATBZEP1tz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766491434; c=relaxed/simple;
	bh=eJ70ZdRhCtPlmra/ScASy87gZqEQc+kvf7qZC9OX6AI=;
	h=To:Subject:From:Message-Id:Date; b=ETYUfpzeo1FKAIadQ1xB+6CkxkCIcf1yh9KPYZhCC9SDw61eEXN2GG1t8i0go9vZSZ1/u0rBefguDPIAioJ5EBDkB7V3elo+arEXZ7mBX7ZjaSAjG3LHDFqWdHN/LxWrbSONZmHtonBt8DGAOJcNx5lvjnFrRLMy/vcixeoxX58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DE53bRpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DE53bRpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6ECC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766491433;
	bh=eJ70ZdRhCtPlmra/ScASy87gZqEQc+kvf7qZC9OX6AI=;
	h=To:Subject:From:Date:From;
	b=DE53bRpn5F+lyRfRBm408i1AIVnWss7WdLB7RX+hTVclFQtSxQJJ3Y/keg57vduLb
	 wXGU84rnmuMfaNE3VrIKHLijOE+spJPGsnH3krIIVbEqtDide5SoPxAp4kk4wKlkMY
	 XGHqFdZ59Fmz7vwzXUUoM+JWhK/PzgChOcxouRzhBepkXJfk+zDptPfbIsZiQstgL/
	 Vn3k/4QWe1Jm658FjESqd7uq6EWt4dPOGH0z2rEYwf5uCCN8JZqkM2/z5BUK+flFlB
	 4JK8KuEI5nYrUQWClexFrsyA7V2XrJF2/nHvL5DSCjMxNURRDkvf0Wu3KTwcSrbTl8
	 roSnvzW/nh/zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9050DE6B272
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649143358.7790.11044498874620767106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19c243c190d20c68c53968b7bad163ddfa154a0bc656a7edca03c33a8640d77f
Date: Tue, 23 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766491433
