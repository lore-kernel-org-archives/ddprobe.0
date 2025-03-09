Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F048184F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 16:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741537734; cv=none; b=cjN8CF01cfurX9mQOmVEwHLYl7bqY91uRl+QSTxJ8bE8cSkYwG+i8I4hVPUyididoTqSPjKo7stK0bY/rCQrxUoiMNLyoSWrhTWo3QTK3KpNxEXrFTu2bgybUItEE4EmrJOO9JarbP/5fn3ozeV+iihAbzrOOFGdtKvgh8u3IeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741537734; c=relaxed/simple;
	bh=Z7gU69SIOhU41mv9XXfg+MDDkSKWr6sP0twI6/kytxU=;
	h=To:Subject:From:Message-Id:Date; b=i6kr+cU97HY6dHroQeIfm/n2zYi618Y28d6PiNsmUSVZlHPvO89fAI681l1qYZxe4wZjEp8SA70XCz6ygI/7l7152+UPAPZGYk2vDqfdwKSPAK6Hppo3EMyXfVWCb6vEjI+kah+p3etm+a0enuT9Usjhrqn530hr9ZT4jslcKuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkhjPXe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkhjPXe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3BEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 16:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741537733;
	bh=Z7gU69SIOhU41mv9XXfg+MDDkSKWr6sP0twI6/kytxU=;
	h=To:Subject:From:Date:From;
	b=KkhjPXe2nKg9ySpNEBjlp4nfYseen8N+mh50ZMZge1OVEY0qn2cvXp6APk3iwdZyf
	 1w7Zyyr1Q7wTB+jE3yYmZjGAAtu5KSmv5fJRgIL3HeVTbfpKJt+u1E9Pz34BWisdEz
	 yCnTO14f/iaUQBS0PjhfYsOtFX73Xr2dIK0j2pYDZH33L17mJKUO6kx6BkvVP+Tt/F
	 ydpn3pUGlTjjjC0VRz0SF3eyWmseO5w/iWvzZB3QniSE0lIZjpX6CQF7bVKGmDycg9
	 nIHvWA8mpDwljiYldI7birHXv4O6h2/V48Bv4CFq9iGlX0t8ybPzu26rfQfdlH/KmD
	 Kn4d+mHXDrTuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E10C28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 16:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174153773358.11605.8650684188093981465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 488ce48639ec44f991dd846dccc3a0df3ad33c805309a6b971cfeaf6f4ff13cd
Date: Sun, 09 Mar 2025 16:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741537733
