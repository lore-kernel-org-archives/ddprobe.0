Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F4C3C465
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749167394; cv=none; b=Base4qUwKi+bra11R4Jbd4Le/TM4F9nGVZgWRfvTO8TzT2IklBGZEDiQBYPhWcLICTAR4frScAKnBfGD8o2ti2D2vhPl5GBzMVYFEVc8Oi1eOZSznXDbR/al5FZAK4qjPedlc5ETccD3s87pG7oomjs+naL+H6sniWNNZ4ONbwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749167394; c=relaxed/simple;
	bh=ur4/vJClVkUi0o8iKTn9U2qKasMmQapUDofoyRlah+M=;
	h=To:Subject:From:Message-Id:Date; b=QhNmYPKk3a0Ewjy6gCtS+DQwMDGxc0CQ0SBtRvGWSJzxYoVMvOOUqZaR7awo77gy1owEtruY4+IqeyQ6IyDiSk6FjoxylizsGzASEUW6YeQujB/YH4+b0HP0UVmpq3M8eRxwnS7aJhlTFJ5vgYodl14lv5GJWLcHrKko4KRLyf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwKmdMVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwKmdMVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30B3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749167393;
	bh=ur4/vJClVkUi0o8iKTn9U2qKasMmQapUDofoyRlah+M=;
	h=To:Subject:From:Date:From;
	b=OwKmdMVUpqh1p0s66cnlKmONvuvO65N0SEmWHPy7Acjk/JWzYXuDlVP2Bw/0melU3
	 sNG3wZr8lsszgQSUJAr4+lg2+JLC/Ma1jGUZAK3ntuOYUJ2uyT5AwMhxFuwiBabLio
	 vZXUtlyohKFzHC+4l4EgJrmtDMUCDHpIsUtgXSGMxr2EzkIzXQGgfACULxkaw2cKO/
	 0yGErFLXxWo8BH03kLpoMMi3ftNekQFMmm8VDRpDIp6EQGXWEee7WXN8tght4Vxb0h
	 i66qOuH+5bOPKLfsopK6Tii+Ba6Q79t4ApOM07xBcigijwagILyVj9jDETMXbdsDqo
	 wZO7ZyJdOx3pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93972C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916739358.13046.12040984635287446610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8314f28e86567c480565d7a6bb07701b61653d07d580d406199ab6b7c9d64b25
Date: Thu, 05 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749167393
