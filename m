Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D676FC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750571994; cv=none; b=tcbr9JzA/80QOiZwQ47wllxWGtz0EmOGVMny2bLQMc7CYvyQbnfwj/6CEEHBwtdrwKPhVBmEb/jV8gINwGIxlLteXAaYThnHc2FuHVCmLfpmRCzVlIXPIdxns/mnOjJlTBYyEOXVQqGmuvCGMX/hdETVM5Rz82I12yY3+CgfeKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750571994; c=relaxed/simple;
	bh=47XBcLWUL0oP6ZDuYXPLewCQWPjEiwJn83pvQIfhQb4=;
	h=To:Subject:From:Message-Id:Date; b=rKBrA8AV6NLPUvq0BAD+JHCgVp20lUA+2cKadqjukY9SuIAuUqSOf9XVQlsZXgb/zTx0VgneHUxBtVHhEnkh0qxhvtorASKV3I+BVFaJP0MP/RcctbHp++uwxV0TO5YYEij1AeucOj1U3opRWVqHStyxdB32cG0E1ZTNFD6C/YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGGtZ1Hh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGGtZ1Hh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F51C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750571993;
	bh=47XBcLWUL0oP6ZDuYXPLewCQWPjEiwJn83pvQIfhQb4=;
	h=To:Subject:From:Date:From;
	b=GGGtZ1HhyZTN0BDIRlXhrH4IpR98wn9g3O/Q9p9Wblnjv3AeXbyteYb/4+UXZwYhW
	 VlvogbcVmD6UZOAE3WhlmEzp7DFJpSdt5Ly2ctskACSm98oc+B3eVKohJysezExacW
	 4WQkutY7EJcc/0zyQ/oRkiQNHjUI6JAZgl4chyRRI93yi6KNHIVmS8ljDmBjVxddX3
	 pXvxN3cPfnVMHW2gbB6p8L6GSjfQ16BO4nJ449nT02Ra8LAFDtj4brGDAsLOVeq/5/
	 BcpXjL+Yii//ly60jO8u/1stZnGdNoyNLBCZl0fdzr0OLTOA2W2rAPp8ZfSXbcz2AZ
	 VLL75vXsvejzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931EBC7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057199358.17174.13905028331803344823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43782221e4d75aca4008e6b48a819f8d3b0afd8cb4f647c91dbd8fba6317725f
Date: Sun, 22 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750571993
