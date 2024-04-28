Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8210D1DFE8
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714285943; cv=none; b=UL8AHbSJLjEN/Ey5alQDvIYqD76ywtfSylmEmRh62rgEIMAFCCP0cl6joLE1/92LGpyWrUYj4ibPeLMK5V+/OoKzhlOC0cAa4RpoQKwA7mYAb6aDIXENZ7TUtq2Tk+nsmwdYlwg+7jStgqlqwA2mQUUcJhvq11vCKPbBOu+V4Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714285943; c=relaxed/simple;
	bh=n1JYbzcYxKTRGR+ZyqWsYIRB6Owje+xFkPnuVo2K6Pw=;
	h=To:Subject:From:Message-Id:Date; b=GDssM86Ug4doIKj73D7pLikPjRhM7b75h28oVy1o8BOTXXNSDVkEWfpU1uley9v1BAcXpwQCZDzWJRopTSuoqmFd8ssO75KURmStFEco/sDWiAY8duBBLcFy4wIUF65OO3DoeDVsu1i8zjX2JbyYUUIgJQO38qKzWhJfudbYhrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+HyKIfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+HyKIfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4413C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714285942;
	bh=n1JYbzcYxKTRGR+ZyqWsYIRB6Owje+xFkPnuVo2K6Pw=;
	h=To:Subject:From:Date:From;
	b=B+HyKIfn770cPKpY+ZGR0TwlH/2LuSiko9af9fQ3/gc+EUbvzP7aFIp6T3Jaa55j7
	 rweDHhtXMqhOKRrah56ZdHkWySMWtWOYjw2adJSQK9gdiF7MM6UbbmXFEy/E4ya5df
	 0aYz0UQtrmHCRVosMP2kFisLaidO09qTn240SdZm0N6ew+G4oFUKsc0Gjhy9SsWtMm
	 ePlySm/HvJkdWlcBhDRSceLFzbXCKKxwmriXoThQoda1aE/ZV6B6YZq4b6gSSLvj0o
	 9kZZnybzxW6c8pivydokWKMgkweV9LPHLGWcIHjNea8ZWE+d12K2/v0yzphAEBu11K
	 W/URY6DFdvmLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF355C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171428594280.20740.14459619948091933444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4142cead87e64c0882b72c6d86331f0adf823322e75876b8e8d8f39cd2a0a2bb
Date: Sun, 28 Apr 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714285942
