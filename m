Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369BE2FF65F
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756717194; cv=none; b=YtBN6hGDFuCPEr2jZVhZH358qmqVJmVup3v9TCiGGVyxknbCONhxlo6ZNoyd4G12DpH2uaRmxEvXTb4pDPvTetXprJkiF4PWvyN7DZz2k/43Ye2QdnYTy+Ai2lnUCMnyyXj2JqIxFFDTvra8lNksDnD8JsazYfwAuSi3atboGsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756717194; c=relaxed/simple;
	bh=ZpzNO4ef934kGDChr3eqiwR85dv7cl7jOqAm8pIF/N0=;
	h=To:Subject:From:Message-Id:Date; b=OW9E1K9js8sYdq4GKi/qsEfoxPa2xloT2PPgWhc9xTpta8ZPol6jE1zfEwhmVplYBaIFBBarkHViaSTJvN3cyKLrjACeL1IntWTzVQvmEqfsZQwCNDb0BcUU5CRrH4TnHPp3Vuj0B+ZTYSbKIhnNcq4fXjUJoEL0AfaDFJ0MuSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4FofM87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4FofM87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC45C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756717193;
	bh=ZpzNO4ef934kGDChr3eqiwR85dv7cl7jOqAm8pIF/N0=;
	h=To:Subject:From:Date:From;
	b=M4FofM87sIip/SFXWuu9h10BnWi4bTqUYkt3SzrJv+5PfZvaSv28S7PqDargqzcBn
	 Qbe0If4NJZCAkk2UHdfUEtvru7UdZ9w4UZQni6Qvhxfuf08C/82ih00JvWrg9eMkoC
	 k3UwcYugN9DfpxaZ8uKZ9ds9hf7AAIY8yNCuyG9zuh8CdqWfhIZIdRRGORsNxO/IFF
	 87nuIwh+ZUI3/OQd/gnSACo1eicux2dMOcM0Snzay8+mc6nPW2H8S/7bOIpTlgXdXv
	 S04AnwtRHTC2KHig9x4BCED5dx7uuc71OwtZCRKEr9gGfX36Akod3y42kKwKtb3alt
	 jF8+3rSyjiYtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AA4CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671719357.29265.10535667340014785775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4a14c4ec700a31a4baffcfb56e1850f0cef0f172cd404526491d9eec8eb71d
Date: Mon, 01 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756717193
