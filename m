Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7461865E2
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731694554; cv=none; b=IKPgRXpH/x90evnGWMEQaAhRtu1fvszmxXqaclqn7CLgbDYE6rJOFtoWIrKBqjRkros9sVCit3dMuPARAsFgzscN96xo/KOMAyYOAvUuffvaT65kn19CrtisHJmj8IuHb/bimDl2kgs6eDn+vFqyLUKT8Sl9C1eCuCAiik1Axr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731694554; c=relaxed/simple;
	bh=BQLcAC+QZc27o4z4szznTjcUdOVJqEN26q2Jyao7zr0=;
	h=To:Subject:From:Message-Id:Date; b=Ln3Ald7Hqwm7fb7FzZD4xBYKRhsFLfKghV4Y2g0XzMKKZYpQB6+Tdhnh9eLZxrvHb6FHOahNYw1dVkTsfGWADZuAzpwQOw4Ep3Ye9kts1PWhL1GDul9Tl5UxcnGd1Urtxxm2ua5Xrs0DBaOXchhp2oU9Asg0VCjLwwSkT7Mawe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cb9E3uHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cb9E3uHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A39C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731694553;
	bh=BQLcAC+QZc27o4z4szznTjcUdOVJqEN26q2Jyao7zr0=;
	h=To:Subject:From:Date:From;
	b=Cb9E3uHLxgMHrOXmOFc9p7IF5K2q1A9Mzv82nyD2KzTJJAUgNgh7ZIgIuU+PIGKYz
	 eMtKGivdKBxtDj6/taqrJuWRob3BzSjKTe5vkIHaFVqBXi1lMnO/MC2Jc2kJ5hV/qs
	 Va9jowPWUE0pG2a8uqDD539GfmrrRXnYO7l+pduwLpdX3g9jiYFq9hI6CpgZgafX8T
	 ECnF6zAWCrd6xG+wN5D76fUaFFsz6Kz8vRCrYAxUFgSiLq1upL5D/fnrUB4u4kuTIo
	 FaZcU4SDUcZTo8MKLmg4uhXEjOiNgBWgUhbCuf4aL3FNvhvnH//1USyuN1/T1O+LSB
	 c4PoVImgsiefA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF24D68BCE
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173169455364.3832.13384005992915962094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1160f9e38bb2c97532648c41231081e7bc3edc15dfc25cc2579aec399c8628
Date: Fri, 15 Nov 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731694553
