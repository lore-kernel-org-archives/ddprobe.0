Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3761BD9D0
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790612434; cv=none; b=MGMxXwXCY+1a9IBu08YQoq/hWjriPfQP7wbovETxcWYKbsf2hQEqDGeX7ZotgFhEJkKgOvN+2koR1esPicC7i6P3kIkhJKaKHX7ycU45c0+X1BZE6mz9HhCE5CfSgNCMvq5jhQEeydPboadyWbMwMyCa8DVxGW6hiPcAvH3gCrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790612434; c=relaxed/simple;
	bh=vPo9KzUsX6/pVosmHMGWttF/iHreaSp2TXnyQJ4XXs0=;
	h=To:Subject:From:Message-Id:Date; b=OKtUItjY6MpK54rmKS0vXvrNaPLaWXFrthzSfvhoxD9eOnvH7LjOBmOpDDcMT45ohsNJVGY/6amJ173t4ffAB06ljdTnLwWGkU9GrXMqzUj+iJk41o4rFGnSSrhYMdKj3bcB2I7G/7gwxvKqPRh0cp0ZZrF2QeB4DWntvbKYBTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSam8TRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSam8TRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAE0C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790612433;
	bh=vPo9KzUsX6/pVosmHMGWttF/iHreaSp2TXnyQJ4XXs0=;
	h=To:Subject:From:Date:From;
	b=GSam8TRJBeej51dvoOc7PA+8MHn5yzkIf4tIw60aKJnlnQDIRHvPB9u8c1ASsVUj8
	 Zwba17RyYJvAsXNrkny3FM0/tcBw+HNEoxGh0zcUuAdu23TZt4gixvpwQM5Pw1/j/P
	 L3mzXQDxxcCfOJuuhR4ron9F1CWAJv7K6swB68YL3un9DdgVJu+2JwDckBhE29uucc
	 reSb1MWbtORd6FN0IfejwVVa/6G9UIFwl/Ny/vbK0gOk23eXtRGaR+aHt3A4iInHsg
	 VIOqWtIArD/YJqt/tj6Rr+OHNatCR3DREPEzymardJgHt4UOn4e3dOY/edErEdBjn9
	 xupQUgLYrNe3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B47CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061243368.21571.18429895727820335710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c2cbe47321d7cd9f18853d7e2e56d6a35f3116b3ac705002e1c89ccb256715
Date: Mon, 28 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790612433
