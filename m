Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191571FA179
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734547554; cv=none; b=mDNGMA9gav5+qE0B7VpmLjBVc325wUEDWLKf6QJuW5wKREwkZukTbvJvSIDvKeBBqG6QL2baRqRTxYTFIzUQIGehampOqRyJJ2pxoeARucDF99S6N2XxS0ImQO4lgCyooSWfgQbSmZmGsBj5AJDfCRz3PLdkpWk2H8GOKZGZeeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734547554; c=relaxed/simple;
	bh=HJbuS7XzMl4JB/ahpKAI/yMNkWpPCzc76JBUtaGyv8o=;
	h=To:Subject:From:Message-Id:Date; b=Z+LuDZAQhLJ8I2gCqgjLdkcpWEfekoZMwjoCEdhiF8u7OpLfQWNYM2JhdpvC557iGCDg58xdfp2WdG82qJbzIwidL4/9Jf0onpiUFV7jr6vCnzNiHyAcbZW43MKIROHKka22ktA3zgGjaOdIsxNUG8ZLoYn1bBbOBSWxgTExb2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjHrmMnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjHrmMnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0462C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734547553;
	bh=HJbuS7XzMl4JB/ahpKAI/yMNkWpPCzc76JBUtaGyv8o=;
	h=To:Subject:From:Date:From;
	b=NjHrmMnZ9ou5fRp1CgBUH9UvTpAeXXxWu/UBPyLjwfCRTmHpm1y7cCJGP+5LiPHia
	 Us+ucKSitTtmhDoIOVCCOOFaLpaXww3kZq/Ak9u509y8t5IT7W+fbnwP3GFh4Rj83P
	 2L8obO9NC+1y87Mgd9Rtx+6H96NWmR0ksSBqwkpMLwmqLqYAHVJrqic4UnLUibHqM/
	 OcX0KG4Z2CVcIksQBbv2JWXFZh8mQqTCR84oOy9+07Fxq3CqfBfgH632hriDIcTVX0
	 k1AdpgzmMDT0/TF4XMRovOK34QLKGu1n/ZcunKObDyltGKso66dPOBySTkCeiWFy10
	 VofbZk/erZvCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA98E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173454755358.24514.7652876273465671549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ebc651eabb09955d42576102d4ba5e6273f8c72cc746c3203c640e8991b52e0
Date: Wed, 18 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734547553
