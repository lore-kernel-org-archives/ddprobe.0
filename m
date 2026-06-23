Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AF134402B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782249994; cv=none; b=dSQlWUXoHXUKhl7xyAhKlfw0HUy+z06XmWwAMmy1bPpF3hyLXfc5tM7DUKmCAf03XuMUPf24JaJI03MSgrYyE64Ob4FNaqzvtj9P8nX0xDaf64aV/qTr6hq2YFnuabxNViyckLpvEF2U7/T4i4PYar0L5/bkIfVyzCm7vJ+l7nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782249994; c=relaxed/simple;
	bh=+xZoY7LksUDB6TtqwIY95Fh0aqEYaKTN/hE+3/I+2fE=;
	h=To:Subject:From:Message-Id:Date; b=LfJZyeQteoU0aN/8ycGYK4oCoWkjqzxm/svcbfOIg8+no8UvVMI87hpHFeSgTOFK0oZSAWdu32CPQ9QAEsi+bgCDA+vq862xBEypKD6FFGmNISIygGFpH/l8ZVeSdkezUpErEWoRJqND7Rqb9aWgtgm7oLQ6UpC27cy4C+zVsTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfHa7PJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfHa7PJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22F5C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782249993;
	bh=+xZoY7LksUDB6TtqwIY95Fh0aqEYaKTN/hE+3/I+2fE=;
	h=To:Subject:From:Date:From;
	b=TfHa7PJJqlKguD+DVWAaXJBs0OXavL4zVqU1GVifS8V5rrfJvq8jnBoC4V9ZTeqQY
	 55i7nwz2ePo2hVNhB+bTjmDTNsYmW4PvjXl4kKCLjb5Dql9h16hopXJLK6SiOQLJ+3
	 m9hfjD3gFQtT14CjwQfu/zIwjxArYNr6iqGMEfqktH73JkfYML71ObrptiPzvF7ZQe
	 u7c9TiAo+/v08MaV5m12ojTEJ6a79/LtehA8r7g36gIsbBgcEj1ndTg+jYLOfb4mPO
	 v7xha6T2bOsGHQumXhA/mtzq2VQQ3ZoAF5D0AAxdPkQ7J/ZCa/IJ74OpMf62gnaeUg
	 2RZcDtokWtYXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BF4CDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224999371.24226.14459039605413899533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487fa2d078fd7cc9625c074aeb17a492dd18ad472b47c4eff67fbdcf9f78db8b
Date: Tue, 23 Jun 2026 21:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782249993
