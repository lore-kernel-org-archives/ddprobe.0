Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C4E39183A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785310237; cv=none; b=uHYBoChuFyNnLNzaVq1j0fpfc11v9ScDq/T1uPu6IQsSd7knhT4yfpGEVgCTBu84XV6CcPSlrJX5wJtvuO+OanDShXbl4Z6sjIK/e/l+r3WCaJATIM+jumybfGTDzi4W8GgfpTXEwFG7RVLhslVm6L5vmZ/jY5KWdN09KLL3fr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785310237; c=relaxed/simple;
	bh=MTNr823kmUczJ5g3CsnU/G6pSNKNvqQ+RYIFXxNwmp0=;
	h=To:Subject:From:Message-Id:Date; b=MLzN+3R9SxjxRrqQ0AXzWrNM8wtC/QgHnudDykUatj/X1cpfarWDrAEjif5GSci+KT0ZWji42AOv32rkcGj3Tytt4K/e1YjtEMgceDDg+m26ZC2tiRyl8xVZjaLWnYbjePS+5wyg7VowDwIAxFZFFfFAjSOvHsDJaSvjXNSzv0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTfzKzbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTfzKzbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCB1C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785310233;
	bh=MTNr823kmUczJ5g3CsnU/G6pSNKNvqQ+RYIFXxNwmp0=;
	h=To:Subject:From:Date:From;
	b=RTfzKzbp9OmwRX/SpvUlPwVT32/kYDKj54qAfUrCRV/E8u3QXPV44alfwMl0aDIo0
	 9HRk3wPBTeI+vwu+C9rK7Q5hzFuD+IgmJhi+y2jx2+aLvSMXzjzJE/l6CMnno7uh59
	 KsrepuGou4iCItBM5AndEP4xq8/+mS0MxvL9PronIqSP5/Jzh/NGHRlJkA+CPJP47z
	 69aOol9bZQHhJbQQQC2JRwnV/o2AenlYEzkH1WMYzfSKbaRNzaW7Q4poCET/215OUD
	 K5JXoph/LR8K7odSpm3z+jCeaoKela4aAX42eTp2I8tzlmRye1D2SxmzQFDPUFp+RI
	 wNrFLo4yqnBEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8512C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531023368.5487.12111354118147491892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e2ef3e3786da91b9c281a86b48e88668aa308988c0b436c56085dc80eb7cb0
Date: Wed, 29 Jul 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785310233
