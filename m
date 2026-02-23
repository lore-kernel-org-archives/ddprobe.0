Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BB4221726
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771875894; cv=none; b=d3uFM5ubMbbL9mbCnsbb1VP60dtoy0259L0yvJtJeDO8nUptSZx8w0Q9cO4WLRTI8wniqahHQTjAY7aBaMb5aGrZSZMOL3Apc38RjyBLkcL4qXWmrziLTYZazPUKHRtmVjEJ0CJzwe+x4AiWMcZB3AAVPqM9DVIj8tYBLDk4UhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771875894; c=relaxed/simple;
	bh=WGlKmPaeYfK+kj/G9uzuX9dA4tf+U7l4252WnrtrPZY=;
	h=To:Subject:From:Message-Id:Date; b=IgUN+AbqTC+dccUqfWXI2ShQotmNcf+G4MrXQz6CnpMoSPBPVgSvHXWpdbXSpP7x3EdnjaHKkVIqoasdLDLcXROs6t9XaD5nr6zOTkAvbZlbTVfNPj9ZJkihnb33l1eIslHq3V7ffdYuVDs8nAEV6HKQs3fZdigRmUwQQY9HU6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxgpAy9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxgpAy9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF412C19421
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771875893;
	bh=WGlKmPaeYfK+kj/G9uzuX9dA4tf+U7l4252WnrtrPZY=;
	h=To:Subject:From:Date:From;
	b=rxgpAy9p8c3ufNcxx8b8myzL5ls4Oazh9XeAR3HficZLZ9FHFJXDpLgGJmbEKCX1R
	 S8VVi9PcHCTv+52tITxu8twgi6MJ0ytaMsJtW2wHYGbxx7rCmgqv5XOzN7ht/Ra5nP
	 i6xYhRPJsYSTlY/1thPwxGYCpJ+hT9MAB4WKB9eyK3aMwN1bl1hRp3IfNdDZtdUU97
	 5ZKXZtJ9jEmds8RXrsHFaGwTJK1GvLZmpqPTRtRMM0MLQd5f1Gc2nhuODqC+wWntjO
	 +KY7MNqoOKM4kYyw7NdO9vUlPOsGoUd+hay15O/zXqTFMp0uDRh7xumgdf3iE+1GoP
	 gm1aZynnQytCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE97EC1120
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177187589359.4933.16546598959974233645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e0c497833f403f18e59473d525fc4e4ddec31e4b0d5ff7149aac799ac7f1519
Date: Mon, 23 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771875893
