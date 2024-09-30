Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFD61EA84
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727688354; cv=none; b=j67QhsI48eyM10Y00iiXJSOkkzJ7rtARFL1T+PcilvAvd0SXB/Vs27AF+I6MTaqkLapyWJE3Ndxl3G6IiZ8aRzCcx1HvsEykVLa8K/0HPfycRHA7oC8NmPBNKHuZEgcPO7saN1EI4HUh5SYeWR7p5/jR9HGDbDY97Ow5TCnjf2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727688354; c=relaxed/simple;
	bh=MPxqxMw9toFujAhHPwmqBbU3oaVa+OyR8TwQ0zfrKLU=;
	h=To:Subject:From:Message-Id:Date; b=Sybpqsi7Hbg5iS/P3gn/dwzAOnc7r/rRGSR3CDWrPnt+QxIbM9dyHmx8lkXieaE8fIIWgweVcKfGopjjQp5/0Xw/W9ZgObZinZbYWyWk/Dummqhniae/eKvcnZVkjkc9sIc1axc0i2AaK3EVuriNC1Po91D4i0ofPaE8keXtF+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDoHyKwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDoHyKwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8518C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727688353;
	bh=MPxqxMw9toFujAhHPwmqBbU3oaVa+OyR8TwQ0zfrKLU=;
	h=To:Subject:From:Date:From;
	b=TDoHyKwJa7Txs69ihOUeOVNYZ1KwcFLS2PG6j06cI+IIuXFUKAI+C1jpo/K+rpCSI
	 xppDSllTb9g49kCF48wdrA1zN30kgaNzxD2wZulCrd8VLxx2h93rdyad+suXP2nXdv
	 q4KEncMs+SyrbjVaU7p4gtNFVKh4OUt19ihhPUNvH8zhYTSSaH37UK5Ruppfmyh1i+
	 IBygbDI8k2RkQZbMpkGuKeR8jPiHaVB5C3s4Ny9UkJ9SC8Q6grVSgyXT4acSbzpmNs
	 vIL2RZGaQMh0Rxu5YrOk4m3ANBc41wOyO5a2cJlzN2YZWSI1Oj0Sd/qxbM+y7KV3vb
	 dfnMfFg/QHsiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B1DCF649D
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172768835360.20828.15714048449365563881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef7654b2f6e225d4f58a04e3dcb02961ab16111bbe666db126318dcf1a7df83
Date: Mon, 30 Sep 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727688353
