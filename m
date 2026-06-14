Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EC029D275
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781465794; cv=none; b=lFg36uR91lUcr5lYK/S3c86NQysteoywvQdWSzqftaJc+ZXwy40UQPBoZDmAYzi0ie0myOAVRW21vYpJZoqJiSxjEmtzvCVCM/VPYALW4IPOeDhlTWKJ371x6b/WRsKOhqtnhN3S+b1ZXmxe5oNN3/6VZeHOvREJuxqN4NdDVkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781465794; c=relaxed/simple;
	bh=uwzJiFVsDUjJWMC/mkE6Ko2MCpvrgIFFFrj+xDyWU9k=;
	h=To:Subject:From:Message-Id:Date; b=rJa3sjOZUHtE+Vgr68SUPR95E0NzeZMgRaqOdS66GWs3nkQWzx5grRKGPTzYVYQ5ui/yLtaQn3uHZg5b/A6hKgBjodU5ofqiQ7o/5tF3xQApbrBEiw0jMNIbTKIIOzqm4W0TvI2F1v+UFKOvdp/83IG12oBZ/ZwK0aatV5oyHBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ip7WtZQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ip7WtZQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54FFC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781465793;
	bh=uwzJiFVsDUjJWMC/mkE6Ko2MCpvrgIFFFrj+xDyWU9k=;
	h=To:Subject:From:Date:From;
	b=ip7WtZQUFb433FEk3XysnaTFsIGBqdWr2t5zyKWU2OMnxe1zrVeYHt3VQl+RoMQFi
	 7Iq+1orTnefJ7TVadF8SBVqu7X0yBDTiK50Mr19YUQ2c6ZLKsn321SCqhQ0dk3I6zH
	 pd4DDhYie46HsdTONX8cB+0GKemh2/fzuykWW1Tx4Cajf6u/WWVN/7IlDIzP0m13tK
	 3QS+aiE1nk7n5a4SVgF6itt+bJbZoPIj7oDBLNvSROy9zFQIVA05jP6tKo49KIEsIP
	 Y9JJAII39z8UF9KeRDIKKHTCWbq8IEFzyAC5/SY2lg68b6aYCwHVJqWByM+a5xwrh2
	 KIMDnIYB0nZJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38FACD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146579371.3963.7920029051081080967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7f1fce4ee57b8edaf8689066d2fdf1e545c4cac0a9cc2140601ebf7fe372d9
Date: Sun, 14 Jun 2026 19:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781465793
