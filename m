Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BBE1F37D4
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761097794; cv=none; b=hzz6edtUEQHUwDGU5PaXuku1Bq5gdqjy/LXRGCDUI4BkLPSKNT4NMwi9IJXCQjwX3zOO5Tj84N9wzarN/IX3yg6MIRybr1RWN7BkkgrxeTfTHQco9XUWOknRABIs6Uv7Ns9QxzB4LIjHAVplUG+bEoGFm9nPfy0jlZZehXtYxSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761097794; c=relaxed/simple;
	bh=uzzOYEShIchO9LoqW+O6QDKDPMpH6pPTJcaIh2Qbn2U=;
	h=To:Subject:From:Message-Id:Date; b=c4aQYqDks7O4U7XA3MJu8XxHEVgCXlcOFRpRP7F0l8w/GOojNIF0Xo4ACh8BWoFkF1/MU46oaJiyudSmBA2eRkP9MgG46MXKZJTne0YwqM2/jh2HY8Wd59o+JRjoxF50TwOi81fX8IbqltgIk31RU8brJOwJn+f4ONRfwOzFnDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zl1r3Y6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zl1r3Y6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A06C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761097793;
	bh=uzzOYEShIchO9LoqW+O6QDKDPMpH6pPTJcaIh2Qbn2U=;
	h=To:Subject:From:Date:From;
	b=Zl1r3Y6sGpfQQBFvCUg/Kt5IX5dgsvkuQA+Fe8MabsBjKMWvLFIoAog93kobKMvlx
	 vFGALt8GBrc0onPdtzdA9BUqv9XPBWspZZEGbx9ASXKTEIFeBVRJC5MWlp0V1ypMiA
	 goeS4LK8JICN+qRG69imRTY2mMys9ZrXI0akOBA6IHibInNALMC0ydnqB3anpZzVon
	 HWkxkSK19YWSZKyJgGV8vK4+TlFkdx7GG1QUd33GeFSCLbyaPARJZaoBbzhp5a0NzQ
	 mDQ9h9ZL97Ntxq4aBBS1OiU0lfhkKAo6GE11sUfK7a48JscZIWZrqCQEb84CmMo//g
	 wpzUkb8KMxZFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90153CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109779358.19464.8688815942371081606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a318ea59e3f0e8906fdf7fa178f20bbfd92bf8ad18cffbc146a05e9b067cf1c
Date: Wed, 22 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761097793
