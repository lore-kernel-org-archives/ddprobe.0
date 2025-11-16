Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2840627462
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763263254; cv=none; b=qlslSUjytcaDJ3oavWvJavD4umBmfj+RSqoNT2dZn85lF8gREyZWSHLXEjzf3omCBAH5rMx0pXWSa0QgBnGu+VX6V5k9WbMJbb3xOHevyPvvCiRnVkhaVTUayMALyifY/ApHB5gwqn8kv0DJQpbIIxBdaOtdvPoGY4epiSbvSrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763263254; c=relaxed/simple;
	bh=Dc2ATp5y66nJXpLh2S4mGINCAmDFsfIW61O+iSv2EYY=;
	h=To:Subject:From:Message-Id:Date; b=UW4X8Hi5jFkUOlRaYURxHB6E0ATh9QuihjfkAzR5+VZftCBRuviaTBslrq0AkzfJfAqmTEeB2ERpyB+lVoHbqa61QV6QsaoCHc2EEJ1TI0Gjyvq7IZkt8WoUdU2ZsAg8sGCy6aqeg7pv37tpNY987wernskfjYq5lXx4MHVNwXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvXtzKvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvXtzKvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B99C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763263253;
	bh=Dc2ATp5y66nJXpLh2S4mGINCAmDFsfIW61O+iSv2EYY=;
	h=To:Subject:From:Date:From;
	b=IvXtzKvWQDC6GHkYLR+NVuDDb9CLE8iINEsVzKyRMerPbVHwvokiYHrF0ndAh0r99
	 +8Fl2gn2h+tn+ADl88HkAdbLzx7D/xoKLJ8an1xjCGwWXE6dQFV6YDnm2bBOormWV+
	 7d2wxY6TvCL1hxbNZ7TbKKHtvjMNFRtEKdI2WguiVH98Yccc7gQUHp+I/YaJ19mpy5
	 y/ARQkSGAn5BhaKnlbMbXfX2V1gLwZ4IJTnpiNzjPa/bF+aGcJl4nAZUntXkwQxvWn
	 NvK93QSU9gQ81Z2JPho8lx040IZc5/Y2iWaOjS/zgAwBe9MWOVbP0rAwaGss8wPepc
	 GvabbF5b0DY0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950D9CEBF91
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326325358.17698.15060257744367875918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8efd0c58236a333945be427a4b5cfd06f703ac61ed560e2c78c80338722bf9b1
Date: Sun, 16 Nov 2025 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763263253
