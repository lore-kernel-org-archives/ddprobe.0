Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C05E35F8A2
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763489514; cv=none; b=lAuauYTn/wuQgNRT137z2JuS+OXk+HNJuL1hjkRbxtX3dHvF+tTp3sIkraTFeC2SaDNJu2ZpbpdDjF+3xmcnmqOfHexm76xyXr+3Twq1jGKR03nhotSScwSS1Q0Ctl1hfth21wqg/PtgSdg97my/pbMT2BBMy4fW2s3u6pKCrkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763489514; c=relaxed/simple;
	bh=vNnTI7kVyHQmkzFduzSqJU5JWSgt72nW9jGBHiaO5rg=;
	h=To:Subject:From:Message-Id:Date; b=gzB4Aua++OPfRdBBSgvHFPDeFnewSqBAVtJI2j0Mjd4UwjkK6lOSeDUdotVZZqFGiTRjR8gpBSSx9CkCBp242fVwMwsQBHgmtpjr+K1YBAYAO12gcfKdIY+I39gTG3w4//NMgufwWFsOe05SMiKz1EI1YmYBTjWtt7wUZmyqLCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5OygCem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5OygCem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D20C19424
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763489513;
	bh=vNnTI7kVyHQmkzFduzSqJU5JWSgt72nW9jGBHiaO5rg=;
	h=To:Subject:From:Date:From;
	b=i5OygCemeroVL405hyBn+Dc1bpFa4Pzi/IO64lFN8C69s5nkWTT9UWAoC1QHuc35q
	 esvCzteSU8cbNwRhG5caQOcaTmETVQ9bqEGSTRkjwOdNCvYbzjLGCtEvN14u9qmJIQ
	 Bmm8hUl5k+OcsseVRxq+KI3/iPZIoCACENPuO4ITW8SQlNBZl5OMjq2II3gjRyUkYE
	 xjR122GlF4dbg2FfFWoLj6LMV68nFXMxGpimM71kllbTBRXVPeBWVJgYmuNE++43Sz
	 27kU0F5/jlsqbpXu2XQLbHHzdB+3GrceSvdlGih0P/e8PesjuhT2u5k5UmDnL0ZRwY
	 ly0mwp0eNLqbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ED6CEE348
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348951359.27204.1322343589601472462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7957ada2a8c48a45c2e1cd9ebe227d1ea3c98d127ef26fbc30b7f51bebfdd8
Date: Tue, 18 Nov 2025 18:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763489513
