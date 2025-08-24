Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4BE502BE
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755997794; cv=none; b=gN7p2Ov5+phhBajcBmEjW78wuDOGZDZFBCoRD3FC307SBMomj1fP6OvIdU5FQOWW9/AGMOF2EgNLScqq4JQQ238O6IVbz1edD36EIMqhVs9jcm+9RI1EOlR3JDzlCoS6vAsFv8B1V57bxIKAtWnlERzCRS+eyBOxbu1TnOokX7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755997794; c=relaxed/simple;
	bh=hqcNOOdf249pifmkl+drcTvuoLIixNe0eC0cfcDMTQo=;
	h=To:Subject:From:Message-Id:Date; b=vFd76LOzjTZGxQMelvp5DbHsIwlnjMGpPi2Xv/NWRipl59/hWWFKPNTLUGOWfVYD/47pQ5WstzDmSZxyO1b/nvDmKh13GcNNVJEEt+Om2McRELFXmqcuvbyArN0EqAhzMH4M/gnTIF/nol0S5p8gHOldI1eBLF/Wn3qlwTvitEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tp8uOs7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tp8uOs7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C67C113CF
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755997793;
	bh=hqcNOOdf249pifmkl+drcTvuoLIixNe0eC0cfcDMTQo=;
	h=To:Subject:From:Date:From;
	b=tp8uOs7xm8NX5N90B7h/xcKC3DqXn3cj1LqTGiFrT6RcH5EPXdPAtm12yYudoZbLR
	 XTBH/L+DnBtk8DiCV/cFNY3gywTZO1OAVQvaVKPVU6AxCIeddxgSDl8vr4o3rpWeNk
	 ZiUzWtmkj5ky+FDkhn5U6T56NX8f2u/FBTmgMSyUoNTlNP0kUzxwfFhtik7lIhUq9v
	 PfSCiE1A0h0mXDSnr/xZUgVLABOkjV8US8a0u4QKktUtTWHwFh4BJjWwbTZWQdzy2S
	 tnIpBKmBw4Fy5xkCjl0Iz4whzetMXhBHkY6A9dEIESn5wdPUQY+P+5c8qCg/yt/RlM
	 Iv2s9Is7uR+eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C0CCA0EFA
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599779358.12796.97296112753952783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 123604465c4beb1d082c81b7f61068c0554cb568a6a40ebe04d3ab55ad0b8a70
Date: Sun, 24 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755997793
