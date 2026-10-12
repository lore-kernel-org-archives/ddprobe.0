Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626AC371D11
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791790234; cv=none; b=fOa43Qeig+havgmHT7QTfoQLcvTgOJ6TTUTk9iTBkFNo6Eo5dGacpkP9GkW2DoUkoCutG47LtBwX/Zjh1hGpWlK8c5xOLB1Fg1q+V1kgyjVyW1/+ZMaFL/5qSUgHjK0aOhdIQ7dEbnd21oQzHTmM4pTujSjoBfS4h8QanK9BX5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791790234; c=relaxed/simple;
	bh=Ni1n8weNP2rpB5fP8xLBQ9YdWNKvlilq5ssZJkv9J5w=;
	h=To:Subject:From:Message-Id:Date; b=hd9nto8QecLMc0uVBM0Mdq1f5oUzO5L9D8OuAHr5vcFgHXqCs3i3Q9kysPsX7qIXneJQmTg+qlQAbwxq/kcbYb9jEO4YcUVUd37KL8dNPUJcykrrD0DPo5mKnrLNT7OO/yq9boeaIU4n5SgWxLUO/11GaZoN6IQEb6HlOMUr8HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czYaxVcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czYaxVcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0445C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791790233;
	bh=Ni1n8weNP2rpB5fP8xLBQ9YdWNKvlilq5ssZJkv9J5w=;
	h=To:Subject:From:Date:From;
	b=czYaxVcSJFibO96PqxPMuOwDGE/B3AkajyCCabWeJK9E7S0pa2SB+xoHXIWRaLCr7
	 w0CWTydrgmCqe3U9zeUO5afvqZ4Ig/7APE1MOv6viv/0cenG3ng5pyPOzNVYs+f0yd
	 /HTvMRvVHW0JeiB/gi2I+ciz4Qa74cmWbc8leT95+e+DJkQsPpGQOq4jcEvQ3mJtrh
	 p4UQmkdFkwRqyqtpbCzmjO91RP98P3yseqEAr30GAljg+GNJwcDlz5vbR0jszy9UUS
	 u0QPqOUoPZeKJ1UbpcPlPIiyBjEiOK210Z4+ii1n/IM4eIKR3hZmr6jNgfIoM3BhPJ
	 PGknLbTVuysaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3BDCA9ED2
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179023368.16094.1272585702285469349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa162215e96f170a8ee3467971302849ba0e280db36d4a0bf1eade94cf67da7
Date: Mon, 12 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791790233
