Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5D315B998
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782566314; cv=none; b=GLuYLRI8pKWJB49s4pLDYHzvkR9FLlzgbgNHBd0KUZ2J9/qiioDzTsaYyxhRcXxcJS/KanxmOiMAVaD28bsd9JlTMqNFtDStVfTtA938VYNssjewdGu39+9dq2e0YRU+8IeZYpXrQ1pNXg3RWXu0ecT4nHo3vN9Sjz6KVxm8y7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782566314; c=relaxed/simple;
	bh=P/O+6OxxtX+OTjgyrz7jlm5UK/Wm/T+mtkknJrtEhAI=;
	h=To:Subject:From:Message-Id:Date; b=oCi6aYHwhgnLgH5mpyhEtalY6XVVS+x8DTZtF3h645EaXZdHujLVGLpTs3wYGmrmz/6eFlup5AceryFPEbXODAkV57HNLjR4A8I0PIfjr7ZnlKVGM5xSPKndGkQhFYi/1aL3I/Asdq0Icc1OxlgUjlBqdFGRx/yAfjd+ZlONflk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOy4vpOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOy4vpOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC454C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782566313;
	bh=P/O+6OxxtX+OTjgyrz7jlm5UK/Wm/T+mtkknJrtEhAI=;
	h=To:Subject:From:Date:From;
	b=TOy4vpOYFtCGS7hYARQpuegUKPMXUuPIXTYcMsTzdBM0mxrsEilmNP6Jh+zaGikG9
	 egBslYAZVkd+GK37id2GgReZ+9znRvQJLRtdO201hkZHQ4FGcyzPlld2Y3QLowkVm6
	 mnO+nhP4uL4pqyJA53K0VtV2Aujcs8Vd6Dr6197ndmfA0oMkBq8X7OyR624fBaqPF5
	 zmQXGFlfG/wu4bkyKKaoNfBGgI7UC8EtQSOzd0nfLNUMyR/hXpB8RlA8O35z9H3i0b
	 g82bdzE8FPM4zOroo1FCpMoYRYn8YIShGTSSmMkeVZK9YEHcK/4ELCUw5LuCkrr159
	 uSo/sP+DWCAVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0302C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256631368.13930.49055692845949113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd73b40c6e001190b157926c198cfdabc33c1afb68e97887be124104abd7487
Date: Sat, 27 Jun 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782566313
