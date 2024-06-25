Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3AB1442F6
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 17:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719336803; cv=none; b=EluVuFGzY4oOwO0pLHuKuKqGV2UesovSuFfZut7nBgPaxYnWkOPuUoUj5+o8qdM/uUHX2uW3t+heO7/vi6qyI/uLpcIw4NaN6ql3aMG3o/9UncNUAb3fPgZuVaOB/xvGAg4n/AWkug4726LOe77440UavyfcWpXApQs4vZjw39g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719336803; c=relaxed/simple;
	bh=G0JpED1SVqvtQf1eMqzGwSKRHeoAYDder6xSooCMUmw=;
	h=To:Subject:From:Message-Id:Date; b=BDZfwRsXavLaf4/9mJCENO9oIbHxy5DszGR4RXhHGQxuppA7egmOax3KmNpq49GsUnW1/qRlHeAU7/es6aTPXfQyFjDSwVeA1uWCTDSF1hYJ4r2llUlnfmRvlhAkYDVPXQ3514ZpnCSX0cpuWGpVZD3C1Wu5CwPsOuQWI2bKogM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMKRAQaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMKRAQaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2204C32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 17:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719336802;
	bh=G0JpED1SVqvtQf1eMqzGwSKRHeoAYDder6xSooCMUmw=;
	h=To:Subject:From:Date:From;
	b=qMKRAQaK6oBdbe9mzMgjF9C9bbjSYOFHV59tatXDKqA/ekhSRzrjGBye6YFMjSXls
	 z4ChzzbWeDBrA3gHtbp/crovLr0sbDfdjym7D/OU09z0p/RENdJZDt7CBPbaTWIZjY
	 SGSa0G4r46fgd3F07YWSWUe/NbJ+InM4GgGRSz/CFsIE06fjSG9P5uhYT0NGkn4JYJ
	 UvueytlELnmS1mttLDToovpKGk16FNjm85eTGniof+AHcmGW5nmemZbVZIpa1iheBu
	 nC9lnZAwRdP4OjOzfYpCpLWEFSucY6bU5cLPqHtikrkPJE5X09GcmFFZWE8xqtJ5wC
	 cm21X93K3+s2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCBF9C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 17:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171933680282.19709.781376660490305513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f008b69ae37198ae52fecb6caccea0680545cbbcd9e3b6f62b983f2410b3a95
Date: Tue, 25 Jun 2024 17:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719336802
