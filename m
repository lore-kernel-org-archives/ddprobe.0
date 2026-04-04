Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228D11C5F13
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775285734; cv=none; b=JbdxRGGCW6XYyL+yl3jmcKcHphk9cdxC5r9aEZeyhSBvV3SRiCLb3nzPpEktnxURzGTKDzBSCAMurQAhHdmgczNt38eXHjAeIIgSejO1lDPBxtyfoX/72BQg21m9skOqI8PajFVMjNEmZ7hcTteHTnZX+fWfmECPCnYZ7gpuE6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775285734; c=relaxed/simple;
	bh=1uoq0UJDPjP1yKs+CDgY1jOjFQ20dZoYbSz4jPlTvJo=;
	h=To:Subject:From:Message-Id:Date; b=UADspKdTiKgb/9I7jJfB6WA1rNpOjq0CnW9aCbXEfRMB3qQAy634AZLOD/AU8AxLYePw678zk/pyWYlB44jfAWEF14w7Pq06yT73s3lx7Yr0MlCoEFXSGZYAmJCcArkjWxtEgZmBIEwGMD0nMGaRsSR+SYI30vPJOF7kC2l/5bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beGkwuL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beGkwuL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50E9C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775285733;
	bh=1uoq0UJDPjP1yKs+CDgY1jOjFQ20dZoYbSz4jPlTvJo=;
	h=To:Subject:From:Date:From;
	b=beGkwuL1J/ln5kcnhYCwS1uxM5SFklwRGIFRNiPnoOnuZD6hCYBn9jyOZU4peKupI
	 Ue6d9oQJTdMiyNxNe6l3IqnrICpcdBtLJG0JLdMmo2bmkZGleLvCrUsDJreTCH9g46
	 zYpaQVgycb89/rEuPHVh2EgB+XsQ6TyMQeoTJH6M2Q9vjk25oTG5TvJZAqnRTRo/Ii
	 PnAmTNVvKONMCz/vxiEjvzEUqZLzwHv86cikL3ZKxh+latnCUNfqJJtqsmgA9+xKpo
	 aQkjrVcHslukVkiCnjKly9EpTx5mK9PcuLwuU8O08ChgWktA4xWxsQUq5B3HygXDwJ
	 w3nHsm1q5elrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF1EE88D88
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528573368.8148.7299042521997674658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 012d7602a0a1ed78a5cd90242dde953d93194bf023c45a65e9d584e3cb5e726c
Date: Sat, 04 Apr 2026 06:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775285733
