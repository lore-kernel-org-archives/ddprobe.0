Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D98019EED3
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735600554; cv=none; b=SBvwtCNx6mFHXqyMjvbwYtQzV4LjKsknEbYqdk0OTMSPwxm3F/0jW3ppTyppoDMpSJCrM1Uml55vs2k/vTLlRnDEucZ6RR3Sb6FfRSWHOqte3zNwE4Mw/jJCC9kH3CS2ssNqrk0XGRPwgwOgJ3pnQSHkq/KWxZjvSmf9Xsjyglc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735600554; c=relaxed/simple;
	bh=SUMbc8LJtl02LMPAFDDHZ4Th9CvMyqd5FeDyxft+KVM=;
	h=To:Subject:From:Message-Id:Date; b=th9oC23TM9ww9cuErkzHuwjPajDqUZGqettUnWbnmScXTv/cK0bk+38eXuFKb5kTSkBwSh8tir9cWEB49eT+xAnKbKM+rVtmJsiH0lwRqQk+8H6MO24L2S/n/ElTCzW/BpYGqyOT30gWXu9HYfxeQI9pjIUybZv4HaeGKa1Do5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4V0NY/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4V0NY/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38BDC4CEDC
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735600553;
	bh=SUMbc8LJtl02LMPAFDDHZ4Th9CvMyqd5FeDyxft+KVM=;
	h=To:Subject:From:Date:From;
	b=i4V0NY/3GqrmmSEY4lTcecEzU8jSvh0Vm+ubs0287F3sQ2hCZPIhb3vD8FwexJabK
	 GLPLS2VctH4y3du8rwTOdzqLEot0D+mRIJAVqolZB0nOHwV0QRtefXXnKBwGZsAq3q
	 DN7o0iiaL/c/qgoirDgZLKdnLoUqjvPA8sjCMMCpA4CZp+WwOUgkO7cBHBIvt7/wiB
	 3Dm9uZp3Dpavh3HcRRPYHmUTxPYx/vA3s1vWlvFEEe/yXqz9/02j8zDhidEWoubaOB
	 k3dAKpuElo7FYfPBhmiCJQ18OQoWcvCG+Zcrnn3S2E9SLKEnvG6PqBtVeXXyyk210D
	 Ec4c0StxEj4Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F94E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173560055357.32565.1749553165871272973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f11853961a504893cf9453b76cc28904668f313044280215ba073efecbc01b
Date: Mon, 30 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735600553
