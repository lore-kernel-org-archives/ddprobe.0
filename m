Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A711B2EE4
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724261754; cv=none; b=u5IepQOPoX8epe9+5SPm69UwbFSUsHUaoGWuiAjGvZ1lZVeSdEPDZCIYVJTc1Phb3LHuvYmIoF8CtDxGVmtePbDpxILCobzzsWtSGDvu6AHB5eAb9OaHkvjXH5VUJmTwXpuFpQPQ4vYOtsFUlx6BuRJkdQsMYsD2UcpAEGf0Ydw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724261754; c=relaxed/simple;
	bh=lpcmtV48VFyFyz4QUZ3vNa1C7hfBTxxaSOMwgB0wC6A=;
	h=To:Subject:From:Message-Id:Date; b=m/XST52qsJa0oj43OSt5U9TBXFx6Fj0jav05/7n6CNGbaOQJTjIYTRgWQMgMZldd5V5m1pzACRKeeMxB8xX9FdOTIZWj74aSTnEnx3b6Q0mchJwgXxNAonTFiJ+cZwLnth58R9ohKf70ceLU25aq1ryKHcw6dJ1HYsY7YqAwVgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxKxqoN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxKxqoN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E67C32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724261753;
	bh=lpcmtV48VFyFyz4QUZ3vNa1C7hfBTxxaSOMwgB0wC6A=;
	h=To:Subject:From:Date:From;
	b=NxKxqoN73hHKt7PzdT0xm0rbLcDx9BEyr5afAH/NbAZNPEAFRsBqb2K7JbnDT8zDt
	 nobo+0HD+ieOXx4YmAsrUDygCx6L1mzp23PlMqkc5QulRRC1OAkzMzwNH7qOnJhs+T
	 Ywxyx3veE4GAYo0Nnj1MChY3ePKO5NHMon3qPbwy2JFnpiaK2vvsuD503Zr4nNoN+n
	 qbsZfCPGh+5Sc36wrIGy8rx55LQ7A3TlrdkOybHIIVvS6GpqidegSKNRd6N0GUWr8P
	 WxZxWGfKFpNxvkvC7TVtFliHheKUXm+K08Rt3Znju251nIPoDgfD8VCe4J10JbhP/v
	 3Jt43ZH8tPMMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F10C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172426175358.21614.17031642162523808272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81eb8c3a213c54a29c8abe59adcbce8c27117a6dfb58828e12ba39e0038962a0
Date: Wed, 21 Aug 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724261753
