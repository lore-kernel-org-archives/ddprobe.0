Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35230257D
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720626383; cv=none; b=lXtH9PaPFJjADXr6yqri4Ps/CD9HEYS4+KgLgrWPFsNPVP4xizPWOC0AXzLnzoIucC6hijtlseDUKAKuav/XCDBHDy4l9NjIwFhkFozrE0AYw4+EgLbpHhuX+VK0rcxK1hI6QxrNdewS00jYV6OSACkuviXKdSreqg6NmTAXjDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720626383; c=relaxed/simple;
	bh=dd1u8WyUH/qadCsQRPCoT02lQ4vSKQD4Xk6pf4rkSmI=;
	h=To:Subject:From:Message-Id:Date; b=UAY4TsGKY6EBP4kLs0qziiMSvcg260GFWS9tQRlCwv4KzYzU1rxQI4RsUyl83ppgG8wJJXAQZ9PLHECCdV3bcQqhKKTy+bOudRmMq+MMon6fefkxjNTD66hb9a/EEq/reXOtLTvZ0JjVGRU3u9gOQw4VTer9YYNX5Aa0qpqx6d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sS6XbMaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sS6XbMaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2D2C4AF0E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720626382;
	bh=dd1u8WyUH/qadCsQRPCoT02lQ4vSKQD4Xk6pf4rkSmI=;
	h=To:Subject:From:Date:From;
	b=sS6XbMaW6TdcPjg5CxoB0pqSCMWZMSQ+0Q3E401BcC4y8czejszHD/1DjOA+fBx/y
	 JOtjY7gyVWDZ24xM7X70ObfI6SeVQfbA2cbqHUKblPEhxZPVFSFAvCCZjp38lzVNpt
	 quOgaaZGcRHayzWnDh+AU4eool3HkndhGFyYJrQ52kXWjEUX6fFSlRPwN8IATUdDKO
	 giu1dBDz9LxPVtffF5GY+ZOQ4/a8UMg79K7FBwP+JFQE9vqDJMqACKN/NC5Bv/XzyW
	 veAZTY0W0NEPW7Spk4PX7qDRGGLvfGekkS34eze5/PAfjxyTbA3oIFA6EM3aqa3vDk
	 K43AuCPgBaKEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCDFC3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062638276.15034.8261192967813572174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85607a7d0c5c0e47c0caf21b57ab1567c2d87c4915d1660c39527d2bd7773640
Date: Wed, 10 Jul 2024 15:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720626382
