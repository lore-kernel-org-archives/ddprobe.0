Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C1634E746
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780148614; cv=none; b=BZXELGY8jl00l97trzs0ABmAVuUoCfjtGOqOb6i3+WAF3mh2Ng213d9NbgigYnnkqMiRNyBSrarsGi/i93Pgd0R4EkiqVM3CNKrDZCj5wJt2Bu1FmhCTUcIxd9tw0v3VEoqBnGMeBwklVPBf+0+9Zd/oB09sKSi62CaGu/ZPMYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780148614; c=relaxed/simple;
	bh=1E6ha/SJh6XqRPsxxWlwRuwGIgl7BnIujFa4oAT1fO0=;
	h=To:Subject:From:Message-Id:Date; b=Xg34FWYROG/I30tB2Ez3BvAencmFfoVuuxNxpkuR548w4vADYgn2vKbDwP3RW2UQ0GtOtuW9JyyznR/QlDv/4nqov5nBiNR1nuug8FA3pCszmhh5s6uiAm90gom7z0IitsZUzRQzaGMIcBzB27qvsoZTlK/68FAQvmFE/GLp5jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVy8fU8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVy8fU8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B01C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780148613;
	bh=1E6ha/SJh6XqRPsxxWlwRuwGIgl7BnIujFa4oAT1fO0=;
	h=To:Subject:From:Date:From;
	b=FVy8fU8IDfCak3c878VL2GYvV6SuGEKq7FrvvC977oY3eUqkpyICCt3sMjOgs/pWC
	 2mL5IpW3Kt8+gEbhYpvkCzobsbdx8gv4YXM1c4rn2MDVq/R2r8xLLJYnCCMIngzibg
	 01YrssimhQ0Jg756UEdrGgG6VePztlp1dNx60tE0VLp9esoLb7/oamGlawom94sLGy
	 plsY1+SNAaBKw8xCRhxCNlgEAnZEC3f815e2mJQl/HxCJb7GFoM1wyCj7a0I35Vy23
	 i4+oq1sib+pXHyEpwRVFtJIct7zgAUOoaGFScoTeV51732kjelabRuOhAWDQiKgRO/
	 pavNnSJZYCZWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1B2CD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014861368.25143.16940612385353082380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9941dde0de44b80f5016556bd169880c1df19581878c8f54a6481f33491d1784
Date: Sat, 30 May 2026 13:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780148613
