Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F84919A288
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759730394; cv=none; b=nxldWW8uDF9r4ALA0ErkVMbDLtZobusAtjVaiy3wZaMhKXybkuuSgL1a37jRksG37JQQ7hPj6kgR9Tyncxdn72ozI9+Bff/kmSpEI92F2hpwzn4KB6gS09/ryO6/kKZ1ZFM1Kq/2YPrHXAylEUCQi4GdIoWrpVHnn8EDqIoMhOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759730394; c=relaxed/simple;
	bh=6uNw1pP2Xhk7GphRK1hmx3a7Fzt49Ad4qz4mzBcW9ek=;
	h=To:Subject:From:Message-Id:Date; b=ALlrrRQm6N36ip+Lj38HUODUia3LK1icOTb6rRIaFzcBTM0WuLkvRaW+3QOBIZI09jPZSASfluqwNKyXX728cRBChd4JLQ8MKLhVyan+fKCBMRC2nvSiz7QucNtnMQTY6WJfOVKCqLr7NtBu7pixyhPgoS73XHCOUA7ErVwULyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Co5qtT6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Co5qtT6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F27C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759730393;
	bh=6uNw1pP2Xhk7GphRK1hmx3a7Fzt49Ad4qz4mzBcW9ek=;
	h=To:Subject:From:Date:From;
	b=Co5qtT6Jy1oh5/+Y08k7sXKEOWM5gn61quqfKAP6rpNZEF3HpW2DGHOky/XDZzcF3
	 rXAUh/ZNfhPslu8OL3x7pMeGFfKCBH35fofqfL3rktPDR0Neue7/kx4kILX2xuEqsJ
	 WhcTSPuAV8wOWriYzyV1PSwy+Pj64To/LT472wQ24NEmD5YfVcAyczm22ZDNqRlW2A
	 jgDmYQqC7kyJGidknqOwxdkDUr+yAgw3SVi/TqZXCry6v1OVimfyhvpAYzFehJTLIH
	 XAQHHuz8NxDRwVVneC2299P3+NHPrmVHdxFrkNuTKy2EX3WCCdILlLSiT+tAHzN3Ix
	 vhGalCRv10IVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A25CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973039357.32552.15483965336856576837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ed4c9cb8313b6d84556fbb46a1cd41e213d0a3b3bd909989e7ea6d711c533e
Date: Mon, 06 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759730393
