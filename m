Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C6920C497
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750062594; cv=none; b=BT5kvBniINkCMhP6qhca+vBrSu2zJoKt84gf4l6Awh14v2wITmIxpG5R6mNeCTE6A81XXz+4AEPZGTUyoXWys5QmjFxLVc1ipa49OR0xumKoslxjrP8ghuQruiCLHbkbgweutKG4TdoUormMyVw0xi5b716rLokjhkHf+0y0KiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750062594; c=relaxed/simple;
	bh=GtqDTDvlCGkJa+O2yrr9ioEEl5aWT0o97Sx8XL8XqRI=;
	h=To:Subject:From:Message-Id:Date; b=j8RtYGKET7yv0zPrs0xmkWLjTK5c0w8dzVusRNIs+PHEORidv0IWSN3/QjavRSmnHQvUC/9B6IKsuuVMmkw8pSdWnYT6+d+WpJc153UDKvbDIorcEreG6lUpTzjFyWkHGhejfAWXDokpz/A/zlq2KMRJxF8E4zV6AuS+EkNuuN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9zUMpZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9zUMpZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B2DC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750062593;
	bh=GtqDTDvlCGkJa+O2yrr9ioEEl5aWT0o97Sx8XL8XqRI=;
	h=To:Subject:From:Date:From;
	b=L9zUMpZqDii/EZbkOCWhJwuagXlMgspy9AKmZ//6TRvCtefvZCwYiYCE5jPAF0zi1
	 pSVh3mmJ7iS2r7RForTEQyv/vYrM/VT8e5hWoy87tDhMnOhlSt1TnqenYODMDkyeDY
	 iXeI89Vc8b8oGP3v3KWzZEuWxaGqDLc2RSYnlG2kXT8vkX0vYM1UHqorwsmol6A6LZ
	 Rph/HUt+8kXia4IxI8yUlgM6jUPvybp9RgecL7Q2lquw+qS9Ujgr8ZJd21X1AMfoHb
	 lTqsJfo0yjDTP6onab5HGc46Zy1Q0Ns9XwA3lKd0oUTI8QSLR1vh+vroEP2jKzEbfq
	 uysAT/1XyzJtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92661C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006259359.14380.8874794180231204752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4082e8e0c46369239810b600d65799bd9cecf1e6713d878b7a41024d365abdd1
Date: Mon, 16 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750062593
