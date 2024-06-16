Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 848C37E9
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 00:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718496503; cv=none; b=GfguNVtDsi5IL73HODcpFq0VeOG3h5F0pONjA8Fu2fPBQxshEfbLZ/yr3W2XFUZe8ZrdKC1JQ3LVW3IE+kV/oV2emEjlMOblaZ5rH60HXNVkMjPObpdgtDqOMpo7mNcJoMH4LRETo03qutAC5m7RD5bWmjPGqw7A3hBhNvdjxCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718496503; c=relaxed/simple;
	bh=zAlBVHm9xGqfeNKGhbIcRunqytvsqmr5emfs2jS7mgE=;
	h=To:Subject:From:Message-Id:Date; b=oY22/yUJm4ZSIWc0Qms0qLIfNI95D7ObhICobD4KQjyC0Xw0SOcypxZeUYeiJsmaZCe6xc0QRauZBa7FVDwrLHRXT51vnutBgBJ0VuyDKEcK5hD48dZfM2qAiDJpHuT4oSswcJWcQRyYmxFhWwTGQliCjCzB0u3VI2nQ9IzAhbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/xQ85BJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/xQ85BJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1BD4C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 00:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718496502;
	bh=zAlBVHm9xGqfeNKGhbIcRunqytvsqmr5emfs2jS7mgE=;
	h=To:Subject:From:Date:From;
	b=Z/xQ85BJ4hOd+FtX9IwGrvVxhWX5/4uu6WlVNqcQ5t+2s20/BEZO0aBgjy1NJ8PnB
	 JVVDvGaFbSJWByr6WuO69OjBvI5UYdV99wXkYLYX8IH5c5lj3KGNMKA+dSPKDU4Eh0
	 ojaPU1ysHf2JI/77Nr/O8Pv63L1DBGK3s2+WdFY3KaP7wCyF9c3nyVXdBuF+vdecjR
	 YeQdoF0hyAqBh/rcC/rWE4aXms4s7hO9cCng0PGKWN8K6xEClbQVY0C/zInkC9/i0y
	 6+0QAqPrGxZCJ3kpdiCLUl20gXE+i0177IRY6RJreltTMnyxF9wy1N51jnnvGbLIa5
	 J/qWVdsYbHByQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6062C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 00:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171849650277.3455.7384457648969106290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a0534873b626d4763dc9845493bfd4ce3fbe4181fd0d843920b489311e2650
Date: Sun, 16 Jun 2024 00:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718496502
