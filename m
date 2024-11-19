Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1869910F4
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731993354; cv=none; b=XjLRH1Ao78ENyFqV6vC8uu2Rsp0lDBc3PnBUvQ/rpfpGMgyXQr+jooJBISWND+pAN3YTI0qaX9TX0pWiC7yL8wZMzA18/fI8XyazS/hrzeR7aYcnsydwmJoXmf78hH91DL18R4wZsZ3YQAhQxiHcGVJpfvEk8lqUK5qtajSsJTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731993354; c=relaxed/simple;
	bh=NPMMjB68OCQXOgkNs6np0HEPgHCrNMgCh5TcHjgo2P8=;
	h=To:Subject:From:Message-Id:Date; b=b1hlRfc1OMobZp0XHdsyBWAJJHZ1nFXlC3zwgVcK5YRxEIqjOZB1UXyzXeTreAlEGQFeDNl4K6whI0cMamSmJH0cUHQdPTmNl7BfyzjJuJOefgJi3p61SfCwAIVPYZMCKdB9/ZvJ3u/+QCBp3msscdinkX90kBEIWseTHtfm8Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDktXu2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDktXu2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3E6C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731993353;
	bh=NPMMjB68OCQXOgkNs6np0HEPgHCrNMgCh5TcHjgo2P8=;
	h=To:Subject:From:Date:From;
	b=fDktXu2g57q+crxj8nw2qQLIUfjYR/BNT1579P5X4X34UwUQWWd6UXp3vKhyz0B52
	 t5gZyL4SO9lG35529AbyFJk84xdsWWCBgN4lBAkhWdPrkBP7uEWUwPaWv6l4Wi7Rbb
	 ookPfUzpuX7ZahD89gXI56zMewROnBKHuS+gNukoYCcUr5U5vMk3Oq/5JbrVJbwE+8
	 7XUqk0lPLFxa2qv5B8HEA4B+/orzXC1xggo/eDzE8PEC3aH7arIteSI+dQYNICi9dU
	 FitEidGGHLcjzeeNunXQCuPGj/ESUhljcK92/Xezt1azztuRw0Ap+l6kcITTnHwR4d
	 vbli1c+Mf7uKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97048D44001
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173199335360.31139.12065839696453262382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f887cc500e1938f591f00922e8c5def67d06faf90bf7bbb926e238de27484b7
Date: Tue, 19 Nov 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731993353
