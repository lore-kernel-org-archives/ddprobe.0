Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F0D172BD7
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715697143; cv=none; b=NfWo81+7pBHv47rZtn8tJoVDgsrB/uGmY0X+ZHAmPjiQZDTpF8hV10umDmHuYwsZ4sp2Bh7XW9hHengXdlxyIIMTLJFP761R/GGfidVONT4iSI2ZSq8BPOb6xzeu7y92RUPjFxe8cBDiRxNl043BfxpEINCTqJQ2Rn830T7LOss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715697143; c=relaxed/simple;
	bh=ewIb4W8gmE2I/dM/XfZtg/JrLz3QVCd64NwLMPAop3E=;
	h=To:Subject:From:Message-Id:Date; b=hl1/8Hx9op3WjXq/pwcgAp70MKu8iWNEtEr7WqXbUqnSc5XX9rJCoRaGddHCZqQmrq7gM47qo8soFEVzHMpIeCwyB2ajyB0JX4XiJAB2tz464Id5PyWH1m50Se9c3HOETB3nv0K5w81piCXEgQzOozxMwzdob25XF68VAaloP50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLlfU4d+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLlfU4d+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FC8C32786
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715697142;
	bh=ewIb4W8gmE2I/dM/XfZtg/JrLz3QVCd64NwLMPAop3E=;
	h=To:Subject:From:Date:From;
	b=GLlfU4d+jmMsHLRKJDAKaZ/DjR9Pj81COK+AVSvORp7Len2BOTpOJmeHVN9ghsums
	 5FEIczrwQiH/GliIdCpgNAT1+AqJqg2t9yfO3M0VpNTJiP5q7TbBhpxzGlJ6JjVJ7h
	 3NpmiW2YnmbXPskynt0Bq8HaQyyxJqkv5lLmzg9BM8M0d3fM3bwXyjZpu637wzBf2U
	 VAFmxg51E8/3rZn2OmsCoU9XlMCrKXDnEugGl4wprd8On00B3nxXvDs+z+k347HoNQ
	 Xv9a1pc7+T+49gkJ4NLS7JA469dDI0x4Kk6TLJpSmZcQ48qwLt3kNrrbrvTCcLKvhL
	 7Qhw1kSfY037g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C561AC25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171569714279.13217.17926220950345314603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c6b0aeb94028fc2c98771c6dd9e310c4795f635c00a08fa9dac392a216af2f
Date: Tue, 14 May 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715697142
