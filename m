Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D97C35E926
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781932594; cv=none; b=qcX87fgPkNz9WSLEQCXbYXvTtTYOxF2fT1px/y3CYOzPcqUsWjRm1+4XNUNuZtfZqsIP9AzPkD2P85dZszOXnw8ZBtyVa2AGp4mUtx9/YaCfWu9hTz+ZPVsqS/iGzZPlGFQMl6h24h5HiTvHqdTuwm2/fI1d9pyd69ZfzFlNOM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781932594; c=relaxed/simple;
	bh=exBbKsDF3Vhx1sWp7zELZwgmfYYz/fuIzpluLUmFffA=;
	h=To:Subject:From:Message-Id:Date; b=OPOaREUCGLMi/ZDncXtFATwCG4m+a7e42EwkNdWi6pjieDc7H063Uoers5bh4stSQn1Z8coMqpO8s3OpkULlkhXc1M6Wkn4gs1g0Fpoq/UNKsmUmQSrygNKiNEkwy5F5AC3AqvSGtX3rt5LieX29yCG5Jp1lncRTjZiY9DDfwN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzdLm9QK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzdLm9QK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF935C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781932593;
	bh=exBbKsDF3Vhx1sWp7zELZwgmfYYz/fuIzpluLUmFffA=;
	h=To:Subject:From:Date:From;
	b=JzdLm9QKq6sKCYSPxS9UuNny/4z9nkI/mKXLXZREMaPeEYUG4obMDnX4tShCfJFjT
	 cczVYbqGUWFkfDdKFpMERVGhuGVC9slU0zh+AAfCUoE7hycQ7Go2yLNK4C1IOYw/jQ
	 Y4n90LK7XsHw8N2FOMo6kKd6xPpIw7FDcjdp58QLSewH3UIBqAd5UtP4Qm5xxY4uCu
	 7qtaN/ONrdhA8JEsW1fMR/avHP1Lw5ZHOCR4eoNlJL0marXDBswPPPZbRougH/cGaN
	 7x798QWta+OI9ePPQcPAwhtXsdrQqKYCo5PwDGQmdlXChbkYbSw1bNdcUbMjslFlJ6
	 kLlsJ1tOmbsWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA547CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193259371.7320.13363551008000441072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048eb72c91fbf6e09b62427aca7e39229a77f45d730e4e981ccf425867cdc05c
Date: Sat, 20 Jun 2026 05:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781932593
