Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D3B1DE4EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767824634; cv=none; b=hpjOt+qDEFkh9p5BLyPwaajLAw9zPPQWAbULzJX5Sw+5ZeNG5VFgX8GIhAIV9MlG/z+R69U1ChnU4Vx/hDQv8WgbsnBzEpTtNF4lRVY/EgKsbYWMPvFIp9oTjM1qIQjDSFGTKKZFQnjSU0YNOBFpEfxYRV+J4QzyyfycZ+p5kBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767824634; c=relaxed/simple;
	bh=lY7QFzGF7ydlhLpDYCrq3i+98u3r0p2B0QggF+eYNt0=;
	h=To:Subject:From:Message-Id:Date; b=dBvUtnPowV0d1TiZoQ6ObqBXbbhzEqG8GAMukhtZe1q6Z07/ruFEE616oUzd9DRoqjM2hMxmzgFOWzwrkqeMa08WCsQLyOu42/ESwdWaPDr1vyPyxQMwonsqp6FitxqSza7HkzdQS+PzBFXbFzijKpK7R4jR7m10Sch/Veq+c1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThQ3o7RO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThQ3o7RO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2BAC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767824633;
	bh=lY7QFzGF7ydlhLpDYCrq3i+98u3r0p2B0QggF+eYNt0=;
	h=To:Subject:From:Date:From;
	b=ThQ3o7ROz1v4yqOb/lZwf/CxO0ZM9hEA6KV4GjRR1tJjX9rSIpnzEJodcWf5VvRDk
	 E1A5VhUURxYYlgQxotQ7ZdcsFxAy35IKS5yTeiiDGeJILzKbWpqJspHvClbleW8QKw
	 RKAqh3vxWO8nQpmgDj8XWQda72DVXWcl21e8JLwxOhpLke1W8Y2Pvw5rG3jeDX1kvn
	 QHc7wVPVN5mMucquVlhLabGMKw7Q8hTgRG6frUuyhVx49306scZ+Jb4opxobZsVfeV
	 0dMhJT1/Vto9K7R6sEEElF0pHdRz7G2cAOefGOmCnJ+nPCZx8YvTl9oPCHAjUyOHT/
	 ZeWOQjwWjVo9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E37D0D176
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782463359.17618.1966071829583879450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d3ab76da2637f628a7151bfda03bf94057e4f1ff705e650320a4ae9ab94ffd
Date: Wed, 07 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767824633
