Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341062AE66
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755871794; cv=none; b=X5WRrT3S0LrbyrkD0p/OChs/7A/k9uSbyDQhXvJeX/rJiWLMCmGZL5wOJV4gzxQmuEF3eJGOJ78Fk11ZZzsKCgsxxVIvd3hKQIehpo/nX227k9FkqflSGbKytggmnNmZdMDMP0Rbim74CouL5MGlG0Q/YcYZWEC8ctVMGqzzLnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755871794; c=relaxed/simple;
	bh=hw0/RfVedyz6HtppQUutcSaIjw/EwG61gcxaEtSQdYQ=;
	h=To:Subject:From:Message-Id:Date; b=kjXopd5kzKlf8yIwyi7eAUoSTPiDlPIxZmBHnjcZVmaPnyMhL/X4Vys6sd8ilJX7AHOulvvrvPQwCK3L73u+iQGJ1ausGGht9aCsmntgDCqkf4kuigSlFk3Gt9/2mUlAr+bQ5En0hNsFWNK91EIanrgiSynLIh0yC+r48m0Yn+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUSHucMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUSHucMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15ECC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755871793;
	bh=hw0/RfVedyz6HtppQUutcSaIjw/EwG61gcxaEtSQdYQ=;
	h=To:Subject:From:Date:From;
	b=SUSHucMSBo47rRQo4fc/reebfYP4OO7SSIlDcpBoLGzLoyrhzvTYywFAo6UELFATF
	 M3iIR4Ht3jPRgReaOcGXmpyXJThPwjfirqENz4glP68/C5FlIpIt0rWnF5TGyuTbNE
	 h+4dnGVzCzgVWSR5SlcluEsTUOq/4BlHZ1JD/qpuFgGfhh/n+sgyhCLMHBdoh5zowF
	 /Aw6Bq0zACY3isXVfuRCpl2dCriRqqFmZvWnE+QerevDKnue+AoasOKmp/YVFVLSsE
	 zVSqCJfHNmFKOcqLu2L18U8qQKS+vRlku8NO04VASiamZbOElihuKegAl59S4GZVcS
	 /pSVDeiEIaTZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF5CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587179358.32372.2913713337571407899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956dab1230650cf9c03d144fe7ac5777cdd647f964edf64e246ab0bdf48ef923
Date: Fri, 22 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755871793
