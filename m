Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD1933EC
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759075194; cv=none; b=KOaoRtQWIX9H+x97iyswINTUI6PYdxqKKj9zzm7pvc8B0JiKJ2mkZLA/4o7noFZzGLlD/9GVpgP/9p/W04uzjvaLeacLegUQ5zJmY9MK+RI/z6wZxV3Q31AkuURnRMhS/CKT3V+iubYfFAo+tKi0ShDzsZxRnEoNw7QnBvSzGrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759075194; c=relaxed/simple;
	bh=eRNStb1J9I8j1k0bq+/dEBL/JHtIDFHqoqF7UfgxAB8=;
	h=To:Subject:From:Message-Id:Date; b=k2CoU+xlO+OXVo1pqYobSVnBqqI0PPKdB3h2sZw1GkdalBGnn5xbj8j1eAAI+sbaRkNtuP/jX/1UHsOs6eGI6+qjjj86fYWIs70ydOQCSZzcCnoKUNVpeVZvqdlHW+9vnz3XjZ5n+z2fUh/LbQa4CATFPoMR/87vEhc506CfWwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYhpq36V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYhpq36V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21EBC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759075193;
	bh=eRNStb1J9I8j1k0bq+/dEBL/JHtIDFHqoqF7UfgxAB8=;
	h=To:Subject:From:Date:From;
	b=GYhpq36V2eo3fDUz8GTjmJtK/3EXq4Ngo529dLgKtbetPRnqofHjKuA7bWvVXwtDt
	 T/w2cKosljecZxxojjJb2i74ZWb4teOdjUvK9kkJb8ebFB/j7OpJ492MwCdgxoq9Hf
	 yTcJtJCQui404xajWYgtmyIzL3nA2h+xTvHYCGTyhpWzB4+yXftVZk8E7bpoGrd5qp
	 0XVQ+Ro2CGMsoqkZQpDSYvPgOFPGwM4/3sWOC1lrhV9FBxrO/zpYq3QPSzck6gWqdy
	 Nd3d5egRkxy2w86/9JGjLBsEMvsl+E8XwISpH+eG7oxRfH0riOQ34/p4APdDjVApVj
	 O5SY9h83gxDyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE19CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907519358.22488.4049153149196809192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c34de221c867a046e24c39cfd344694d4ceb203854c01bd507b44634f7c75d2
Date: Sun, 28 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759075193
