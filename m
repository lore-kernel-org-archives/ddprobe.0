Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3AA03537C0
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776407254; cv=none; b=HvvhBtDDMbL6AXg4mUZ6n5i8MbG4m0RCXJ1CeMbGtVSnQ9dYLP0+hCWk8vUKK08b07DyVB2NDwjk0t5F9bdeadYTjKLXemYPJMX2RJvrXxLnjjCDcQ46n5c+jmHbmj/dHLNzPUEwr7FdOVQR2K1q8qBLPgzCpHExljY4UnL/lnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776407254; c=relaxed/simple;
	bh=os4Pn/Us+riheHID5BynuA5weup+rs1ENXgNegSv5n4=;
	h=To:Subject:From:Message-Id:Date; b=of5mhmv6H9orVJO4E3JcXj0Cf/65NTFIMNcBb8Nng30OLMuXLBGh6LSA4f/Y/NI+yS7DEgp9381BDQyz0WLgdJsJPD1il44H+sz7w/hRMl8HU4ar3GBlxv34r8zjrEPTM8gAwErHvO2LMAhmiSk0bYULsr7WB3bKlTvxW0Ij0gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4T5YIyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4T5YIyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F4EC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776407253;
	bh=os4Pn/Us+riheHID5BynuA5weup+rs1ENXgNegSv5n4=;
	h=To:Subject:From:Date:From;
	b=Q4T5YIySt8lUVc+Ck+vneNoQ4bG3hKgohNSKWKfaRv7jDrRPW+H2Ajl+qUBqtR2vQ
	 zwqccXifhJhM7xnzFC2gG10vkx7ZSXuxBUWBGoKMH0ZZygsdUgwDApv0GMd9SxKonw
	 M0k2iMjwIIQOTKE3bnYOamwCeRqgmPy/O3OtuPe/1eRez0l5Tp+/2pBzThy1bmx7uX
	 fRFSC0OSdTW6S2P9NiaXiLT2+eink7B6l9W74p3fwbFbQUYFhEQWP1SXvOYofMcnnO
	 b1g61z5pg8AsSG7lV76lXM/MTkjp86wKDyKsrNMnn68arkGhB4cHXcSp8Qjn26H0C7
	 Xjfi9Q/2psRiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0EAF8E4A7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640725368.14637.9898036216137300613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16c1206021e65d12f04876c7a0a27fe117bcc2f8fdc0a5d454d93b4ffd90ba00
Date: Fri, 17 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776407253
