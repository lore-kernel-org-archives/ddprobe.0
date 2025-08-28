Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE122A1AA
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756402194; cv=none; b=UAW10xKkbZ8s2hbn6gWv+tOupBSKkw8bI0q56pczgy4a794rsTsOs3xTqw3tYdrf/IP2tlbqEwfhVeHA2tVHNhSVNOJIDlVxFACSP58eWDCYhuBLxTGo+wuiMw0M5GD8mP2qT/HTSlUFNjMm95hJbIX5tklY86f3cykwkx4hwzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756402194; c=relaxed/simple;
	bh=GqMALGqf7AjxrWb5PeQqerZgQPXBnS1Ze87fiarncjY=;
	h=To:Subject:From:Message-Id:Date; b=mtmoxZKyM2bhkrDDMr7lJgg270G2q51Z0OBdsA8IM1cIeGQxnz1SsIWV7JL7hoI2CKXVQwOZ44X+V++01FsJ8Pr3l1M+u2f/Qr1Rcy7V/vqxIUbojS7ffTBrF4mHGhHnRZeFbzv1V1AzfTC+LaIwUmIDXaCW3Rf9ynITSo2pj+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvFar94Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvFar94Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9ACC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756402193;
	bh=GqMALGqf7AjxrWb5PeQqerZgQPXBnS1Ze87fiarncjY=;
	h=To:Subject:From:Date:From;
	b=UvFar94QC8UKjYypA9u2eGFho3MDm6BWvGsO737CfkUMGUuulSVF4/MWEoFC6BahB
	 eoKiXcJCVm4d+l77JP/Qi/UZeN7bQpaOZZEwOYGTcZcBQbUtvy3LgNpufp5OvBAxlz
	 9T2gzzWLJVUxB9Jxm/q3qFVUCescXNvo1MVIhQK1qJdLAaW8WTOgpVmk5ADiOECUbq
	 pFDkl3iJlETFH+EYrDmL1jRqVjZhXbdozTBEmNpkd0x+8suJ+j/+VCjAFR83PKTaLE
	 UXsF1VkwHOJqezsnaYJOGEoRofhqDGmSarXHvtNDI6vcDl/C8G15WbXpGMwXJ8sfh8
	 5lFjzr/IjpF/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB23CA0FF7
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640219358.14911.7656905904665764431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6659d2f5cfd5ff9204aa0bb829acfc7d20397c9a427a24f1d491b9339c9d482
Date: Thu, 28 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756402193
