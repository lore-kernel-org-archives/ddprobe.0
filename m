Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353643793C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769070234; cv=none; b=RmtWI3/ppRxLfzsl47DkfaeBXPvglixwV/zpy46qiMzejEjYbH+tWHMcT5DsyucPCc7LUSCcHS7bPccfuA1D8l6tMcbdzsthLIW8Zs6dW9GfPJbe1TGUHwZhiAtjAQTBtsSX6YRit7mwBVVVLyZhTtcucQCPdrvkDVaTG70CWhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769070234; c=relaxed/simple;
	bh=jiPhaxH23z2MG8O8CDj3sc9Ob1Hc77hnFOuIMgej+vw=;
	h=To:Subject:From:Message-Id:Date; b=W2SoINTJAlMeg50ViV8/itW1KXHyfFw79cBZ6GgXq16VS71S8pN4UQzOXdgoTJk2tPZggg6a5a5SyLq6VaH97Dl47SGldOah1WyjJWlw43kiuY8+K1LbdVZGkjzX9LFiNtu+JVrzJl93w+NleIYxSFNn50bKArnw9JOZwUQlAsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKNJ0ePi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKNJ0ePi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD779C19424
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769070233;
	bh=jiPhaxH23z2MG8O8CDj3sc9Ob1Hc77hnFOuIMgej+vw=;
	h=To:Subject:From:Date:From;
	b=oKNJ0ePiJWR6TMucHlXhznfCC/lF9qTZXYlj6dfVwnFcLtTOJzAnUaMyAythk11hY
	 JGanBZVfz+xA+aaWDCqITxvuSn8hml3NdPuerzHpTRZK4mak3H+n02Z1M4l1I9rME7
	 1JSTgTUHdxHYKxPFlydtfMYUcNjdq/wNroLBZXJLbBwjK65aqXb1BPNClScQkEk8NJ
	 vlbaLpaP6blHdb0112iH2h+pRDjCENwTaHYVoMClJEETd6+yYqmXgxKf6VDwqoC7HK
	 KGZSf1g2N6MrE5ofcLnLniJWD9XemoTtp4UN+PE0FywQpqMcORU5z1JbGkmGEmp/xq
	 EbZKT00V6XxAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91261C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907023358.28546.17609317280724213853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0981d2b863727df8205ee64c3b7fdb144ffffc69b954e15dbe01482f7bd637
Date: Thu, 22 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769070233
