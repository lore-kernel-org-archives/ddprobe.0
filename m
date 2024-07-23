Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139D825760
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721775954; cv=none; b=nurvhuQo+Lso9HzopivE1K5g5lZXS+8T9bYaQJ7CbW5HtQoJvrHfNmy6YpjJk2+rq4rhTufMGt7o8h47fYULsid1GFda1jLwSuJnR343DNFVFVZR3OWuApNJCL1wUoH/U480nSiuuVB4/CRQXVM/JgPN+IDChWgVuw0e65azmu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721775954; c=relaxed/simple;
	bh=x+4hSjdudPHR76xh90AILYGaNtrb0DSqse/lHUQesWw=;
	h=To:Subject:From:Message-Id:Date; b=Ws3Ps625WM+xj/R/MQqXF7qVcr1kiDHkzeZGREz7tZZ1AOGzyKIgtkGb0KXaHHnKQDWcsodjbrZoPB1kSfbzqnqH+d/rpQAjj4xRGOJY1yJDjVL/cfx0s3WOPeI/kldjb9MojxGBn+7jbygamKGZ0vpwDkvLJKLRr0OsJNESo6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J79xbNI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J79xbNI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D00C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721775953;
	bh=x+4hSjdudPHR76xh90AILYGaNtrb0DSqse/lHUQesWw=;
	h=To:Subject:From:Date:From;
	b=J79xbNI8/Sg6sjnNdtuL0C1Bs6GxRdoYKGb8LJ3nxtwbHqDVV15MiPDyymPwh2gKO
	 FwnHPPeOSdWFvOMELt6jCdvHVLo4v5U358+jwjlDhhDnauBk8+BxyoCPhHf2LtRcv0
	 2mXWtXln/YHKsnyIbf2sUBainI9TBC44ndfghw8cRihD4DGQBo6uzPyEQfkw0qJwi9
	 unU2UuyHNcmrpw4TNv7VfiOvldEo/Mz8yBb3eTPVDk8PuplyOJcPTRig38IDVppUnO
	 ++RZGTcgvfAXTCQtStq4rznCwWSBAa0e70Jj4XhyqVkQ8kMfOa4LNP4Mfjq1uW8sFe
	 nT9Y8b2FbFWbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9892BC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172177595360.28886.2421942624395648029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87e146643b724e2a5a484e7a3ebf59575580201e5236351e0011f1d9b357997
Date: Tue, 23 Jul 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721775953
