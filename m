Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BD132ED29
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775504134; cv=none; b=kum6fUsgSURZA74q1iBS+HgFcySSPZO51EqPguU0078PvdDX32LmR9m/dIjrL3AYm3QSiXznU8u9Hw4gweDEXBJ8vMpzj/MqCULfQp4Msvh7ZSX7RnFOCqoFF92Ppji+CdAF0z2yOO1GmJb2EjZ/Ty2AghJBNL5AI53ifXy8OnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775504134; c=relaxed/simple;
	bh=tQezg6dHugP7dkskLcEvuuvrIy4JkAkMgaAEf6JWhBQ=;
	h=To:Subject:From:Message-Id:Date; b=ugFrvAivAluTWKOg7DPExVMQRVR8l4ttjs0sVrsDCfn3PAIyDFnEH7T3UDFY7MGMbDUhKzH5Xa9F/gzszVaZRe9lzqFcbn638jGSmJoGCke4gpZ5qhhycmJIMBrWiSUt65zT+rFLOcGJRljo/iYFYLZXRKqCC25Y4uD9eqhCtso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/GkNEjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/GkNEjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8CFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775504133;
	bh=tQezg6dHugP7dkskLcEvuuvrIy4JkAkMgaAEf6JWhBQ=;
	h=To:Subject:From:Date:From;
	b=K/GkNEjZcAwOIxeJ05yCZ4AfRkyvX6cIBHYT61fafDmhXqWhMJJDbLqSkN0ACi0Xl
	 aPYkpwK8bype3N8nBqG3KkRacnuL5O7RkfyLPONmYSCGauC1ImhgEXJMc/ZXN2DDe8
	 wxaCv+zJ7d4thEuONx7KORZSmHXeGpf1VyVkdR7V3gD0JXWFsv5kLHuyzSnDVryygE
	 QZ5Ys3hWBiYiwW4JN1grPcx5jKApPbNLGrVyxkhXWE0KW10unWirwsBz6PY5MMkF6C
	 AnLY6mEPd7lr0kkfJebj+ZFxZhq9Qx5W0V1IPbuqtPn9TzELgL6+vMJcFnxUkH3b8L
	 W6x36nHaUAQJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD0BF46C69
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550413369.17596.3032451810452281329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f222bace3f49484ce05ed932f9dd64c38b7baf6e277c1083f8675adfb210612
Date: Mon, 06 Apr 2026 19:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775504133
