Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9E22F7475
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763417515; cv=none; b=l0413y/9YKc69PlJHT9oiQnuSRtPqTxen1kSx6CEDzLD7Ky7zJa9NjbEeUKjw61W9rUVIkShXAcJn3FoBGuEPzUZVUXHkBOZx0ZWi51/D5e/QAoelDeWKflsxMsYC1pntwzQymEJoPfGt6HCi0xi7NWtwsHTuDmBlrQWeE4BnQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763417515; c=relaxed/simple;
	bh=K/GqRxRjImYRdNInIAor/Jl8yXLcP92qG3iafSaNEkU=;
	h=To:Subject:From:Message-Id:Date; b=FqckvuG0IefRlTIdeC3VaoJPoWfq9d8TYbFLiSdoVdUJIquH7fgX/CSBnBgRMdF6tcCioimq1QGTzlbLSTffoOspkLFrLObAJXKCW02C1ENzICLMyabFWOHPHptKu7/0BY29PP2Waa0IuCrzDC/ElT/p6ZmRBXn+slMtXkQJvpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXQmW99C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXQmW99C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5272C2BCB2
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763417513;
	bh=K/GqRxRjImYRdNInIAor/Jl8yXLcP92qG3iafSaNEkU=;
	h=To:Subject:From:Date:From;
	b=qXQmW99CD2LvpCo7bewbMZhC4N7xmxP0tH2+zpq3iTvMpUFfy9dmuSbQGApFgAwc7
	 eXP5TmhDKJ8SnI62cTLSqE9ZXRlOOw57GPC3Iw3tcxyH1h6g4UMJqUb5svDA9lAoLT
	 fSOkIXeJ5+Ter3mrNBRdL/n+31BCXithOL18z/8Fy/RHdHY7FMGuj0xplSTT+BtIF2
	 bdnFJPOHTTE++EDrPYTgp8rrFacdO4mYX0ydbuVQzVB5sW5mPRBIat79XgwU/QMxAU
	 YGsca9kU57zJn9EwwfEQojmUMSHlvnxiLdRr7ItIrRGopA7AsOXOTutdMfyIeaiRij
	 zpOyHaIo+w/7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91627CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341751358.11584.12372523134697481124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8778871879cbed9f6482adc01df876ec8f78d7d65965ccb6e09762c8ab037ab
Date: Mon, 17 Nov 2025 22:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763417513
