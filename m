Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A1034B674
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761145194; cv=none; b=BPc2IMvnARUeqNSMF4EZQDAi34Xh3hV/BaqWyQ9DJFHybTZBJG56TiSpnFve+D5COcEVReMe70MJErd6sh8x2QTelOXP9BrdgFczDFW+5URAi7QxTcOmGgRWmQ9QqHDi2uUgfFE399nThje/kNAnl9Do60Tmd17Op2Wd+MgxCH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761145194; c=relaxed/simple;
	bh=IEsDMIjN/c9tnnnf2/YyVYrgMzNqv/TfWMDMh56tS5A=;
	h=To:Subject:From:Message-Id:Date; b=c9lonYS3oOeJzw+Gfc3s6vRtnkbMFtSkRicxIEcqc2WbKOsna7OIhc+kIzi+3dkrkuO9YzkjhcQEPsIp4m1d6vHahKq2cA50HJpjLdovMsk58GZx6KAyH/INtDxJ/SD8b3OWBz7AgvEv110cJHuI6AfA6Ew197K5evCeEoR36Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Po2JSz2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Po2JSz2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17CAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761145193;
	bh=IEsDMIjN/c9tnnnf2/YyVYrgMzNqv/TfWMDMh56tS5A=;
	h=To:Subject:From:Date:From;
	b=Po2JSz2xI0MSI8mmjKzfg6MCefDNtmB2V2HXVxKsjdjf293bHye7uU7Cl3p6+d9Mg
	 cd1Sp0ZKBfluQge6mV0vyUcTmMaDDxylFcEljJRrEvyykMSVRLq6eoRnCoQOobLLYN
	 HBziGLHwFPYcR16jQaoWHct6hf4aoptvFZl0TiMfR53adlulquPO2QjHUjmM50u2KF
	 Il/gaQOsR4yD/S4jBUF3mRkB+Z4VCvnJDNRjmw02VtbxD0cSjdadRiL9+HMOlEcpxI
	 mRPwW41lidZT8HwqslrWZWkfV3bzvY3CsS6lzOlsNYqvkDkOOgSaXIL1yS1t/dSnWy
	 cisLf4JAPJ0Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D4CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114519357.19459.5583819099775606009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1d092c8dfd352b4ff5a6895c354f04b28a75c40cdf9afeb9460dc422a5b290
Date: Wed, 22 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761145193
