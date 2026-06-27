Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A70081ACD
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782551314; cv=none; b=KhPokhz+C6Cso7pWzkgJPxUM7t50LYFdjbjG6Sp3com+2pH3j/u3mK+i9cdJn9BxYQr4zye/lOW0+cBegScf/EBwgYyD7gzjgYLBfpw67t4wd+uaBMGcfCiE9fomQLK6IZVSJw3NL41Xdxe50FY1bugXhQ7yVEU4dUX8WmxUrnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782551314; c=relaxed/simple;
	bh=BQKpDjVsr+Y5DWHo3iFD6c7FucyYkvL9N3grFZZMNGE=;
	h=To:Subject:From:Message-Id:Date; b=nWZs8uJH5KoWcHv3xIFQ1ANgmhafq173hOw1qDWksjRO+onOaSc9UmsI7U4LjzL5qc9eR0QJVgYAHOQyEDDR3Awzeu9CMea1mAqZcxUdIzYDZucBFoEhpUrvo501BxiYQejic+cKTYDSSx3bzCTDfj1QhIfSFTKsi1OG2+Htnok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJcCF0Bh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJcCF0Bh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9C5C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782551313;
	bh=BQKpDjVsr+Y5DWHo3iFD6c7FucyYkvL9N3grFZZMNGE=;
	h=To:Subject:From:Date:From;
	b=nJcCF0BhflWgIq95RLH+NVpX2W7hlSAyPHwK4emFqKSz7ZtsKkHn/TG3yCeMReJbV
	 K5L2P9SSbS764Em7PxqK0UcYb1YZ07NWdn51UaNUH+ntuYOXdHU60g5t9+arUXPJcd
	 3LBAq6b6oiiGDnYHLXdqgh3iqVWIzs8SJ9WDcp+cRpzVML3LjcuNfAmfPcrsXJWhBQ
	 uG+/ZAxvjiI9qDd1JmV8UrGusg87i0hzzyGTzJLOXrMsBIldJyw1b6wxHBCbyttbpl
	 ugBeBoIOsejR2sIkKmgFgR4i4kx6TyaJMkhHQF6aDCb6AEUyvM5SD8kbw8Oi9J97pQ
	 QctXzU+4V1gQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B010FC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255131368.21423.7614787047046620558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5274363ebbba54db922af0ebaa8e445302a0286d47781527f7f66e5bd3fd0c8f
Date: Sat, 27 Jun 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782551313
