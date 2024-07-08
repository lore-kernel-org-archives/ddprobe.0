Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506F215219B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720478183; cv=none; b=iJjwj41YDTAETiUIBxlToCJvJQMM4xS5StJMaVy8AtWBOXsGjEl1W3K0pqcuyYXatWaEmCTlgNdxKX7LzUuKoCUpOEvIIbtR/7DefWcxt6y1ct5kb+hl/nTSi8D+rAqhP0YB5ppBeQrigsmEZfuYjxpBKPKxZoEgF3IVbQbSbSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720478183; c=relaxed/simple;
	bh=prsYcrBIszuFEJDn+YM/ofZt03oofNd04fuWiGLCwuU=;
	h=To:Subject:From:Message-Id:Date; b=AUoNmZSHuyDAz+LczkUH2x5Bl6khV2GcGzDXVfW2HZ8O/d9TPk63UwrzMURDnPx7BWUVfHUP2pxeZgK5YDWfDNu1k9hXS7XZOmqp0qckVhSilkdEWj0SxtbhQbF5bj0MdpLEnDOYywtc/vgMntsj5WRavoyX+iV28V5FQ3rfz8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+drigO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+drigO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93ECC4AF0C
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720478182;
	bh=prsYcrBIszuFEJDn+YM/ofZt03oofNd04fuWiGLCwuU=;
	h=To:Subject:From:Date:From;
	b=r+drigO9LPSWQq9uVsFfVtNXQF+BgttOnZoE8IeSxbhP0bJafHnlba/64hKfgRHSz
	 K7BLG9pdz4ARDNNq6SMjh/oAdIrTpKM0vDC/PJNeUB/qgDeeoBEw1VF7KYADYKfgGc
	 9oBz944nnyRGTR7hUIxcUd26ENVKBq5qCKTb/fMMblbviHJGHZSMeeR44eIUdSN+f3
	 Aj4Zb90bm2NP8ZqzILE01YNNOB6V0vQz9PgU3Nv4Wn6jRlCNjvmrMh0dtQ6uz6wd1o
	 sWvEanCcIMl1LLcE4IPPJwVzl6sMgVb47kKl2iAPeqFp+/dx+wDQewEC+Tf+W2ScYD
	 isaY1FUlKZ9bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAFBBC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172047818278.1230.3771265983585994633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5122f25b20816f11253af32a36d9cb601b8c9465ad9af040b43b9c66612f0fed
Date: Mon, 08 Jul 2024 22:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720478182
