Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5CF35AC09
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787546434; cv=none; b=faqrsJhjgJ8ARKBtNhOEq1qPZzxPUGKsdFEC2rVcipP4nKg7+A48liy7QfFoi8SXKaAJltweRW6Y4+kBQVj9gvS56Ui6YXNVgC++NaTTbyn91L+xW53tBjMuA7V6Lq1ilswBR8wX31u71NXSuRfAQAq08d7J7uAalQT4tY1ymwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787546434; c=relaxed/simple;
	bh=bJuLAZfBJf7bhFrPUcqsazYupiSJaTWuzUPF9bcvYKI=;
	h=To:Subject:From:Message-Id:Date; b=SPPIV/EJ2+g76jmVhBLY3LnGg1q7xxeP1nLRSyJ7VaTiqIL/SLZ8RngMgDzNsquxVazuGCE0beTy1TVmz7SClC3WrrWPL7XANVL/TGHkZkAA81vdJArN+wsU2TYA02PZxeUgfTA2WWNLOcJo30o6q1T/pjSYscbCIEUkKk38a0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCwl0dRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCwl0dRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE76EC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787546433;
	bh=bJuLAZfBJf7bhFrPUcqsazYupiSJaTWuzUPF9bcvYKI=;
	h=To:Subject:From:Date:From;
	b=KCwl0dRsUZjpc98ZLnwSFOPeV0xdTmQna3vwNxC42+1Rz1EfEWCku3hdPSg8ehfqy
	 y7IGVgl1MATSUJM5BHzhoRdxrFTKdJghfWqwgRmbyIrkqrAjMEgdgtJ3O1jRQP8Ndm
	 y0xAm/NJkxa2jEyT08fSZVAIG9g7xqNrrDfgVzYlDw5jOopUbdEoVofU/sjOz5DhSM
	 +SYj2Qz0zLC8ciO9g04WZZdN3AFC8AxzNH864a3KjeAoUT0j4g5TfJPl+FNLJJmc2A
	 fWmAByqmyrpTNZt05g4l3KSuC0byIKlqZjfcwzFBCf38g26HsRz8Fq65aojXUlDaWG
	 4y/+Rda47ZE4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA40C5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754643368.28254.3167219851079175564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3989f017e7fab3c0b3278eb355d6653c963e1d481f18e69a9b777ff77c1f5067
Date: Mon, 24 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787546433
