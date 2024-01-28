Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE39D50F
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706428697; cv=none; b=YLX2F8/6hI9sK59GbjmNN8vsd8OAJ1DvnXDG2jK/YWJ62upeUFT2xf1EaN5dsz/NdsbVZtmmUKkMSyMjpcvXKuZ6+J3dQn+Yi8XvJdxb3Fw1LLhXuS4tTAss2vcXiGPNn6RUfMXUQqXjGtpyO1NJ3E4sihrgICoGx8+tg0sTDQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706428697; c=relaxed/simple;
	bh=lMGH4MAycnVpgVrrC+LKXm8T5kvV0C29ACCcddagMyM=;
	h=To:Subject:From:Message-Id:Date; b=MQesx/mna47HEF/npf5yc0nJYqG9a9GbWBfXTVB8c6+3wF6zjtUFMBKg0ZKlJwihvYE1kEhh/G1P9y8OByQsgSHS2yhrA9PdoL++/SPyLjFzUaTKaONR16FAwAyRhsDD9sCgY6bSicTytsvB4prx6XPQAarOHoR+XM2/pTMmXEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6R+Y6Bf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6R+Y6Bf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 766EFC433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706428696;
	bh=lMGH4MAycnVpgVrrC+LKXm8T5kvV0C29ACCcddagMyM=;
	h=To:Subject:From:Date:From;
	b=j6R+Y6BfWzL4ooke9M8Da9i1ONK7oWGQrmvAixWrqCGe/q50MUC49yakbMQqLkEgr
	 8dOqt5iYNjhn9KcK40LCb62iTeBssbsEvh2LWzDflS0gNZ5FOiRyxYpspyv21mB86x
	 Conh9CIoyqJZ96RUgHdp/Q+XSNcGF53P7W+IUAtHPA72imGKMVQ9DZxU+v99fE4qoH
	 sdSy6niHcUzfzZ+zseegs83iNdnyqXm9kWUkvD3VK0wc0cwmStjyGwhtfjbosnxLX2
	 LAQfLITow2cym8/dO19CSm1UYlKumSl6kIEyrd6/RvxzlPirSglswkcIJM0MxZQ3ik
	 tKVCDb2dlSw3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B77BC47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170642869636.10092.8804357523574763258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b7983e2016ad9218e1309da2e2aab37e1be63c899316d250ba9b541a372a92
Date: Sun, 28 Jan 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706428696
