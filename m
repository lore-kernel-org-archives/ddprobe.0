Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4033431F9A7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779658354; cv=none; b=ef+FHjJsLjcb2fu/RrDa6NMd5jX6SMGpPXqD3Iv9B6AEbh+CNqOC4mjc8D7vjJuxPtRQQFpVeQ7Mo+f+IREG90iBMZz5mdEFlgA/Z6EHpG+vEWkx8+45lwg3Ghmyz74zQ5h3hH5jbOkO4yebD3wBjGWjfQBLxhePyw3AZ2SGseU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779658354; c=relaxed/simple;
	bh=ssyYW9NDf759cpntUbvHwHwFNWblraY/+7rPyIyeS4o=;
	h=To:Subject:From:Message-Id:Date; b=Z3YD6c6JtQWpwpG2lRLIKoVkhPGhJlhVZI0Pny5+O0K3xFrO1UU6wdWm82V84oAwD5EPMep74/XFt3hS7jYJM1SCzHVqcKUyIWi6BHste2vfLvyibu61aztm+9F/kJ1oW8Mz9kkLpioaXY/8Ko3aym2iG7zRG4CfOBkraxwRjkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otBuqFlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otBuqFlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A82C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779658353;
	bh=ssyYW9NDf759cpntUbvHwHwFNWblraY/+7rPyIyeS4o=;
	h=To:Subject:From:Date:From;
	b=otBuqFljkb6A3NUrbhHSsGwE8hQyx4CuVTv7Ws7tXsiz4iO7jlbCnrlkyJw7yTZoW
	 drD6soDzatMHUcn/j0X5qEjYVvVVJBb+QqUoVhIO1OVGmfgLqdCSuMwsfy8Gf1WzVc
	 wVV99BtZ3NmmuNjGFXc9nO50N0s6rHWEpwsJ5vgDQdf19wAajvoGimiayoLS+swfFZ
	 ooV6mojAmm/e3vlz3PZpGo0ApSJO44p2ZN7+YRnGLn2QzLkJzSPiZSKZu5L9ZC46pn
	 RqTxulheEvRRTudzuRccCFD29OoRFXAX4DXehjY5t1E4e/rjiid6yi3EdswZiksrsE
	 bzLwakns6aKKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABE0CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 21:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965835369.9391.8191180610772498606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26dcecacbebe7483db25309498d89d51dfa43c42bdec70a72013f01714d9e5f7
Date: Sun, 24 May 2026 21:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779658353
