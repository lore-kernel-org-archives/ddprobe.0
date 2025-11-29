Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FEA1A267
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764450174; cv=none; b=WcjGMaZwHhAaAKYExVbeEuqlr/v8NvOtRxd/BRKT9bRffGxYMHKGF3WBr9eCHy+oBVV+AdfH8PnqfEGZ8/fz2NnnP/Ir6W6Y4w3uIKUHwDIpGEveLWCvqzUGXn50IcZiRStIqwuI5aQmUYs3dyxZUNLxjBepvi+5W50g1Hukzm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764450174; c=relaxed/simple;
	bh=bjsiwCdI2XA8JKKPXuYtMAz+KflquijNxTYSpPbsY9s=;
	h=To:Subject:From:Message-Id:Date; b=M+kFHZH9AXRjvrZaY5iJw0gDpq3JiMRt0NcI3ujDClwbFtNkL8ekxwVbMDkD9yoNp/TOYVcjAdhAZQoJ2LFhDmDx2s3ps+qtoafmhz+tM6CeKihyqSDcDu2AWfMU8dyUBZOokCk7Hbuj0zNeycuKLFEC/W5bZUzQKnULojaqClY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tv2EZiVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tv2EZiVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6C4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764450173;
	bh=bjsiwCdI2XA8JKKPXuYtMAz+KflquijNxTYSpPbsY9s=;
	h=To:Subject:From:Date:From;
	b=tv2EZiVnS8yCsGJxboOT7eMFtpN451huKFt3iSVnd8tcsoTcHNyEut3cmborKfrXH
	 BAsZt7K88Tm3Z11zf4qeUb9yZ3Mc9eElHBWqzd07kyC16U9NH3kho9zi/BRyB7LlD9
	 e/SWqb936SnSKQ/h2ZMFKK+O2ayF+6uYPdxnAqNq5munyaio6OjfMCEo120KAAQR75
	 17hcbT7u1t9mSj1OISyzOYGLZX44OlfQI1WHq4RyAjdPc4BnCVxzid0CMbMA11FFzu
	 AOPOgcg1/LZLZVaY/W3U4JXWBxhm8QxyJth/ZagVBWn4V8EmtyUEmklxdNpzRmYW9B
	 /Ho9aJKYDz2ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A622D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445017361.26945.4149357684935426608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae182441409b77965b5572352cc926591c9faa4dffcbd44b568a25ff02909a8
Date: Sat, 29 Nov 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764450173
