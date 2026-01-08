Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFB72641D8
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767852834; cv=none; b=e+zBGs1dnDlfmL1JQedAsYQft8jKlyp5vCwY5+aADN3cxZJpdF6rbOan+dzHSgLwCiSubxClkSCOFCUkDpM3VfA2zu2fHanvR2eULpiDXCNt/1q24LY2gLtKwntAgBHOsGf0BWaFzRrgJuM8S7eskmQgRL+7TeM4mqTp+/yyIDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767852834; c=relaxed/simple;
	bh=Ud9rZLhyTU/ppQtgL5Uu8e1UjfGAP05Tf5xzwR1ofSY=;
	h=To:Subject:From:Message-Id:Date; b=acVfqJB4rQfPIXfrPQh6UecVf3Tj4+7kRmupGw8PFsQvlkqPiDSW5iLVcLSbSmWuC1OxACgU/OhUE5KJfHG8WZlCJQK8nKt8WKighXrtbCHz93QYuLtgtnzL0iqEXf/F+mat5AiF7MgZOziZUTFz7DnpmJOzyED2C8E7a1ve8hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGZB/L94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGZB/L94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B6FBC116D0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767852833;
	bh=Ud9rZLhyTU/ppQtgL5Uu8e1UjfGAP05Tf5xzwR1ofSY=;
	h=To:Subject:From:Date:From;
	b=lGZB/L947XeOGhZ07Cp0W5mSwMUxfUtxewtjd27biENkZIKqRVktUvQoyqJMmC8Nl
	 6+nnnzdKbDSpWzmZ7Ot/ww6zKCUQVrjc1GDa/G8SFB4rz8SXhPOrnE13qKKLvgMwPm
	 7pvOGc7Q4LKbRFaTgANtPFAkdwAro97ZX+NEEahzZdi0bDVBAFCf5s/aZwWm9ejxOo
	 CjDabSn993tbCnMeHpR5NQBJByUxCCN0ez1epl9L2zO35/KrYC/vQf+o+E0Y021EQG
	 2oxpPRBIVWhzasqUVV9W2/BMM/bLUVVE7VsDC5Q6UetNQzKcQOgi8PVOo5+7VYDwEz
	 ycvWFwGFHNnxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA50D148A3
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785283357.31244.8775027955032229724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb38b7a02a84578d3d91dbfc5077db3c5189ad0606e074ae09f44376b90f2a0
Date: Thu, 08 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767852833
