Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6061881ACA
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 08:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717143263; cv=none; b=gq9OH37vEPuVogH/d3PyofNxzZvsA77GZYK5NTGZDD2HuRswRIz88PglyUjF0xeQC4RzcK5VAaGM46SFUbx9n/9rB2x8eWxRNRNzQS29QeTjbWCUPcSpL6tq/M5WHAsyLhPMaoD2+GHJObuldRzUOoT0y1HGOb1ZZXzqMKCL+9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717143263; c=relaxed/simple;
	bh=WgeAgRRZCx4CNOOvdyg+09kLJkv0ImOpMsq2htNaoZ8=;
	h=To:Subject:From:Message-Id:Date; b=M/G2SCvh5RkdnxeHVsLl4BIgR0lipSYvKKmHXV90/mL2GXQFe1A4NyQpmh9uVLHGWZShDCy9dX9K/f2Xnl7zvufbgC7giyVd23b8mk3CeRrnf+LDALFCP3wKMPb+NKcj0NYxOCpx6/I/H1ckJe/yaGJ0/GlUK5dn/jgv7G1yTUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uI+x0V8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uI+x0V8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2452C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 08:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717143262;
	bh=WgeAgRRZCx4CNOOvdyg+09kLJkv0ImOpMsq2htNaoZ8=;
	h=To:Subject:From:Date:From;
	b=uI+x0V8zBmDNeHmvDHvicvt5XgSdVmrsZoJpxSLTMqWKx7MTppZLDGZSogTHCdkGL
	 Jp1VxeCPfyelWZOwdmoAWPg1yZ7Y/piFp9bkEBNTkDIj8G5vi1fHaP1mlmCw790Bdv
	 dxT2giI+9DHFfLRY4S6rEfN+YCGTNLd1Zs66HzmL/phgY25lw2Uu+gWegjhnhTyE39
	 k/kAUZsyAiy35tsg7jKdpLL+uYYJ+A0DpPE7EKscR8Sz0OnTMC/Fe38X/ErOA4hDO7
	 CAK3qTLBgA1w7jbhovn7dnqOSuwNGkVnUtW6LW10fjue41ZU5OLkiyXi4fvRnieKWd
	 32wABv6d4Qa2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9923C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 08:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171714326281.5149.2616696842575090939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081cbaf426757b51dd8fb1eacc32cad4adbf612b9bc5323c3dfae24a625fbbfd
Date: Fri, 31 May 2024 08:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717143262
