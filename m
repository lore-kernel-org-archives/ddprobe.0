Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531012D0C79
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784236114; cv=none; b=F/lZSKcvTk/dTIHvktM5wOAqkQ7AxMajmzDooFt8edux3n9dmNkRRRFbPC29uj1TTZRYrqTNXOBUWmrWiwccCNRxvGn+F9WuhGVxcHVf7DChzeckp2pCr+/+Uq3e/wOINkH/ke3FsL2YOVkoJVSUouoZrGWP7WgNsm0ov+Ly1w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784236114; c=relaxed/simple;
	bh=Fv3O7ss4OvQ02L7yLTdQ1XJYw13K1tzWBlPeo7ADhH4=;
	h=To:Subject:From:Message-Id:Date; b=JgQuav/O56A7dBaDbK6M7Dj+mHy4+tcf3xG/HZf5NQicEcYsRHiSAjTZGqvE6VooP1P9wLqd+e8RajnhyV/YRkLW/ChQE+oa7zWtyLUS5wky+od45kLzkgTVJF9YSYDyDGXzrrC3jHt6wU8IoqvqQ416vV3rUMA0Y1xH38Jz1Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgx1YwLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgx1YwLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE486C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784236113;
	bh=Fv3O7ss4OvQ02L7yLTdQ1XJYw13K1tzWBlPeo7ADhH4=;
	h=To:Subject:From:Date:From;
	b=fgx1YwLHYSg1bHnmqh/sOJv6QYMQH/b9A826GIFK0n8VW2dgXivjpqvx54KP6RLsp
	 /UAJ94qfmRwM5PD3rTk8aaa/Kv9/aq6FzeSNjXOZFRdkraFeTZFm9DdK9RrqxX+8UU
	 1Hjh9ouSIIP+iAfpe2AB0K0NpG8Iy/d4UI71NaF1RwqvV9L3kQTcpl/Z04gX0ij9My
	 nmPMQFrsnvMxo3nA6Mhs7qhiAy1tqqC2gyWTuwT/TwNTgB9jIWNwq0i9vrGHHdDX+k
	 O2Od6OCTJUW7DUFUdhuvWu7MpNuUQupP+DVblP4tY++5hOZSKXXBDy8MZmo8sMlSqt
	 NvWO6qZ1lIr0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD36C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423611369.21021.4871593844740673446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34515ef384ba31e0bc44e291bbf970524da31b85e175c196b972d9bbb62d4b9f
Date: Thu, 16 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784236113
