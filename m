Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197FE61FFE
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763326914; cv=none; b=KsBUF89xv8GcScsyDyj+7IYuGQcb+jany5LroYe++AwfdOemwh+rTtJybwX6kIfl8TJ2v2pU4OAZzvUaAitj6E9aXucqD3f3aOf2flgXkf+u8Xayow7hw7PuEKZHABRUACNNLBC6JnUddwJQfbl5R9NRNaiJIIu5cs6YzAs5Rz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763326914; c=relaxed/simple;
	bh=DiJZGEQjmMzQRG+GTOEFw3Iw3CPuFtO9B+MtE1VB8yk=;
	h=To:Subject:From:Message-Id:Date; b=j7Bk/iovK5VkBmRkK9/AAkwOiKcByM2wciPDt5/po582fk/XR5D4CFr21nlHUw3tP/LdO4Yb9h878aZwB7fAZG+TBCmdqCMe0sxm83ZHW00RYOzuTXJL4QSzYXSpm4UJSA5Gg1UcnfOiMhlbcAzN7r3viZvJjaKpw4nV1m4EYU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3iN0B8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3iN0B8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07A7C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763326913;
	bh=DiJZGEQjmMzQRG+GTOEFw3Iw3CPuFtO9B+MtE1VB8yk=;
	h=To:Subject:From:Date:From;
	b=q3iN0B8A8nYaojnW+eR/FTgBZJ+z+Kkq6BG+390CtgAlSmwe+9WW6k6+Y7r7jT5We
	 rc4yH9PM7DY4RMCxd4ySV/qHBU4WfK3UWcm8ZIs1OsDlBCTi5bpLDzNzCu3P0SXS1G
	 t2Vl9g7Y8ul/B26nbwIj/5gNyZwZQ0Jbb+QgUCKbMcyhOLPvdBhGxQwKO3FCtQZZFt
	 lrwRa8EEsVlWNEpNduNMG0+qZJn7QXClk1Qs2Gu18nvvXvhDemQkUKDdV5EIloPBDj
	 tMp72a9v1dzE8d6dJirBU6E4dxuHWSRfShRWQ2qqFB06HFGs8gP71+OqEfJSLYkL+g
	 Zy+pTOyZl2evQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BA6CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332691358.29871.10976218193061141611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a49d1d4dd5f8bc087866acc5340d8a8ab26b89ddbe65e438583599f1366eed
Date: Sun, 16 Nov 2025 21:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763326913
