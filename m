Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC1F4A33
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728606954; cv=none; b=MABCO5VHayderVZeEfz8BDMLcS8SSyM5niCyBtgTh8ZRJRbEngyRC7N0ZH5+2aISfPFmrRGKvOubVeV4foHYN7lbUglLE0r1xpD0Y902tQMseby7OgsOePs48YcQDaQHoleTzKknt0+FYKAroO4TNesH3UZFM80KumAtIrVA5Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728606954; c=relaxed/simple;
	bh=Ds/qgkChU4BkoRssCAGu31qyLkslDPeX3aUDz3071Gg=;
	h=To:Subject:From:Message-Id:Date; b=okUOG8VB3KGBybNb8oM42711klDUcMa/hSyRIlDaR1sHCxh3LsOvI85fc87upjcma9NfqbONjqa9jkSUiZB71JXLMx8uLcTbfU/UVSA3vBGdlsd7fPIF/gw6WHC6JR0v3fX9MgOJS64tQFEhIUAgqpO5vt8qvJQi1BmQJc7351Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c89Jmxn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c89Jmxn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B216EC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728606953;
	bh=Ds/qgkChU4BkoRssCAGu31qyLkslDPeX3aUDz3071Gg=;
	h=To:Subject:From:Date:From;
	b=c89Jmxn6IXXUP0gtxJRv+LRwtBp2uhUm+0SpI5cFRJGWFqcRdcb3jWXs3YWRfXaEh
	 kk7f1PBaqWdcUaU+LA73vUdK6mcGYOMFx/rddXec6mE2TJ0ytWrb6qRb1LDVjbD7Ev
	 0KSWFGBrSprosPsrTsJjnz31G4OrJtkbDdEdp2LBG8b9ZHTgl6UVV6A+hrPD4BGxwO
	 ehAbP+ApqNcWMc/nhJZ/mQiEaA2EuOE83mUo5L8ayn8x2jxjPhX2y3a8u7c2Zuv2xE
	 XNuveYbNbJeDZ/aSV8YmofI2d22tMuMg5ptLkMO65Qr6SXtlgcKJssBaK/ISSoVLpj
	 8MFMDUkM2SvWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2069D24462
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172860695362.15598.6150342688682178528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a355abcccb1c7c838c46124adddd173bbf75ecb0176a71cd14ef29feb01bbb
Date: Fri, 11 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728606953
