Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FF823AB88
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764106373; cv=none; b=C+N8BEDm8psffhf6fsujrlPDR3C8AW2fK9b5aSr3g5l/F8X0wICMikVhNUi/u8LaA9ru+7P//j26/aWP+9E8lgE6dXb4teNvUJEIXcNt+zl9lQx5lh4uK97SjTCPgG9zk14rbsk94hc6POxqwIuYziAo37GtfrOdp3/xCZBtJmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764106373; c=relaxed/simple;
	bh=1Wxivhs2n/e9OZT/aHha862PmA7e3+hkNygpLMNftHU=;
	h=To:Subject:From:Message-Id:Date; b=WfMpGhLit2FFu92O1grZd0inP/ocrqiLjnzGBnx61tgCAEQUXjOmLbdGpMNeBVGHPkTbAf3M+VydrP+q55JJtydsNpow9pPc/mlS41glkozlJDhFzf6KWs0JgcsnNpn7woCKF6A7f93XSjFAmUANyfkXhHaQLHNrUlGBDPWMqlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSo+5KCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSo+5KCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E7DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764106373;
	bh=1Wxivhs2n/e9OZT/aHha862PmA7e3+hkNygpLMNftHU=;
	h=To:Subject:From:Date:From;
	b=gSo+5KCsYRGSqcdn/IrapWqQfcsdrdF9uleo3qTPOPE7LYauFBpqbgwNxsXvgIcU7
	 q3fCGbb7zN+ZzbDLSL63n7OpkoKd3s4jJeC1W42YYg1/iNHURfP8FqP3RRWgDAFtjv
	 oVJP6FGcYiaVW229AIviStTC5CxbwAGPFuNXbECJ6TQo4QSEW6cThmqtyjXbT7vN59
	 r2FYijE/9l2a1w+5SalWGzkobz4HyhlWbyk5JPfc7EaIYR7v3RgXCo35Tk/tpPUR15
	 qUHJZw+jEKwTQpoObBumJb00GG8+XIzOXH+uT8M2o3tgiqa4YpBb0xZNHT+4Bj72ke
	 FtcA6IrkzedWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93561D0EE1C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410637359.15569.13909841700375293872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1aa5f65d9fe8ca05005f516b8177d06d503242d22654af6021f53da0790888a
Date: Tue, 25 Nov 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764106373
