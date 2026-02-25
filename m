Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23952306B21
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772054694; cv=none; b=DrW/g80zxea1DM4g4DDPxF1J4DBuP5Gc4eiXyTSS2SWqaZRDX1XbSUALRgk/K4a+THeomFH/H8x8BIggoJIJrXurnT0HY3m+zIjlKCVV0TEhBBiBMEPJOmb1WtO0VIb6zk6F9PNNpIqRCXCQ2TEGbF2MUZIhJFd5H8sBdVGogrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772054694; c=relaxed/simple;
	bh=/ds3s4mbl45OnmLHBwOp08+mzxkn3QMkavt3+A79NW0=;
	h=To:Subject:From:Message-Id:Date; b=hj290W6w5MZHSAxlwGGxTWZDhxeS1BS1vcFizjHAs466iAxt3mj6f++FSLcHz0Bh8iLx4R/RvPCxeBQei+qOfD6EYNjHlBkZo/q0bSNz+cUrrJc52ZPViqFz6HKecbs56azivwosEGpbf2riekjuCOardH9TdsvgQkh02URROaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/52giux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/52giux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B457AC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772054693;
	bh=/ds3s4mbl45OnmLHBwOp08+mzxkn3QMkavt3+A79NW0=;
	h=To:Subject:From:Date:From;
	b=D/52giux3zjxx+Gop/49xPLi5PCI/wT1Pci0HL9tfpNgC3r/iiqeMDCqgPaGWXvJi
	 2LDS2zIdOU+2pt6F2SbBxPWn0vcT7dNhDVlfTtlOQmyJ4BbbC4aUvD0ZVZDcFCBg9b
	 8cvHooQ3rF1e4JnOanm1uMKIK49ItN0CqYs3ArcnZbXJT6OPx6dvd053IyYEmaRn1Y
	 6qtWyeR+LcvHuuc0U18vMYFcjpTwF2dbcHAFytwYmQah5njpaZQu3APIVg9d5CU3wa
	 pvXQo2MLmaFTVADjMb4pXjjrgneDBRYykNdHyuOph21LfaRLiKa9K5f2Jey8xDPWQs
	 eIrlCQDqsaCYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F777FD45F5
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205469363.26088.5410662921774412657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ebff3f8a085a7a6825f392be4a3b4acc589177d9fb4893a9dce7caff186419
Date: Wed, 25 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772054693
