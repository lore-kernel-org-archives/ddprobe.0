Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169BD3BB5A
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764840774; cv=none; b=r7s8gi7FKfsMYtLXjHA/gQXWu9/lk0fohyAwzmPNjIxUxOHW9x/c1b8bHrVeaq1COOQTTWU/yOWuVTcxpgZLhdhlWeZZLNtoU2CwLLRka+fmJVrKEwsP6cAKlRXBnekVAyrCVueImCdUK6gGjY6HMRIiBmN2t15P1fLuBgZDyxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764840774; c=relaxed/simple;
	bh=SpW9tu6UeElb5tK8NKX7ikBW3c+S0JBtULGvboPkJQs=;
	h=To:Subject:From:Message-Id:Date; b=Rqwwa0BqLUTvsHCYKwOZj+dUBS2uHBGa2vkXabdpWnr1ECdSYpFsBFRPqtuuMhpddDyLZDoCI40koCxi5B3zebPST580pxYdeMLwDcQH1DUMbnOnpfhQj9A+pV6jxb/muUDXAz4utWcprXCU/3HFosInZCHQBDOv7xQqLZd4xMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJnMLPTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJnMLPTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F06C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764840773;
	bh=SpW9tu6UeElb5tK8NKX7ikBW3c+S0JBtULGvboPkJQs=;
	h=To:Subject:From:Date:From;
	b=GJnMLPTxyHKwY1WVPUHdkwnu4s0ZvW0rkOaCF428OGfMC+Cj7uu6vtfE98ISBvuW6
	 sf9KUPplrmI7iuDLJnX/EXefacrVVP6GUoxCmvevM7/yHRAC8YwYwBeMkNTd1Ybvu1
	 0G7Hf24tGJY4TCAsp3QVE7NP+kWpQUxmkIi1PXHtuBIHMn+ULt/qZU6EGrpFYFc3Nm
	 S5C+3Z4YWc5JtSuWu7zpRg230cxf64V5ZLkhXHe2QyvR8g86g2ynxif1okokwSIUhY
	 B7PsiujEB7B1go3LGFUw2zXziSE3Sr1QltFN1NKyzCfntiJYOcRaMyIpJzfTD2I2WS
	 Iq9tkjjBvU3Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A3BD1D899
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484077359.2383.11509282294422550289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20d0c15adbfb589202a77dec279ff790eea5c298118e8cc5c5f4510311937c6
Date: Thu, 04 Dec 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764840773
