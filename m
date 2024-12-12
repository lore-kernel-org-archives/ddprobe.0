Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EF03C38
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733967954; cv=none; b=Dqrp0ltOdjY7xrcoQFtRF2gzSuKsuXYC0tDmDjSzohBqTaL/PVi89McG6+HGLnzc1m5KblFCK7NMWWuUoFk7N7xT628dJWmJhKFlpqMEdgweJc/w0WncBL/U46zzPUcaIg/4nyhLEL30w5j7lTx6FQw4z7pWUx4EeCbLes0Zq/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733967954; c=relaxed/simple;
	bh=dJycqeb/e+Fgzizs+Vxl3kE5v4aEqmGErxNVmKI3OwM=;
	h=To:Subject:From:Message-Id:Date; b=nZrkDiK9CWK3lNTVURHl94hmwjZ3SZj0+iPKM/E6+VLr8IC2LoF6ro6+5KSWlzW2BFD5bJZkNGtjIHI3tvaWXqmNOvQS3TzJWT5bzYJs06n1nSrlIr9r22vm1vvuT5ya52DmhXPLFYEXzFdR1t6kd55f2+bhSM1OE2Bx8LPK3g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2oKcP82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2oKcP82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B0BC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733967953;
	bh=dJycqeb/e+Fgzizs+Vxl3kE5v4aEqmGErxNVmKI3OwM=;
	h=To:Subject:From:Date:From;
	b=M2oKcP82Y/O6gjIKCmb4KXYl1WNk+BXbts0vgoCPD8b2p9iIgrcNwZrI/b/ML20gF
	 zfO9gjVkBvX9xcnii10tMU93lpIKxLmr1Eaioe6PyHbMwJ/5DNxNrNL6Oo+PT5y+kF
	 GtCVw6njg3O0SYyA7zbewRloli7b9c/O2ayIWNhQhRpGW6WDyibTs4PBmbABHB56Y+
	 tHHy47mH2/6zTIkF1QPG/+qyVT9pXDDYgpPLICENjDlt5BrF3kQbXibGQ/Vhlrcahv
	 c2xQ2n2O23diAWa47AePPrwPy2lnEUzJBo7go9e0s2OW4kVZw4ijBkqwqFHj9R7re0
	 /YfrL2L3L+Pgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F2E7717D
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173396795359.26263.9576295528214770730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8222925bb6537100c658a9782e0dacd40a87f2d2259ad117fa5c1c66e014ab64
Date: Thu, 12 Dec 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733967953
