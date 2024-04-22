Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5435613F45F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 13:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713793223; cv=none; b=hZKb1MHXRM1euPXWf+Hx/Qrv9bhQVgQAtgKhXRjiCZeAjYhOe9pSImN9WK2sLMVcYeb8lD4qzJCBsW/PzenctwMaok45fxXgz6RTfxJt/aoERlp1uX/Vy1mbTQ/mQQidgN0nrsa7FpnedGEkVOTWmWVBsglsThvDiOi5XUMuVww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713793223; c=relaxed/simple;
	bh=kaqOgJb/nMs616EGqcTRnkJqypsDc93bsssSnSCaYms=;
	h=To:Subject:From:Message-Id:Date; b=Ybb6QsB4iYyj6pWITAgVTsaa+G4PHJFalp5Dab/5bnBfqUtEoafYvq1UA861OjNZHIs0n6tfwi/hWJObB6B9TppPKOXcdVRO8MgnFcRUPmATSY+aMGInKQ4QCYVkr9COUqtc5rLjWBdYNdV0Kxdi3DlkduTdEunC9Ejof09Z7i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZo+q769; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZo+q769"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4926C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 13:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713793222;
	bh=kaqOgJb/nMs616EGqcTRnkJqypsDc93bsssSnSCaYms=;
	h=To:Subject:From:Date:From;
	b=bZo+q769xiVmMM3VGUIQ9/SUenHptjCRJbeYx5jVqt3Q0w4EqVKwwSqAtHCpsM17U
	 VwODoYrKZ93o3I69y78KnhF8/QrAeOB0CWd5RoMOcUGt1loqLNO2yTyODIhuJ/6F4o
	 fPssJBikX6h/flj0i+o/iqy/UMluhHOaYXqmJySSaQf9HQCKY3V1z/QdPf/XPl21SC
	 fkVd1QZIpDghGZeMFxhKylGsq7m+3MiXdbFRNCeaVOBKiKk6Y1R2EMyy8AnwEpEJEj
	 +BRR21tXWFUoGhDzgsQmy1CKC36SjvPMGc+awnHjwa6IVUhg42JUmwO6sqTOHYz2vV
	 znRqUKmhCFE0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1BDCC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 13:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171379322284.29378.9243175436499431505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f095de946cd76e7450c583636e603342d7a8fc07a831fd0383a2b6072720318
Date: Mon, 22 Apr 2024 13:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713793222
