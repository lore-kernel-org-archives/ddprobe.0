Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D4C2222D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768593834; cv=none; b=SgCFYoxzSXjY6NbputP82auSK+glAN/6nqL4G64U/uisAWh8Sf2Bisrk8fWBAaYPYYSpuvKC1i6YURxJHqR5rcg08FFogKmDdITiquHZUj51C8rOMI19U01aIsNnKFESSuwmz36nrNCXTtfabvWpU8lmIEwJePebvbQn9tw6STI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768593834; c=relaxed/simple;
	bh=MyPgWEVpjtNnQJ5NDxCPdg+y6Mcg+t52eoiukTIgu8E=;
	h=To:Subject:From:Message-Id:Date; b=A67uGpPEEJ93qR70pzVgtVmq2geug+IeBgihOgQ/y+aX0IFGCpz19T0LK0RSemuw4/ixOtNE9+2WaMB31J9vwdpFeWrt7kllqFeMR4PXxFXoOuL0fLsLXw4z0W+cvsjLG/MRKkZ+d19VybfBfolhkQfn5dq3mIMf4j9W/xMvJnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfgmCWlm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfgmCWlm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3925C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768593833;
	bh=MyPgWEVpjtNnQJ5NDxCPdg+y6Mcg+t52eoiukTIgu8E=;
	h=To:Subject:From:Date:From;
	b=MfgmCWlm4w5d6gDi8aKTyIJMjIOOdNikDWEvREk1KDbooHo7SmTtNCxDaLnaoBLc7
	 LgwHNe+qjcSZCQpxz5em4gJPfWlemjmX4IB3HxIpaTVXUE+niDv5DpLwrc2+uauqDB
	 BC/oHbsU1RnZWXTgoW5h6kPhNKYwfprlgQJBjZ2o0h/Gf5YKhN3PZN/rqowAruqwsE
	 5F9CxdQjqipnF4twJQB5R9CmTcPCzFvxFbb21bCsoH+bcCmDNO9p1MEqCaRBrlz9Ka
	 +IzNvBiKMTdXB3QTSjdMMOMwyyUFGgN23Vq7U/BwjuOOu00mrmkghn0TI2C78MK6/d
	 910AmRLJMUBdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CF4C982FE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859383358.18513.2467950372749337984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a98bdd58969755b4ef18f199c97f8c967c38b786e1f36c09a413a018c1950c4
Date: Fri, 16 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768593833
