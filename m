Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C153A0B14
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768484034; cv=none; b=YCvAoplkIzpAziabJ0n29204wI4BqfbD+2owPv5bY4sCRsJdpjRzYKoM/LdqbWuEcRrxEGb1yKpOQAsfofHOYywxouIjhLDDeMt6FJsDZ6BGm+1zi1dBjh0m0IFITLlO3PuVLKQKa5cVoMQrrrkoKCJJPfGfn4AXBnsWwPJgK2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768484034; c=relaxed/simple;
	bh=HWS2LLhl5Y9JiZrf4a8lv8Cqjd4mwOkdZ/n6hcrOkmo=;
	h=To:Subject:From:Message-Id:Date; b=e2UO4pau4kEcsSKjKGvYUNjjgqHigsSS9uvTkw+HhDXO2bGfj7nirBzK+EmZWTwxAVE9xbmTnXO4O2sERxzvLVl30p2w3P/V8qlBuqdenoP9ZRDYMRJm+gyZvFnqmRZrwWIrgNRYOBl0G0ZMf0TC34fnMgh00kbnJPmCe/ogNuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1onsEyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1onsEyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9AFC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768484033;
	bh=HWS2LLhl5Y9JiZrf4a8lv8Cqjd4mwOkdZ/n6hcrOkmo=;
	h=To:Subject:From:Date:From;
	b=g1onsEyg5EW8JTOPEd0QZXb35rcMJy6GYDF8QF/G8sE/FePt8aT0QIQ98feGMXkFP
	 +jCfS2I7n1CH8PG9n0EuZabs0lzvGjiL12muvWT4C5LFj47FSMhjX/n2AYqMsKgykQ
	 95wuXQB+P1nptzPpRw2sqHj884GhItgttg3MgVeuFEfWjqI0qJLnWYeQzPRdlL2jcr
	 cLPt6d1HKyyOx8zPqSBxlnUcEbTKkaiIc2XfL9aw0SiY148YU1Ja+RF/9uBcEPqLB0
	 CHU9+BqqCEgk+O1ktWTMCr4ce7D0nij/J95rcx51dy56WlTwBbrXqSmsIPWGm1jNOY
	 l5nQTHwoeYuBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD39D44C4B
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848403358.402.4732680406122736214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5c7ab9edd208243b09f95280a3bb06606cd61134d529a64f26bea1d9c82712
Date: Thu, 15 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768484033
