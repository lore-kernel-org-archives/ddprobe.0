Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284E6381AF
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766744034; cv=none; b=YqfbiMmRXi9wCIobkkXBn+2MOuwywdIYHZpx5s2ZjdtI3Egg0/iy0PEST1pjofbzVy0Y1w1eST/bdgcziLbePsLrlPMMv+H+YOs+RgXDHzLOWR7h42Tm85O/cFcb9jdq7K4R9zb3sFwbiVuyVx0uQHVHZcZ6nIryqyorwYrNwdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766744034; c=relaxed/simple;
	bh=TJ8m9uzjEjRDNGQTceLQON+PAEjLaw5pEcvYrsQqltE=;
	h=To:Subject:From:Message-Id:Date; b=ZkHeoSG26nn+U1R/9ZJ9qBYNWL8OfLmK1XhbLt79uBj/SqmUl48k53LzISaASBvNT225WSJeCfcjDKQdh5ddqGFwkuqpYpHTdMQUv81W+pIJX9Po9IRKn3Pd2ycq38BQbGAB4Yi8tqmauxXyiOsdOkOnwXzNDA2BHvrMmBChF60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYXY0Hgj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYXY0Hgj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA71EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766744033;
	bh=TJ8m9uzjEjRDNGQTceLQON+PAEjLaw5pEcvYrsQqltE=;
	h=To:Subject:From:Date:From;
	b=RYXY0HgjM/wkGcZL5hwqxoIpIXPSXO9N/olznJZdr701KB4qO06dwRA8vGAE3WC80
	 8uqoVpq/RPmTMFndrz8sR1lgvEGI5mv+5Kto2uH63H0y3n4w7zjdpGgSqSVqw6xYXu
	 Lpha4/iiLskw2SwAYtFoKvdSG03t3+GedENxf1wWaA/8cffTvb/aK9qWlWnuD/tACd
	 TZiWhmbozeFNvNL2GBoHf9mLcS7Kep9TPfwOmmn+2xqQUo5T5StJbOpXKwy/vIxd7l
	 xxGQMNLbjuXkbWcRYxdtY0qkgutW8Zebz6E8+swsJ8SXbMzf24JxtfKGpuFg9Lu/pt
	 oaiy5OR7yTXOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976F8E8FDA5
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674403358.10897.9851712011364152606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59721b023bc807565e386d1e5fa67ded386977e1a878315033360f5371029f1d
Date: Fri, 26 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766744033
