Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 893212512C8
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782053794; cv=none; b=RDuHM9YZpRTEXYgrBBJzE9LKJQItbimqeP/kZ5oVRKvCKo7QQsbxkq3Zp4caeyKb1xF8bamaTgRx330brWakD/otS/mJYgLBmbOULFnTjLN3wSYknC4HrGiJsTsWqj3PxVWxhuh4dn/ciGlD0mRZGq5KUgimw5n3Ohr0dZx4EZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782053794; c=relaxed/simple;
	bh=5MiAtH47Zws4ZlRKzUICzIyYLw8uyx2g8LQlzEASdd8=;
	h=To:Subject:From:Message-Id:Date; b=JLYJo/VT9EOpehG1uWYOzxhZ2eQf1OWY2wWgEw68mPo8dg9lLlEU9rXjweXl1vViVT1jOPd8YvXyvvXQLtKhbH19cOCoOdaBdVfylSLDmFPmUNUUKRA1qu9ZPwg/KqMTFxf3DLebd5cBorM2USNRZ39fXyuNmpbJ/JQHO1/x9wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukz0d2sH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukz0d2sH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62FFC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782053793;
	bh=5MiAtH47Zws4ZlRKzUICzIyYLw8uyx2g8LQlzEASdd8=;
	h=To:Subject:From:Date:From;
	b=ukz0d2sHlkih7kHQeO2QEdjfGwY0hGyBYlfSplibET7dUS92oQjhEz11l2gq57lkr
	 Fezj4XMd5D8QAV5hwN6LqM0PBZ1H3QhHBU/fwhoFixqXoBDCslhXBbT1NnxLaZTIIc
	 3np9k396SRowFPGlH/ahMJDzOr7DPdqwilr0I+dQuv3Ys3EP8NQ7tl6fSGaM6pW9wA
	 T3mvrpEjwWlLzD8OeLynBWzW+LHUiQALnD6PHU9OVjYyP1knZlAxiIJMV78MCq8WqN
	 wiJRYUgju7H11kbcQ2NV7De2TXXX47w8C8IWvAIsM9dXoJ05fSgP92bTz1CVpUX0Hx
	 F5zI266Jzr2/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8132CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205379371.4010.9277905640357677269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0832623700c26f0b6546e0433d9db93291a61e8275e68b3b764d519a63561a35
Date: Sun, 21 Jun 2026 14:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782053793
