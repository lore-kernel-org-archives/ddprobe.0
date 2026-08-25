Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CEF1D63E4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787699434; cv=none; b=lSx2PERa1ltYDwqxLvyHXywiYt+OPQLT+12wk07PqmMskRgUvXeqzrfqrNROpGzndZlEOPUpn8P7Em1JZ/DJWrs6etfLSHEqpZRBCZXIRScurl9MTG+oqP7uNiKcPuUMIASTUY7bsznSgJAQPr/9f4oiqg+Wyuyfamae99kNvfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787699434; c=relaxed/simple;
	bh=O32wy7W5UIFWmeWqw2fHYNd23uBLLmArIi9aZ6h+DDA=;
	h=To:Subject:From:Message-Id:Date; b=Xnt0v7opIFoRh5j95tcYKdHcSiWWwDBowgt9nA6ZMAc9e0LNNhT/k8X6/pPbbGe4HslZEL4XC0BnneATWSP1gwqlTdqZme+b4FGSEGmZyRJANogeOKfRv6PEq1TyxnRBgjAk69/+eVmdbOt6aOmTxLirn7+DePTyYYKjXJ6ZaFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVQReBkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVQReBkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D395EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787699433;
	bh=O32wy7W5UIFWmeWqw2fHYNd23uBLLmArIi9aZ6h+DDA=;
	h=To:Subject:From:Date:From;
	b=gVQReBkI2KLVvTTS/SCOarGaILvs16LS7uDuYn30rDD5cF0dMDvdj8w/ZjnwrO6G7
	 KWAmjTdnY/nmqswFik5AjGjEcK1jdXAmWnazenB/qYJalXxk6sU4ai9llZdmTTBRi/
	 Pkb5bSeXQW5vGdI/mxHXd8CdpJCxio0rWDHBAdGXvujgG8gmiumKGhEyhmwF/2+Kkx
	 tobqVyoWdo3rLPM6XGV+rfpzvhMQSPd1bLB1s2TPguHIsd2n+L6T9UPMXYOX6dZHY/
	 OwXsocnDJXS5weI9/IK43Vxzkwi7A9pgFGxipBdqUP9uj8v4XqP4r9a1dqZH7xfSL4
	 dLRERIp+RpOOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4B4C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769943368.15343.8927495193444682275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a0d46dc77df521fea3121e3f713dcd84cb8472bd1ad5eb89a21db8971423ee
Date: Tue, 25 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787699433
