Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4F5199E94
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767229434; cv=none; b=WKIgn4eeVdFnsGcvt+kTm/bBlinR0zZSA4WRggGDqRV2WktJ7eVuYGq75lUSPSvN5PLB68mKU2K10q2OoQTV14aPrF0etxXGlitoXpl1S05SLKD59ddL06HSHY19K0dDDO7AZ/BaDhaXRxrqrssH/w87eP9h34l0hd9OeSkuOgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767229434; c=relaxed/simple;
	bh=ov7StNwfT4mVMVmH0kigl4K4lBEvqIwutLbK94dBzro=;
	h=To:Subject:From:Message-Id:Date; b=n/VpQuCpVZ02FC8UxxlfVM2aQEedFboH4plwjOdQK1PPA/cDrUjTDB6WSeGaw7wWjnbzDYRFxg3tFTWiv05nnNjY7fmP91yu2aIhVlYoufu5dtQUblXwB6OSIOsUZPLFgTgWEDMyaPOM/e0leFACBpcq3hlgJxuK5aM9gteJJt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sL19oyOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sL19oyOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52B9C113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767229433;
	bh=ov7StNwfT4mVMVmH0kigl4K4lBEvqIwutLbK94dBzro=;
	h=To:Subject:From:Date:From;
	b=sL19oyOMdfDxm/F3CAd1ix6TcExi5H4zCjc/kNuEJJZdiYJDZVCjUi/xP+TXFdRLC
	 aaLB2tx4It8w/rHi+lCpo/5xZdcXzVx4HH12XrlV9HMNcPLSiZ8DkDtD/eSXpw3iTV
	 JD2hmMJT/0aHikxiEfkR5OjpqxmQMuYJY4PiCrjhnZkTAGk+4OUbAUUk0PEnnSqLLG
	 0580296/LrTwac0a7/1y1J02GCfB59rVh1hu+WlI6kj72JJZPNpqub8fKlgtTXvzYK
	 KyR7pWErD2ie7U+Nlg7PRCZkVptDxhuViwNNgt/ZqQBCYme+tIj7JGuf9ClHiTxUnF
	 4nP6bo6j8lvSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956DFEEB575
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722943358.26337.14958740459400053540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44911acf86b25ef0a25a202cdcb567b21b0d868cd90ace1cfb534051788e4f9c
Date: Thu, 01 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767229433
