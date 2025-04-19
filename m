Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381545A4D5
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745102994; cv=none; b=DNhui6Y/pKH1ZWijiextjSacHFggriEcqoFsXtipfuMJU5EEKPD6izJ75+oiogZa2iK3Y5m/FQhVyQJLXwMUDYOH7BSDQuF8GQ0MxvBlFUkPMOBPu1LsyT/R3Rs12pi3+rHtvrLW/V+YlCs6L5CPVQGoV9vYapKMPFRQRg+Gfdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745102994; c=relaxed/simple;
	bh=Pai9j+TO2XMDhoD9uC85U1i089A6tNEs+nTfblcNIeo=;
	h=To:Subject:From:Message-Id:Date; b=tsk0S8vp6TeSdniQ1yuxvmmF+Ax3Uv1f9dtq9rjASvt7rs6jcIS69SyeHU+vzke40jK2eBUnfrzf4TIhAdPG3xqQF+MQwPz/vrCLDNiDCCZ1EIBNo7rk7yTshEXSKJXBptJ92aoG5w3UhvCy3JJosk957QgNG9JxcdIL++DfV7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMh9XBH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMh9XBH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA381C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745102993;
	bh=Pai9j+TO2XMDhoD9uC85U1i089A6tNEs+nTfblcNIeo=;
	h=To:Subject:From:Date:From;
	b=vMh9XBH4ZO7mqYw6oYanRJX4LnO4zTxnT5+LsFl+VJaHyihLcQNqexFseOFOEtXDw
	 e5CtN4Dj6alZUUjGZVBwvwOEomRb9t2Yz4O8SNHzMKgjyigl5ta77/gs4r0c1mx1TX
	 7BEPUNJZ4ICVOTPQ1nvIzqyMTgDx0PFggboXayeAhWuSzT20gfOUIv/jjPlS/dhBKw
	 PVkQzsot4sG0Yd1drrcDJlGN9SqDE7XLBPj8POIT40r/J8RMxGVbb1byMUZG+8ATE/
	 ZP5bCs6ISiWiRNvsM9/RVVvxDcb0hifxYuKfJMcDu3mOpaVI5MwIm4JoMxfv48QbSU
	 FQUDuT+viSDVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950F7C369CF
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510299360.2867.11363511703812289060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19974d8f55074fbb5d641842cfa251651104750f9f023e71bca85995f7afe9e3
Date: Sat, 19 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745102993
