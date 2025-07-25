Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0593129A2
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753420794; cv=none; b=l7hE19gjGyrt6vq5lGjEIbmrwVF7A/iVI8m7mixOhrM/xmkn6OoOYq3KnEaxa2qDWmeNSRgswwRQbIrMUAe8SbKJvGRtzcUDVZ7jDJpdg2Ncinv7BxLEalN6Hywztq40TAyUAwllg2tekZtb7IVC7s0Ygzu0biG7SpEShleBXhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753420794; c=relaxed/simple;
	bh=mGwK4uXmtkD9aw1xCZ5k1TK2LVhP+jwVajeLcAVD8go=;
	h=To:Subject:From:Message-Id:Date; b=U2eql9VPpR3EMZOODqKp7GhzT9EbmHiTWiQIDRGLxcgxGA7KlTsP6pde7adwpoOmreqAP26S3PomHGVjH9OO3c7Y7fXidR06bIjDtt7KT6u5rG+ognZ6Xiu+qitgD1KiU4yj4sQRK1+MQAlFIqhoAc6pGzodIVL5f5D+k6WrNiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQuFeuAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQuFeuAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03BDC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753420793;
	bh=mGwK4uXmtkD9aw1xCZ5k1TK2LVhP+jwVajeLcAVD8go=;
	h=To:Subject:From:Date:From;
	b=EQuFeuAFjFUX4Ou70Fj0cHYNb3DsUQVMi0P7auOIV4MzC0njU/2agvPa80zzSJFR/
	 2CwvgWn4zCCHGZ+0YR/NfFgrDscIPOnAHwsBVP/XB63g7MEbVpoq1+cJ/3mcafbHTq
	 Na9RtvELBGuNDtdv0NLS4/4OaoFq9ONrVutF2Pb8r7K54m8/FAJF14jZSxCvM0BJJj
	 lAQa2NBxbJeEzuFMFrvLbFnm0xlND5lAOeAT5+J02Lsh/Dbia3FvekrM2aAI7JinwY
	 3bXD1980DMpsKfubKlTEfP4LJaMms7G0ljlVihndOzD9Q8NsyU8kkdRv/k3bKrCy3R
	 7P6AXYZ/oh7DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E72EC83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342079357.13683.15593836498834886467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3e715f0d649e29b0ac4c5ed7145eabb865dc0be9662c1bd630e40c55a396ea
Date: Fri, 25 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753420793
