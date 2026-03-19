Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D68363C46
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773915294; cv=none; b=fjeKgAIFJGRzmHzcozDcchFcwl6loQYNN/mnymJJIDmPmwIQ5XYvbcd4NozPiGwhxlS2LnWVAFFU0i8njgakaODWI32gxue+SGoBszeVpxwuzZNUgFJs/ruatW5mJfUgRWMaovIxfjTWX7EwAl+YMrgDkObUwdjkC46gm6eq3HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773915294; c=relaxed/simple;
	bh=7iDI7dvc6kREr0lroAN3gENLDuwUiY7l9MG89eX06ww=;
	h=To:Subject:From:Message-Id:Date; b=CRHz5FvP2CVs2yVmBOR6+/fZLq9tgv9sBcDMtYaiKjnlzhRBC1Jkm04PDbPTUAeppwv45vSVn6HQIU7HYsNeFoKcLhA/mCuLsyv6HKxYN3osvIdXVqpBjiV2G67qA+2umrXklcrt+8Vp4alLSUo/t+Twxe2sLyNqSwv2qnuc0ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUlmoXfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUlmoXfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCADC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773915293;
	bh=7iDI7dvc6kREr0lroAN3gENLDuwUiY7l9MG89eX06ww=;
	h=To:Subject:From:Date:From;
	b=gUlmoXfS3nUEUiJTMFdxpncO8FumKjDdObHH8wpsNxc6WUyxiViBzrjTBe5BQTklw
	 XMuA/qlOi6D11WQyo1lvDu89IE7+lw4lBk+9tFE8vRbUb6+VeQTVm+wWd17vK7j70p
	 WYrhE7MOJo5/vzAZxPfG6TI8QqwHYW78JCG1R+V4RH3JAz+XwsJRT03MD5Ww2HVW4+
	 AblvVwIADcJSvOZcWH52VZptUpz6hHzclzhY1Fn2EJU34+58V/4bcL5jJSK5vaqM5h
	 ONg6WoqLk6n+Gtazo/I0TwYzjpUaVL6QDfhUgdaOAJ/iYn61Cx3YLbRCOEJG0nW3Th
	 fFRt75OgCJ+Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF57107529D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391529358.5892.15383876042863063379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c7eae8b16ebfa774745e8065aec0ee9e21597412fa1059c76d1a553fb247a4
Date: Thu, 19 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773915293
