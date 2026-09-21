Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B16D274B4A
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789957234; cv=none; b=FRxEl3DRe4LEF9LU9wMVZL4HhoBLAE7XIYYx0YXXXCYBzf0ejIZqldEqk4MKlhmISpBEbbupH9nhLjzdRS9hhnWI93/Tb2qGUSRya2TT2d782SKsYbcerDJGukZKiEqLCh/mzjtPA1UkQc/GWxnKsnNNWhT7nO7Wp13ikmLL9Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789957234; c=relaxed/simple;
	bh=sQ/K3Mfq4ssPC+49it5gcAgU3U57/y1WiRY9wmYgAik=;
	h=To:Subject:From:Message-Id:Date; b=QryMftYHar9TILoKUzm0KRvKOe0G+miGVkisgeNAPbSGKhE5Z8i9qEFh3wwWkckicqM9pjZZqCm1gOy64iYoZYqQBGnceKoQ5gJeeQcSLu08B17vchmQ0d2uQip35nH8zgK4u6HC5rSvUUE8yaCimwfZ9uWrssv7ebChnVG8EQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwoxmLuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwoxmLuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B3AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789957233;
	bh=sQ/K3Mfq4ssPC+49it5gcAgU3U57/y1WiRY9wmYgAik=;
	h=To:Subject:From:Date:From;
	b=DwoxmLuX1fyOFIcBF+xlO1ALM2dbJZAv342gMsWvO7dHZ29ERI3b/Vvf3RcC3QKMj
	 gON2fYg6LyT//DEbW/75ySMlsJJygD1OMF0vtL1r7vlojq6UxzDpOhMFurSFsMdkLX
	 fhpY+Nl7oxyS+5m5XnnCb9ii0rMARx89eXiLj5MFQVrmXLp/Q1nWkl4s08Q4ZZo8GF
	 ggTzCHsC2tDbIlRDP5A714e7kqDGaCGE8HIdCrQiAD2he/q9f4bbPqFTwuRHYVfa2I
	 XpbF2BcRVGUZ7lwV/IiGSc16drLK6Dw0AqZZDerlS1hx7R224jTr5ZFtygpZd/UAg8
	 F110kK2AvAKtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09A5C982EA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995723370.5259.16309784533792006515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59ad4f934b37431328e692167cd7ae4da9e1628e8eaf4affa8f408e8c5ef01d7
Date: Mon, 21 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789957233
