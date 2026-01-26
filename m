Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071992DEA75
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769413434; cv=none; b=FwNhE/gB0DG+HttF5UowFk6bGbT0tsx+jxpwZuLR3Zk0q+y3AEnQ1ypHZ5hFFM6YYJnG3UnQ4J3JXYDNEUG1hLHz+ZcVP2cT6R3skEuWzswPSTjLaRl6chEsHiTDEQQ/Y2FKo0rt5+foPz8Mv2MBzhy8zrKaJVvE1uFSNS7aBCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769413434; c=relaxed/simple;
	bh=jD4pZz3fWsxl7qP1Us40qroJBFt2dgyj3gOfN9o11n0=;
	h=To:Subject:From:Message-Id:Date; b=XvCDu+kHrvj0KkzzjaTbeWgfciaSblvjvVJR9l86rJ5O7yL1TQxDcHIpxkzfrY2fha6+As4I3FZeIsmhh7wHukFwgfX5KtJROInicPKttieioSNtQ3zgGZvH9GmvJakQdZoZSzSi+Zr+Ge/SV3WSCIJvD0FmBuRa/i1hGHIzNHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlNxHWfr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlNxHWfr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A455BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769413433;
	bh=jD4pZz3fWsxl7qP1Us40qroJBFt2dgyj3gOfN9o11n0=;
	h=To:Subject:From:Date:From;
	b=ZlNxHWfr98pAa7uTU0r7TVMn4/PY6b9hdj+vaG8SxXrMowChsnBHFvYwV7L/LDVCs
	 h+1qbqEbeRZ/cBSbLYe2QXnmZDNA0gEjamc6esbq2iwXlhF17Vn+cQz7WpCcUMiKSV
	 S4PAEW4yhqnn6Qu940FUObU7QGKq/tSbLIuVqSHC2ZlpjFAmcREiJkkmrXDzaEuVbn
	 Wp8QZjDzCRCOzUtSC4l8NAx3X3JGytmGe4BafN/6ID6k8QEIXhkRQtdSK2tJ4sdNAD
	 ZHmVk8YmQk5/mfzIymVs0T7fEam/4ZXNwyu3rQnsLkOFfNaUY5Al0oZ5z/apvD5O5W
	 SHKSZO3xxsIQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C87C88E5C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941343358.28729.9461967098089623040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81a921010b90f2ef2ff962e75a8f1887eabda293430117b04faa2e6522674102
Date: Mon, 26 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769413433
