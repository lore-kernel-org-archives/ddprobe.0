Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2333232B11D
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780160614; cv=none; b=G6mm4lH0r8YJ18wsMGhlcsiZUPUH4Z2A3yOKzOY2E/aXOEmDKQc3CLYqN/fMrJHsQ0lWojOSuOtxH8M6grv7D80tKML1t3RDROGhAwW2Btd/Nti7U02NFKnl7nSP/sRxQhXrLgYSfIP5HxuF0kkkl/hB4DHAvnt+VTdZfgwmAJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780160614; c=relaxed/simple;
	bh=1UeLAyKeZIxkJtRRiS6BTvu8N5jvF8pUMky2elZjOpk=;
	h=To:Subject:From:Message-Id:Date; b=cq9/XhX44Vd/9EpHAmR59Y/BdMI1sAQyG1jC+4WhZEUJjb5q/T3wWdvQgZHvZDQ0CdvQ3XJZQ3EEpinMb3GkK1yK04Ll8lUIskElT9N0C6S3/+m0vtBlW84/mrayEijhjVJ8SFAp23HAfHakbghrtpqq88WOBBaMK03O6gwdPnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkI6fH7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkI6fH7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA21DC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780160613;
	bh=1UeLAyKeZIxkJtRRiS6BTvu8N5jvF8pUMky2elZjOpk=;
	h=To:Subject:From:Date:From;
	b=mkI6fH7w7GxhwSQiLDhIQPecCIAxu35u1bQcsC/KchgzV1f7lkxj+kfBknREsBHKf
	 rUmvzLJOPWf1FHME7o4a5FuUybjiHwQHWWxQd6PxiQZTC8CTZGmvhqDN5swtvD6oep
	 KndRE53pSTG5f/iWHBSfpfNznVj2We4WO0/SzfGdE+tyzGotO8MKxNIJ6NUPjL1CGr
	 7mQFaCCmb9yKnt8rg7pgx+ycTuGtXLYsm23Mg1rEJXFtdP/rkK9um+bw0gUQgLUFhf
	 p44VV/kdNXrWguiX696LXPTEubS6iooYFhanbF2sRWPuwWsDmwR0MAFr3oBKa8gze8
	 WOHn+zkSFkdOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF3BCD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 17:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016061373.31591.11554748136083914161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc41c4db1ea810d3c6ecba9dba76d61654b4f3bfd15e93e0e6086fc9d68c683
Date: Sat, 30 May 2026 17:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780160613
