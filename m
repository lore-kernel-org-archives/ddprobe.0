Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEE826B098
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774958093; cv=none; b=f9yxvbBD2ApFISe8tA4oSpLUtR7aMn4N12Vi7947gpmVm4lAYyShHivsdBN8Lr4L/3We8ORj2CMKfUNuMSc1nQ5kpalZxq98+HF6QQdIcG02aZmJMXUXuSa0bV2h+BtMqLI4ndx51WtZatrhY6B/Tqk0j4A6FrwV/GSN7jrKjCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774958093; c=relaxed/simple;
	bh=gR2HuPcFnT81+XGBA5FsAZECNVoPd14XMMODZDqYuS4=;
	h=To:Subject:From:Message-Id:Date; b=fMj6M+zwyLWMPXLuxzeUvQvREE0vLfq9IkWNseETxNISppQsl28uKfhjcVoxFTFQqphq87rJ2gd2ZZXX2+4IWJlOQODLVayZ1RiDGfq1wz251NWguRG03NSfSjazBFPvEY6A+/ojxgzHsVQkZqOAPQDxjdZVNGbUux2VQsBtfug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrUmCPg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrUmCPg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4244C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774958093;
	bh=gR2HuPcFnT81+XGBA5FsAZECNVoPd14XMMODZDqYuS4=;
	h=To:Subject:From:Date:From;
	b=qrUmCPg4PSmfH8H8PxHIDXIAc1gxulVPtD0twPX5gzYLL0JmmLVzTIpvM6YyMOvzk
	 1Upu5er+Pss1vVPKad6dfBBlDasqPpRkWiJmjWlQ5jJU61ihpD+3PERACd7bEVkxdZ
	 kuuwqog86kJ9OZ5DE2y9+cmpSpmPdFadKykJSLP9vMZsQAPb05JFg43KlXKmFIOlCg
	 FTiTbQFpjYuEUeLv6h4/GJp3M+Rn7lfT5VjWfP9Pnx2DXp+3eO9ghzJReqjtOU+BmV
	 XT2RIED/Bm+WSiAIFNOGx9djEkwDAl3aiAtSmMdmawfCD8FH/0unHWZFxbwcNb9+Kb
	 LaFJHKRpeJuMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9402D1061B2E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495809359.4874.8627175518192159502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 951cbbd3c8a70b3521ad0de89d11f72775f145b1a4d684c3a91784d29cebd2ce
Date: Tue, 31 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774958093
