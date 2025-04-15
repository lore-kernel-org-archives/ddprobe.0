Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5613218DB02
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744698594; cv=none; b=rnS2aIOD2Y1idrKa533zx6mHDVVK1g+zpiv210wFWVtwoCI/OfCeCYxpcooElpQrXGoA1mZ4RMxGwP/iWYlZX/qNMzfrmWi6/fwG39XDIrJHx4tMT/+Fn8DcYun0r/q50yiNwkkJuAA7+yCg1h1c4W9Yw1jxQ/+DjizRNr25bnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744698594; c=relaxed/simple;
	bh=fRlQpGJ53QLHXoCXW2fgl5o7rcbw/J4Nd9eCaM5KgB0=;
	h=To:Subject:From:Message-Id:Date; b=XPwYgQ1MbgWesxlQxhA7bucoP3evxXW/j+GY6WoMqkGHRgHPmgN3mnb6w9fI1zR+bKC8ASate5GVRt1FnoZOPGZF6DPnEz8ZZV8091ZVsqO/LRi29369O5enoIspuLUt8C/nWwRcaVtw4v9HLjTupMCotj0KNQfT+IMz8RfCH4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bu0+UMsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bu0+UMsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8173C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744698593;
	bh=fRlQpGJ53QLHXoCXW2fgl5o7rcbw/J4Nd9eCaM5KgB0=;
	h=To:Subject:From:Date:From;
	b=Bu0+UMsFaPDyHy0P6W7RYE1Cs8CNjItCWiF9ptGaKsft1les/fwLVX3RTU5Im7gwl
	 2Dh45xn89bI5p2y5HyfkvgmYpkK5qlasFZDvwlb2ugpQexd/hZwILihY7njlA7h/in
	 FFJBz6IqLfQxeD7hI3ZvCWV+BMDr8s1jA0cdGvl1iK3RVrXxM7REYOaCDJr0lW2YWO
	 kbSqn4XpWxV6weW3pYWR2E3jVm8iFrh6yA7o16IsfC1tbBphWwnL5D3uTmy2J9MkOh
	 RX/Y7Bn8+1BoG1BGJ6UQydK+ay6WMFCfMtduHP1abH7Jh1NWxqvSyEIH5K28NtHVlR
	 sEcNXVKRgIPaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62FBC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469859363.6691.12645050268949764078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34eba96abfa2c9fb2421e1aa66ca08caa4631ba3e550e06aa2b05c0d11f90088
Date: Tue, 15 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744698593
