Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408C1136326
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737841554; cv=none; b=mxHsazB5Vy3vSoO7u4e/0AIgluSymFD9q8zTkM2KwWF8X6S5kk2sEh0VKnAYdFtcjXY9Rwd9hGF30UJyuI5LqumtS10mF+ysqGU3nBsI1SI223ievcyize/HMJZDHSdHCE5FVgVknaoYa9qgNcoSxmfxdsn5wNgtH89PoKRDx6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737841554; c=relaxed/simple;
	bh=n1olFe4VWf+YDahwjQLOBhQJOBqi4pag8DRwCkxSzeU=;
	h=To:Subject:From:Message-Id:Date; b=oKyvCXkRI2ZIvwC58VrTUg2LF2sht+tyW7LNu3dD+4qjDHhFVhxqgC6saqg5HzwEzLQtGEX2nJS943J/MQFMEc9nqBPf5A12PPBPMXb09lH6vFGIbc/qMCade8mH+0HkhjpfHhkPIgVmyrrgRicFJMnV/I+6IBoOAxu/QRf8rIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzoM4m6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzoM4m6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50DFC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737841553;
	bh=n1olFe4VWf+YDahwjQLOBhQJOBqi4pag8DRwCkxSzeU=;
	h=To:Subject:From:Date:From;
	b=RzoM4m6PYlQ8kRspHUfsIq+XCdUKktTArYfTZaZsBTicLTueoPoR8wUJFE0oYz3CH
	 VBCgWfTr7q7wHxoN5ykXf45v5Mcoz7w7M0uTKTqqrFO7G3VEDxj/05EdRVNjbkE6ET
	 TWLnofRqEr7MBofrZMZ+VSYwrXzffBzSmmzLu4KXydbN5fh/zYzDsHyBs21treNL1Q
	 WYwlpKg8lavAGD4Q1zAzmwd3P3LRpvNXW9D3BL1Lx68sj/V/zdc9/Kre6LEK9ooyME
	 jlh6ZYrKtRBupi6N6F04EFRMJW92MRKEsZjbFkIB0p5PJlPRTQD3DdvPfvIO3ooCxJ
	 iqjLzGa+G5TLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F9C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173784155358.32735.16541373979975060925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652bc86c36569e7a3f7d5b5c6273e02cafce4ad9469bfa594832b263fedf760e
Date: Sat, 25 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737841553
