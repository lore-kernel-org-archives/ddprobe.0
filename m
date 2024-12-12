Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B80520B21D
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733997354; cv=none; b=e/1zB5L86P/T+Y+7wACIAOXZFVmtb6ZQLpda30krXB1gpQ0XgNDSxoFVY6/2E7v1Hz4dEQByFx0S31FesAbO/dHU7w1n/J+taIXUdBgEAf8/oErLqJA8Pj+QiQWCSHIvxpCYBuNM2ZmanyQIbjgzHua1FrjLkyJ5YAR7bcM00Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733997354; c=relaxed/simple;
	bh=FMLwyYAywnTbcvGVPa3pS0dyRAbMzQ/+P40ysfrwPdo=;
	h=To:Subject:From:Message-Id:Date; b=lbKFv3ZeoF4XqqwDeMvVONQyI9/3c7610BmMNsWhPjQGnYrSodkbb6gYg94Xb4CHiOYr3mG6mbx1zoMnSJnU1vQdS5Hcqm8rctS+x1FBV9aajDUZtBP/dewjEfYLJyvSeEKIRXoSMEmObAlEE8Osvoq3/uQKOd5VPHsX2RSLAWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsKWEfpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsKWEfpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5053C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733997353;
	bh=FMLwyYAywnTbcvGVPa3pS0dyRAbMzQ/+P40ysfrwPdo=;
	h=To:Subject:From:Date:From;
	b=nsKWEfpdwFN6V75iGhy3GytQHHATSwepLV4fHXpyHszgXC31d6u2k5yEDnR9uIWFJ
	 1zdfhr1wjunVghegciY0W2dh2/Bwno8QbsEHuhPdaASAgDeBzGNgLnY5wunYoBT+Hx
	 MyXh8rKG6fl5TQAoSgW/bGYr0Olh3s0p+Fw15dRAfhM9n+vOa3w7woMfaxCgUrCspd
	 hbQkLbEZGjtDskVTFjX+cxFjablfLzNJR6F9QbGeUuKPTVIXbnQj0IjLZOZBh3OeJV
	 e/bB5mRQV8DYFTPns8AVejwY2FS/GtsC7iziLyLQzdPPhzIG6yxHGtSV9wPOXR89sm
	 ZQ8vxlgpXdxsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9371AE77180
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173399735359.29300.10857634506912030460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4cfd5bfb2c7b0718d0897a89881357d65070c9ee684ac9fa6a6f5a619f11a5
Date: Thu, 12 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733997353
