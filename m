Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D22821A443
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747064394; cv=none; b=gPedJkHKD3NkTLXlQ+LU3TyaICzEYf1PHZ0kRZNny8Mn2hchhh7eorAvTyU61ndMcsCvJpf+lDEjGiMWKR2u5HzQ7a9jla6z2FXHj+24BiCtHO8MVdJ9elStdM15nM9yafOWRmF98Pxe3fmW5Wr/Dz116J4c86TxE8NS2Gy0WTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747064394; c=relaxed/simple;
	bh=+XHqiJLn18qhLKL/KBTz8Lz6l7DtUVfbQoxlgtM1nR0=;
	h=To:Subject:From:Message-Id:Date; b=dTARm/ZUY6wOHLWrktBGhTgfTBVSR658r65G+RUDbxRG/DEfKXTDrtYRc2iq4GNDZG6PUzxJJpFyFmju1IF8Jl2WrPr3K7s6C3qeAt8f37AWjLf4BGhxhqaiTDP+djXreAIGu6MMn2r4nA6uL2XrFOFPgPDM797C/WQg+yWAr5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNzWPKk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNzWPKk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3372C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747064393;
	bh=+XHqiJLn18qhLKL/KBTz8Lz6l7DtUVfbQoxlgtM1nR0=;
	h=To:Subject:From:Date:From;
	b=rNzWPKk+LLspJyAYExuKYTduv2dJ0N7ahiZfqLCd1jKpUsHtHAwOWfxPkM+G4YFHm
	 vy44MNSFcnkd1thi07PyAKsK2Hw2hFOer8HNQ1DQOUayNdAXBOoFauxqDwMf/m1rrM
	 vneUCkc5p80PaafdI8d6yyHRnMq0DHj8y4vrIqr9vz+3+6dZRu8eHSJFNTeGt4c07n
	 6X/CJE2Qut4O3s7QmOd40L5a+Q0WZxPyUBTQAv6TGzWdqUXMPLZRn3yFYj/GfShVY4
	 vj/yv/1RLWbv96Je1rjmemsiBFqmFRbNbAvGR76WQ1olJbWAK827W92Wmicu7MNQBW
	 WwXV0smHQBzkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9393FC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706439359.16022.1505233534248332654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be1356e98bfacf5fbc7e2a38ce7c4ffba428bc01146a53aee39a1b6b017fe31
Date: Mon, 12 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747064393
