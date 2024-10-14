Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319BD156F3F
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728907554; cv=none; b=quR8MOGeLiRIYJHMG9RDNgc0kaZi2rmWfWAG+MkgAQjOubc9xmTuMGpijN39n3cnWIAElHvnkrMQSuTq+x9J92Y9zG5zCLKiLybOsPaaBrYGWmTt+cVz/BHgWPcc1Oeb7tNitzU3wfLu8OVGNApRduym0IBqiWyX4smxpjYjCVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728907554; c=relaxed/simple;
	bh=psxqLc8+iXU7IN6tJCB1a8yrHA9YznpMSHB5uEA14Bk=;
	h=To:Subject:From:Message-Id:Date; b=Kf2vuqWqJdLtBM6nj/Jd8tz2VHoKYdPDqeo8CZwqe83gBYs8yfLs1BLZNKUY2jnuKpAgDIYqWGsXxiGjazMJOXOJA9iKLtKnErfA3A6IjBzqWFNYWJAUmY6vHlz7Z8vjNvC4BxzwMIkwjxVi0g1guk7u0HAq+9UuotqcIUFChog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kW6v4RmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kW6v4RmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A6CC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728907553;
	bh=psxqLc8+iXU7IN6tJCB1a8yrHA9YznpMSHB5uEA14Bk=;
	h=To:Subject:From:Date:From;
	b=kW6v4RmL7aVwYisA6+p8gIVbluHoTIfAZzbOWw/eUiluI6ZMfqW0js41v4h2wp2VB
	 ujJ939FxTr011KZKeZ1n0DiSmr0HAOY/OKaRbfW03O6ora/1iehgyIjf/3YbzlTkIQ
	 bNyt/bFrJfXLhfJPfJ/okVhotmEVebUD6ei4tkTn6bvcCNzu+BAxM3zfzyCYcbcwc2
	 fEDhqBmTtxiV8R3RYDFVZOqDFlsBGJuOyWD6yP/MRbcMjHJHK2j0EOFMleGQpYeG1Z
	 EaW2LNznkTP82fh5h4R9hu57lHSgXFW18mWqRBa9pibRyIdcmkSc/zsWtfWbPQoU/L
	 MrBbhMn+XOuaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66D1D1624F
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172890755363.25879.14460065026336446689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c254e93e9f34746e43e87c4591eb43a6fd95d5af04fb2698338911ecc6cba36
Date: Mon, 14 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728907553
