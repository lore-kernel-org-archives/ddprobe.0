Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA0D156678
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752860394; cv=none; b=UN/PftcKBW+ocBtyx+qr/PDfDJnV1rMQZVbdFNuAEGq5t4KmSPbNRVzzwQwbodDP4F2vc6Q92Tee8VKcGZfETJgRoxeOb7yEx3CI2ROp3FWUN0zVw18mvC1MoNjtkbkqLe8dEyeD/TD8sFn+FMyS6NBuJVZhxwl+R8QdOyQj8SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752860394; c=relaxed/simple;
	bh=3WuKr17hxrNWvSeMz3wogE29JgqxqnYXSGTLBecefNo=;
	h=To:Subject:From:Message-Id:Date; b=FFERQwNQSYYwzPRUAfRulwcXsnBUuwEgyEm1Zz7yTCXdlHnGMKC+WKBLUrbftYTqUU2j0O4UQit5UxnsTbuDB8Lp5CgkI147wzi95kYHYmg2ybycdJiZwqeddzpaFAetQaufFFJB6UrvzdgbgkwoX3wpXaSL3cJxYEF8A5V+MO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGoD5lzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGoD5lzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E81C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752860393;
	bh=3WuKr17hxrNWvSeMz3wogE29JgqxqnYXSGTLBecefNo=;
	h=To:Subject:From:Date:From;
	b=AGoD5lzjQH8/3x57WOQiu0KSbHF4D84cXWNfK/o2khwrzIcOxkcOCiECRRsO9q9Qe
	 HPOHEXRsieS0mtrFnKeACVQR8ma1+Htf4EBiM5oZtKwwK89/sFBllpWlQbbRVbKNtb
	 h3vetfl2LVQ3RSpace5ZKWP9triL9fdeGZw4u2A+2zsgO18xxELW/Q9l5S3mPyEyYf
	 0qEG6o8NAZQuHn69O+EfDV5xt/niLP18joXBJZgcEse57bD5v6fQQzswx6RmQwjBeH
	 uOzZ0DhrkGeloomoa3wj8do7cD6/2EygIkAdcXc+6XiPn5hu+0UbJPizfkEPbu+ydD
	 fb5NByCKneH9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94565C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286039359.20179.3755689454578696679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45c2d880f308cfc0ac250c1e956447628acfc316515fff02f84820cef990870
Date: Fri, 18 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752860393
