Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BDF482F2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750390794; cv=none; b=ERL3Ve5GFgKxXKEC+X1R9cqZ3XsxXA7ze7ohs3pTwZcuYvlplOlRYMJZVX+G44HPeEJ8JH6nUdGw0/CHb46kLVOQbyJ7HtZ3A9NsbF2cPeh7/0poLGjkvtTcMUgGPiAdMCWE/qCa/d6SFKo8dfUEmjbSGwDZL6Y5GA4296DszKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750390794; c=relaxed/simple;
	bh=Ahgwds8151rM+vSF9XmjofS+saHBZrMssNcUjczCtQA=;
	h=To:Subject:From:Message-Id:Date; b=e+C7SvXsu3ILOYC1AaW3OHuop3uz3JLQQCeD/HL9/fsAph8xql9GQyanfNuw4KD59won2fRxMbvE861lYPHKW51IX1QfGp255xivzH6qxptndZ2f2kI+44DSCddV98Btt6wy373BlEeKlCpz4gXb5GYVPndKRnS/Hlr2kVLlhEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFzuQl3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFzuQl3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E62C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750390793;
	bh=Ahgwds8151rM+vSF9XmjofS+saHBZrMssNcUjczCtQA=;
	h=To:Subject:From:Date:From;
	b=aFzuQl3VFnjtP0WridF6wAPwfFAA+MEqgkM/Bx2R0sHcT28WKMn2iYVxDQyIPKf3a
	 soS30NfsSu209Yz07eKpP6xhT0Qi+n4fROAdeUyPToMfn8bis+sS67SI8oOepSjoa/
	 z+YTbpcVAlHH00WvzQJD0s3cu3pshXCHTZeb7GXgpJg17yHvchZaK/BENl6TiL+Aje
	 6H/uGJ2rH4DpFUTev9X/EWKKJR0//FX/t6tIL5DTMnfkJmtfXK+QaMijheconBd3e+
	 R9suCodh1xiy4ljVq6mAFsZb6U7W1ptdOdGbHpsCwHVjmyGnwPF5165iAoRXFSrHk6
	 VPG7yhvBSJUSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB4C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039079358.10146.10730134631856239376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91cf3f272227b730aba96e06fafce9b2cbaefe56cdf2ad8730d43fc0a75a144a
Date: Fri, 20 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750390793
