Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EC93FFD
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791852634; cv=none; b=gFCIy0xopJghJvSuZ3J9wNSwudD28a055Adw922VlFip87NaTLg50YR5Hj6h665r3mYd4LL9y+buLOzKZyAUDwkrOmZ8Yirr+72jlYkvQNoKNyrZuLcC/oJHnuPFE6ws8CVB2eP86nhaSkQtj4oIchPbZ9jlCuhXwibcpz5ySlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791852634; c=relaxed/simple;
	bh=XCZq2rbsKH+P3nxcs4hZZkjuDXJs2P9oNEertyxkWr0=;
	h=To:Subject:From:Message-Id:Date; b=YMM3roFZGeCSevPt6jJAQ5OezqTLzjoucfvLjYzBs5iNaLwlFNR2l8KtUfknELmTQHanlhflNRSFqLCmKgQ1ypJXxqQzI2Cn86Yp7Umvb74bKu0V/woVSOmm8B66DFmHe1wzBf6gPP0kBCWSuVvTdwSq5JAe2UicgWTVVqcRIXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gw2NOh5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gw2NOh5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C7BC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791852633;
	bh=XCZq2rbsKH+P3nxcs4hZZkjuDXJs2P9oNEertyxkWr0=;
	h=To:Subject:From:Date:From;
	b=gw2NOh5mBtyKWj9bhSQEQo/uRPEAy/UM0qzExnc0MfwDjZ/L+I7A8PnjfRr98opXW
	 wHjvB4FgDs9iLQ+L2wZq94fmEIrc6f96O7KCrlAeqNQ/tOAk4Lp3LCxxzhfxuftNVE
	 SflZAl+XBvHbRPm+E9evKn+GWi+X6gF22aEtgKW/9/Pg6U/sjewhf9V0axfaVBAZkK
	 YEmDHkJ6PZSP5F0HIswU/KwRqIjkiPuo82RLdwUdfxtu3tmmU6+9qgwSluso0n5gdT
	 BwFgOaJMrbdPoZI9zhAhqBsWXDbYz67/IOtWcm3wRXN9BaIppPVoaZVCPNS7POcdpv
	 Dq8IOorMtYvow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC009CA9EC5
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185263369.3534.14196559698807057426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d535da3fcf04542793192a85dccf55251023f5e645e98c6ab85799e5434be86b
Date: Tue, 13 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791852633
