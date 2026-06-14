Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1D035E949
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781432194; cv=none; b=UZ5arBg/1kwo9bKrOCknZZhLxMzwmCPsfJZMbg04njN1noDUtJHzezHqKt7ZRgQCP0mBrJeAqvf2GJzFb3u9m3IG1GFMeszns8s4whs1eAqkwAPFtPNrETn/GP13IrmdOEPJzC//ol7dvVKVcVtcy8uwLLqreHEK7YauYrwLLMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781432194; c=relaxed/simple;
	bh=UsHm2mByK7fcdgiUjSH6E8nFwrLpWCYpht0mirLVpeM=;
	h=To:Subject:From:Message-Id:Date; b=Yr3SaZlTPfqk1IPxapU+uSXNLrzjk1kJXYdzyspKc7I/E1p2A12jSYwr7J1B6a1fTaaMKP/e+HH7iiaqfpcWlgmU1FZuxPrWjqiGBAYkZTVoTOHV8ifsEZI3mu3KSLwHW4o/MnrGVUavVgEUulb6GpkqLoELj7kWW82JCiDk8zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWzIM3Cv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWzIM3Cv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7BBAC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781432193;
	bh=UsHm2mByK7fcdgiUjSH6E8nFwrLpWCYpht0mirLVpeM=;
	h=To:Subject:From:Date:From;
	b=gWzIM3CvsmaW2sTOg5OY+in5S4K6TdYoKf4mPzoVD9S9yDUOO4CguLGpaOpDwkwlP
	 S1e0aGJ3MdeNCVVeKFxGrnhpBTCONstmWUDcUtPgxChu2RoD6DFCuvm1e+1NMqWGeY
	 3IYONfCf89t1NKE+Ojlco2akIseWF180mTsRgorlaIpEBBKVWU0FeSqmwxhE/MJAAT
	 QsLGQwH23YF7X6ebnxd0/F1GFJ2OYKPFE8RqpjlHyq7dCVaLMUCqUqDy7HGGTc93in
	 T/o+FtTZkLmshPxM9erUYK5S4w7DRzcQgaWMK2mo7LUx+wrtePUF4qXAOcCsicSrHr
	 orsp/xj+752WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC58DCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143219369.29113.16292075197411983585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd2e02fa06d2a78a3a029aa03d6cfab1f10df5235c11f0faede28e90b008345
Date: Sun, 14 Jun 2026 10:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781432193
