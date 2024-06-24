Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567AD8F40
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719192743; cv=none; b=j9Z0DRp3i+ATHRcgHgn9XAXfG4OZsW9de+o31vn+3IWt3II1mZmCAxgZFb6uk43iqHgwl2F7TbyI5JQ3yzvR1Zq/Xy0KnLT/AIemwCoA2Rd4IQA7r8bhqAD+ICn6x1mhEJo52lYwQJqOXuu4du1piWEE2pGA+55rzp4xn0Ia3M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719192743; c=relaxed/simple;
	bh=B2F8Ay1CzDi//PRNseKRAPOcNz1Sg0H6yOg+enE+Pd4=;
	h=To:Subject:From:Message-Id:Date; b=N70x4Tn+MHl0m/u2IeMScI13VWX5LiLjI2iAyhdOoLe5NPUKISadKl7dUhvawcbDQtUHOk8mnlnWUT5czNrMKNi7rS9p+vVpo8XlLwZ5f10d1PC2DYduhO4Slp7X9RRc9uDeOehiRmzHtGm7h7EaPumV5ZS7ug70IdTv9bEmJ6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgz9fatI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgz9fatI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84A9C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719192742;
	bh=B2F8Ay1CzDi//PRNseKRAPOcNz1Sg0H6yOg+enE+Pd4=;
	h=To:Subject:From:Date:From;
	b=hgz9fatIq960ws9aS1VaMiOBAQT1obmLhqqqsMpk38sl9Br1Ah03umKo12FI3BRyx
	 ooY+VP/sE3/xVZKleHuzZuUidltR47J3P+Vp0KOXXiWE6Q0pHGXH7GJYTUEeYxgdO4
	 kiyUzmkSyt6Tzk4Nw6WAwxwQwUOjb2Kalg1MRZcgF+Z06GcuSASZlRxut3FKOC0y6o
	 kc0Wfr5jkUdZGUGexgPysXBCACbfM3StP6N+UFSESvKGEaiJuKgV8HXZ2jwsaK/OhV
	 XplWvYgl5HoFdPhBD7vMCljYhgP1buRGqO1ZasVGRsKBoE7iUSa3AsQbZzF/YLKkkj
	 AaWhK3kbEQ7vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2706C27C4F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171919274275.12948.8749364525966226052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f2e8dae94870d6f0dea6fedee19837052946cdac7977061f14d95e6fa62c4b
Date: Mon, 24 Jun 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719192742
