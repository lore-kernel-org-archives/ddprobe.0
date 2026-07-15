Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE60395AF5
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784146114; cv=none; b=VkqSulNUZpdyvld44zkKxGzgUgC943ZZ67idH9PPYvZj4rcC0MwIVDvY7GVyHKJKbovSYKrKW4/jR5+VIlO9Us0UZ7UrBtBZBrZHhmYxr1j/6XFxnA0yBnrKce8g1R0Y2O2Kq8MSRrz0/IKANsZPgPI066ocDOxwSMxfEPniSjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784146114; c=relaxed/simple;
	bh=xSqn1aS0BS1d/BoY5bI7Dir2PxbQBEJeV6ePdCp0u4A=;
	h=To:Subject:From:Message-Id:Date; b=QNLLtOys+S3pWzzDahFni0+GzJqriJQf+8Pobj7xG6IPPPTyHqVSwfDwig8E7OkwVZ7w3dm0HBE5mydEoenV772LnvdayA/d3Np6nmS3qK+Sf64Fy4wJY6FZ/8o1aeE0oIWlxz0OH0nD2cPy8N/a+lunvrBGFPDhH5npEZYybYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mr+7E0S0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mr+7E0S0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D407DC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784146113;
	bh=xSqn1aS0BS1d/BoY5bI7Dir2PxbQBEJeV6ePdCp0u4A=;
	h=To:Subject:From:Date:From;
	b=mr+7E0S0bsPiOjLdXEPWjzW/wlSJJV6oAO0/WdjRJCBhqvz4DjfkmOiL53fRchTm4
	 0s4Fun9RD7okpUUZY94JcyKwNelOsaUJpNPCimrAealvkMd8Tqxv0hf32xOVPNApa9
	 hhEk6siXErspip3yfVFuPE4qd9EIcZRpoGXMkPPjuspS1VjH4FRyOeOjuAUd0l5Txa
	 Qk4m732BPIFrB05yjlwZsAxds1K2IyWTeLwzVzLn/dDf+H6tLH6Nnouz9FPOtLKEHa
	 g+V3XNot1o8OW2lNUJMIxcX8b29Ti23NsO08ovQpE7bjT039F2n2DPVUZMVcCySkEz
	 2/16+ba8xXwuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5CAC44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414611368.30217.8017816218764132085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e863f69850d6eb0b00b2f186986f6dc76247e59dc5d9a50641e20054785c1133
Date: Wed, 15 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784146113
