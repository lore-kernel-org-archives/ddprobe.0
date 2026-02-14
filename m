Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411831C695
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771081494; cv=none; b=UgMxkhkxleD3XIao2IL/477YUxYXX9VrZdKNeZ5SAmqpqLOG1Lum5H0lTEcHVlwkJtRO+Ri3IvnkuJGHe+aVFJqICovzB2hzFmQBXy1rQlSPLktGsTty2hcSFY2e3s9pFUZYYdlS6RHezf0Jn8blsJsfHA5nkM4UHrcm0rlqvZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771081494; c=relaxed/simple;
	bh=U387hUe7BzS4rkgEYvIEwQ/7neblGs703zGeN2cyizg=;
	h=To:Subject:From:Message-Id:Date; b=B7fszJWg0Z/EOKgFLxCTbcPR96JCNufrjf46xf6tCoO68Hglq4T7IOPlJ/DBcyM/OObtfmvfdOy0hnrGKUkgGxDOrEdlWWLaQV7DPCOHfmXvpvayumC1FdKjRjwsPCE5sAie/GacWJWgjffAPZOWF3Lh9Gao2jeP1icPNx5dWjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZNFOreX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZNFOreX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A63C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771081493;
	bh=U387hUe7BzS4rkgEYvIEwQ/7neblGs703zGeN2cyizg=;
	h=To:Subject:From:Date:From;
	b=KZNFOreXtcISaCEFl6cTTz2DnqlrYSO24x+pFbIEdKssAydQNXx37jURGgPHbrjip
	 q/llU/9fosT1LNcujiZsldJE+A2xssVqXIXK+CDZ55oB9Ca0BY5N9lvYrorZ3vMgty
	 KqadRL1RaHJffyM8+uY/l10Wxl2brNgi2ygOLc3MDbCxcugSNAxCXvtOI4md6ui9wI
	 lH+R5829EGUuu5pl0zkFl2kBs6ovpHFtCOHf4QhTrZwXCucAolyT3zf0RLDwCD8RIA
	 Qv88VBFZQVI1A0s8w4oZ6Agm64BDJQ1DsIASjm7o0SWjs60QPoUS5lq7d7Bx50ZsqU
	 pZmC2Xrkj6fMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77E0EDF15A
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108149364.6447.4953906627815573837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982d356e486c1f2c63758521c9b1e723f2f1cc688df3ced65944ef63bf9145c8
Date: Sat, 14 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771081493
