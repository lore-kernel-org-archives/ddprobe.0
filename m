Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518742FFF89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788804034; cv=none; b=MYrX9G6SI8rV9oj0cQFwm7gDFaAAs05IQoAPQJMZxPhoaujwbd7o1dBzSZmLBr8h50+WQfea2UKKn7w6jT4GnCg7OlXgbk+Wv6iuszyozNIzx8YNDi+p5604GAsigBNgyxN7lhBlXiF6OCYRxru7d9z1SEO8uOHObPNKI7aVtjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788804034; c=relaxed/simple;
	bh=N9fjS0O+6T4WfPm9SCv135Euo+XT7geBy23UQ5+jVkY=;
	h=To:Subject:From:Message-Id:Date; b=ZX4Xv2Nr523wzUguzYkZUb2uWCfjbDCFwoB+yM8XbWkxVBzWfR9QgX8hsMFXVfIlpkJwSTf+zRA11ib0rTISNhBZFaHOPjOrT31q+/qHeJwMEno+D5Yj5YTAsqtwg81VBgbQ1RP7pbT0K/evvSh3KnHJ7oi75oqkKbL4r4XPKbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dq0GsyoU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dq0GsyoU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F06C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788804033;
	bh=N9fjS0O+6T4WfPm9SCv135Euo+XT7geBy23UQ5+jVkY=;
	h=To:Subject:From:Date:From;
	b=Dq0GsyoU6wDiYPkvxXcs2dnmCgo1qneH53j96IHcS4+6GZhbSTsuZkM6mZFvIbmwt
	 osiVS9XR4sLuJkCsxPcVt8b6s2o/P9M+yexEi0qewIVDWRkRNDG/skovKkofYEJuM5
	 ir7ZetCtYX1fW7W+40ax4qYerkCbleQkiBegLlQXw9TPU2gcehy9QiGpeBcg8437FN
	 /uTLBxbehHLu+t2sIM02HntJuoOqjaqnUWExhLiwK1SMH9FC4989xeOreHy68w297J
	 i8zAecUUMz/khBbq8cCMB5dWBIc0a6CnsOPSJqyy5dCtYW9W7cvmWQ8Re22LWTDCLH
	 dw/vj6S5QGwoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D1CC79F9F
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880403372.10456.2389576815083059290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b74b2d11ae875d8e1d6d48ad0536055e034d3e8e305be1bc126c320adbe5a73
Date: Mon, 07 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788804033
