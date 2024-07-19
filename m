Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255F51474A8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721405754; cv=none; b=HDAdmM4OQFX+d9OpwJSLEGn+ffsiZr7x6afMBBGRaDxy6nG3jrO8fR0D3we0+opriPaa2Oi01ZN2oxBH8e3TcE6ykiYu460tDKRasOVqFIdinLK4RzhrSs5UxIpI9RWWj9Myo76ALrPJo8mIOIr0szARcq5FzXd0xbvo5+Xe0YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721405754; c=relaxed/simple;
	bh=056XzgWN3mRDh0G/8NbMcP4r0S0KWmopbldtktzaW0E=;
	h=To:Subject:From:Message-Id:Date; b=Ka/LfkDtD+rZ3fvpo6HTtau2Kmsa6SEbb1klssqjAYkudQiy0qyo94UKpERyiC7igqSSWPR/ZSfCY6+f8nEddc6/VTAWZp/3EApX0epKrZZ+Xmz5a3lFuETNCndzx8fwChgyPl1nj/QTKtmmdPdJ/fWEMYymcIWnnAoAplYhTCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2StV/sR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2StV/sR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DCDC4AF0A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721405753;
	bh=056XzgWN3mRDh0G/8NbMcP4r0S0KWmopbldtktzaW0E=;
	h=To:Subject:From:Date:From;
	b=i2StV/sRYCAMCHig8R6oyh0rwKAk/GOviAx1Q/PRAdMfy1NKDA7SJH5C3YmNvlroc
	 VvhC9S+yh2I7HvojAY4PsduSLtPjbAIAjPvV+1pynm47O5L4+Svzp5hpkAiYzhbbIO
	 Yq9v0D1qMWQ6IAYfPu4W7Xn1QIxNSQPAx/fy3LQRRF3HSJop8af+7+tfhPDMJjWGOw
	 7biC098xzUXaQL9u6Y8GdA6J+6kEYAkBLNao4DqbMlrHU+aS5QzS+HVDYaT9EjwjVo
	 fCFNL0boKErf709D2NILepegh4okYL+DdGgK/XWW3bZsTeuxOpFMTh0wGj6IGM9Rxh
	 PN5dWKbyoHiPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94565C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172140575359.26301.12503991362680868862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef33b9faa1e6b4a4b7f170b812d861d76bf9a741bf81a9735f21b9cd295ef09a
Date: Fri, 19 Jul 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721405753
