Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C418125FA03
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748820593; cv=none; b=BjQSCQX6gDmZi6jqKGxxwn29UfST8cJKmrs7s6L3CFEgmFEMBwcy256a4WgdAcrKxwiunDJJlvAz0yL18P9v35q2x5Yo96n8eX264r9YZQoYGjKqMtxJh7taOZSgxdLXhuIMP7viVRhxFmvF6zUstodB5EqBIrFIvzYhS7kKJEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748820593; c=relaxed/simple;
	bh=E3AnG9S6ucXJK9z8eAV3SiwJ1B2AAIUprFlsnWWoYu0=;
	h=To:Subject:From:Message-Id:Date; b=CdRMcezuVV7s/r7OHJsJrLHei2CZ8zfjqb5yRDjR/I5eea++zZhEvzN3NShlhHNiSjTkeNyzdsuWINPZCbCOyvClJM6R7AtUGnMl8ZMHDyWhjVRnmvsdS6+t461jpFh7iZvCvHmpAS9dIyIMRfLXDHH2d8gTjlDOfmW13rXG46k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+an5Pog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+an5Pog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49C7C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748820593;
	bh=E3AnG9S6ucXJK9z8eAV3SiwJ1B2AAIUprFlsnWWoYu0=;
	h=To:Subject:From:Date:From;
	b=A+an5PogXOjeWDsidWiDt1EeXL0MWChXDfw8glbqfKm0nSNRlCdynexzkQ4dDT+qv
	 4YcwfpE45+igDTi82vqr6K/tY5GSxrt3iHyiIQ9WHG7FLVhJH49wXLwMYYNvF4QY3y
	 RdG/A8GosMm5gPboibeAySoLHERrLBxwZGeKaQqTy1/A0WjAvn1hEvPYk+iWmg86xE
	 hWr1y/A+BBCHDZoQVOS0cYL4O7z5EpshUkagWmHpPAaP8fmHAcR0NBemSb11opdaOT
	 3PZc0Ea5UA+E6uz/6WXej1u1FStQdhCxhx04QZTJ5Z+3PbFQ4utXrkzIY+Ry54634c
	 VcRoI7MtVceIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9083FC5B555
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882059358.18125.14864442587234117207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0b98caf5424c7649886e18155eca30e6eed30f223896ac66053164940edc86
Date: Sun, 01 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748820593
