Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527101B142D
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787721634; cv=none; b=NI41LfCLD+DTYZibyzWQ308s+ytdD9P8AxTN/LJ6dbKC/QZD8na3Akkn/hwz3xiO/ouOZbu2AikgMvZYs8w/dw/zukgTbO5Ieeum4bhuIPZSQfxIbt2uv7VMivGaUpf+ZcHWBVgmQAX4EQsRZ3B1Ck6ZLTdX9rXisRP+SEFUb1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787721634; c=relaxed/simple;
	bh=8sqlC5XY0uxR1J1DVIrRydA+5hfSEwOZHKlXEgiFXgc=;
	h=To:Subject:From:Message-Id:Date; b=QXwxEX4dgGKEQqrbSSls1f450f/pYnXcJdx++1vaLG6Ku86x79gZmeYBuGrDX/8RvLLfA3YngYaRJjagIFLW6esN01B3D0+yjBWlDj4LTribOlMzj3TXRUTSrlkqOyt3oEFl3BYW6Rvqu4waUMvZ9yV9rq9CHVQKkGcmiDgmXq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lh4sGfL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lh4sGfL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA63C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787721633;
	bh=8sqlC5XY0uxR1J1DVIrRydA+5hfSEwOZHKlXEgiFXgc=;
	h=To:Subject:From:Date:From;
	b=lh4sGfL9uaIgE5D7p29Q7nuXWxngZgPCwIFSwXyMxSkMMjCkrgPRYBGUEvtm74hV/
	 wc1UOWyRwMrxH0aku8Hh72S8NyAGKiO5nLY4HYXeGFi5zoC3W6+LEH1RIiytWQ9aY9
	 nUS6KYCqbDBAGvzVEx6pquSrBxHUADovZUuSyTwTq3+a0R4aEuukapTCQiUbSX9/jt
	 ni2m2AgcGHRTHAkGfdBU6h1ocEF7iFF6trg7IVX7Mwla8AXryxIXVKTDaUhkZ/kXxJ
	 FldOyLgCkQLx/8Tfje8ZaPNWg0UgB4saiwRIEwJNNVAlC+wT8gd32jIIpsJsCFvCHV
	 Sf9DJryoHpdaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E13C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772163370.31961.1348411343195683022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60348a2c31289bf576994c7fc42f4394d46e817e307e47e319e58121d589d8ff
Date: Wed, 26 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787721633
