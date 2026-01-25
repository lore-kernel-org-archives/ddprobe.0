Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EA63EBF2D
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769332434; cv=none; b=Y9n38++zHaFwJgqBmGHUABJh2vYDU0f4Sf6k6w2ubMRJIpWrC7WpVP7cF57bOWSpuZETG4ecboBEg8Lc+WzJhwPHXrllwMzqDdh5tgYFcBukvQreSHsLaD9jBf8jPwWmRycmcADO7dbgj+1MM8/vj8kBrUwQURyzJ/0ujr1c+2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769332434; c=relaxed/simple;
	bh=PiFoXUOMLjYMDgkBLHaXFpXX7FRlqnU2/5mgFYub/LE=;
	h=To:Subject:From:Message-Id:Date; b=UCHqPxAQxP25pxPob8LhBb0jzYPpni2s/p4az8Neczy+lN3BP+PqoymPJhBwA+fM05wz4e3UEX4DUpfu1eYWknhkulvLjgC/TyksJloarr/6mhqebc2uPjeHGxH3EQJSCx25dl156l0ctetIJ1H9cetMFm4c0iN5gN91e5jm/i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAxv/+Ow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAxv/+Ow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7582C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769332433;
	bh=PiFoXUOMLjYMDgkBLHaXFpXX7FRlqnU2/5mgFYub/LE=;
	h=To:Subject:From:Date:From;
	b=sAxv/+Ow0OGwIxJJf+LzvrlJeI5ObqN6pyJoRW2RDIWNQcnFm1ZgqQCRFJvIvMZlc
	 7GvsbkPf7bKhK0taIMv4+MjPh17rnZoXZq8qRKfMWlXrmw6t2qpFU+guABUKIDDqk/
	 u7msiyNpEggaeST8CD3fkyXiBv7UM1nIU3ZyuynqbJfJaDqK/WIf7kcFRTOoFNzVVt
	 TAj4ntOApZXFx8bzuN4HlWaKOE+kk1BsdOctKB9JDqwriHe3UDJeD/MN5YWLO/MeRg
	 S2eFD24ANlZhGPjxPVYQWCBpQ+c2mL5enrDbJtiguU9Xp+QdupRsnvPjylDhfp006c
	 1stByQq2G5G3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96611E63C95
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933243358.25306.14762400771827015255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 984836ae3499f15bbcd2d14b59e3855455f53a862c6151daa9029c1875d9477d
Date: Sun, 25 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769332433
