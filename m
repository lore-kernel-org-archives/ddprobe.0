Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539A43C10A2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781890594; cv=none; b=t6HNusDB3hrlPrvxZd3X/DDwTXnpwIkkD57s5saAjIYng+yfZveB13FSU/3cos0oaPZEkmljJIJqPQ8pA3UIiDVR5LJTtv+PriFpll1fcopDw5r/glRjMFF0MKMTl6/pA7n/Rh7XU9WymY9II6ZxZBfm9umhLR7r80+R5lpZbfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781890594; c=relaxed/simple;
	bh=Zvcdg2IIxphLcKk0ohc8Lrg8ZYu0em6Xwp7Frw/mxsg=;
	h=To:Subject:From:Message-Id:Date; b=QDMtG+pt3ZhCsN1oWIuT5+0+I54+p8kvFkkgYoh+TQCU6aYV04d6x2N9B5d/gVnaf5DLe5qAlrbe4mKbmdeVa7A6TAhqis8BaVIIqCjk11Cp76SMjnl/kjtLVrbGdJ6GQnXq9tfAL7RDuWd+szZtvyIPUfok2399R9YgQircgBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spOJv75R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spOJv75R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7624C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781890593;
	bh=Zvcdg2IIxphLcKk0ohc8Lrg8ZYu0em6Xwp7Frw/mxsg=;
	h=To:Subject:From:Date:From;
	b=spOJv75Rf9Yf2g+fyhTKaRFAQnphh3L73HgolVRDzZOavtBL8gabwLXLBRnZKw+pb
	 0gm46A8n7yLxdexjmDk1KwHyCuVBM/X+YZNZCocwBdrU+2bzahcrKNiUYxOmTpbOEO
	 ZVH+UQxXBzix2p2DE1dK26RuRkTDhvBE/8gzrvfMnvqok+PvrI81KyAPuf1TPU/eVv
	 cC957wvSaNA5qgHW2F+njVrezdMroVC8HGhs/yM4E/Nma461yk45pxTVCEWAyz+T7p
	 h2SkNOFxX+VLZwPEZvZjstM5jbSNCmJPnRrSqHY+yyUicXDehfh6O8cy6m53IdhmFt
	 KVFHSFoVdfgsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB29CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189059369.1429.7449334917569660741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598be47e46116aaf38ceac30cca0f0761b20e3c4521ffe99da56f73252e7df8c
Date: Fri, 19 Jun 2026 17:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781890593
