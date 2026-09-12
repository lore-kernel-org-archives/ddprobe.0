Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328D037B3F2
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789185034; cv=none; b=TwxAjNhKMzl5QQ+CgC6B3k3xWIgBO5BjVdQR159GzXmtgEAKDkldIgTggTQIpCNFumyVLVY1KQFnJKgwPTWsL4TDoN3ahV2JRWpbLhzf4AFugBRU8IQktt2oYwRvwU64/6iv8CpBevMN6YDtIY4Dx/a3Tccir+D2xFbJKENXe7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789185034; c=relaxed/simple;
	bh=Nxx661DTE4fNS59nbjLHImjHJly/ezAQVvtYgEBpy78=;
	h=To:Subject:From:Message-Id:Date; b=aYhoB7/nbk45pvfIA39WL+kHIFnQfRJVH/KsSm9D4SP3d5tChqJWCtHzgH/tMFFUOsfYJkmAerJnRSyPfq3zXZYW81dWIYQM4k8pBs2myglFwV2DeaIZH9s8Ma8Tyhmm/Yjp6WLYhzwynDSFxCRkHlf4zJr2zARisgrDVQ8YUQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4LAWgpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4LAWgpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9F3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789185033;
	bh=Nxx661DTE4fNS59nbjLHImjHJly/ezAQVvtYgEBpy78=;
	h=To:Subject:From:Date:From;
	b=g4LAWgpLUN75mjLsDdtsHOo8978WE15+OJvmoTyZRR2FmIIi8HAiBERG8qoFVCjdq
	 4pS7E9bmphEbzmRORdN/hUqJC6o0yFfwLBEhCYkWW0qOgGtRzRgJOuIrfHmefu/sQg
	 1RshnWt+Gude09qDxQfGToumBU4TwjPPYQQJrRRsog0Eht41OAW9Iqf8NO9IpS1HKR
	 vieIslFqtL6IAgpQV0zsWCM/Vt3JMm4xVEBG+lKvCh6QBs5Q90bfzGhaF1/YmvHYF6
	 TMj66L2qMAQebA+lxinp1/Ql72GF47G0j3KRIXyJ/XBvnhjCn+oxN9ZqKVEjf2pFH3
	 cQaSNczletC2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD34FC79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918503368.29452.2844918180666322842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4df4d56a66c8ce21d2518bdf5e599e1e236a5645a627606d9d9ef315254a5b
Date: Sat, 12 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789185033
