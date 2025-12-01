Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC4121883E
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764615774; cv=none; b=M34ur7S0YUm8TiSu+Gv0eOrP1m5gWWcq/bMgyhbWOVogTq2dl5cahYv1dInVUM0dKQXe/A7RS7DaDnYn3ZmjJzaowHTIBuSZik2E8PNir78/0uoJD92MMFNZu2yCK9k3v95cDiuSh1YvUP6E+hmY0hgj568Qi20okL7sY7FYqm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764615774; c=relaxed/simple;
	bh=r50KDyba7MEB9D8L6eNgtrbSNIY1PM/odxi0SC70fMw=;
	h=To:Subject:From:Message-Id:Date; b=QH75crcMY5F5BdbiuAkasodEIrJF4DljA1VbkCMc9HJ+lgzxjQN0Boh+xOmIELv+oC7e+Ic9vGMMIJlIR7x+vzq7Ary6ugfDBkTiU7SgddqIE8NIg9SuF2DgHrWIanz7CCAouPLLat4HvDq8HWRPp7U5md+FqYVBYdbwf7vPy4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVyHhnlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVyHhnlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A02C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764615773;
	bh=r50KDyba7MEB9D8L6eNgtrbSNIY1PM/odxi0SC70fMw=;
	h=To:Subject:From:Date:From;
	b=HVyHhnlbcJ/KTJSLwPw4NEVYdRu1p0WyIh4hPaoMd/X/c4M9/+ariaAt9XidXsdKV
	 xmPfxEMujDgv1kP0/lnM/LL/Ifev2dWivCpYFLfpSOGEnxKePXZBRzAR007Mqr4Tpn
	 Qcr5zcd6F5mdzvpQJQWzglFINMkrNtWXUPeTMKUzap5jT2mC9jiXd1SemqbcFUVOgv
	 1zYSLFN8IoCuLYYyHSgIauqJh58YhMtSzKxTn4S5E5Mr3IKCOgPYmeY5bbAMrNw35R
	 VIBZJHItpdJS39N3j62/SRnw2UE0ICxIN9oDPJqZa2hgcWgARU0sb7XQVdD1qEzB7c
	 /EIuj8azrw/9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD1D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461577358.9480.16992413665301042907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a992ed12ff49397261310971408a20ce260289dbc20ca28d3b270924b7e571
Date: Mon, 01 Dec 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764615773
