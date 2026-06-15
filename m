Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C60407CDD
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781539594; cv=none; b=SGtG4VXUwfR5IT0WashJ2/oV/kx16fpuSLz+0jUe/SA6KtFytoEyQOdHoi4wY3/wOjQLecjuM6tcl2oeu6pT6ZqkOZD8OyA9zfCaDwsjcWUMXqWN1tBizK+2qhad2uG/H6Cl6llbdKvrMeF8MmXFq4bvF6qk0qn30micy0TGdkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781539594; c=relaxed/simple;
	bh=IE/eEFC5yRnapgUmq5W8KF4uBlXKiBf3uCMjmybx27c=;
	h=To:Subject:From:Message-Id:Date; b=MWhWnY22hmvkdFESozGX3X0JFLH83HArOUUPwMF1qSawv6v+jw7BW6ihmFGmK4Dn4VhHjmCi7cEtsZYWewmww0WMY2NTwRQzIXbvj1vLU/JDEkfzdtdqFx5AODuKOqSp8ZxDAdIS89mNVN/83DcY4O5BZv1JKoC9co47YR7z/Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sv1SQtCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sv1SQtCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F9BC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781539593;
	bh=IE/eEFC5yRnapgUmq5W8KF4uBlXKiBf3uCMjmybx27c=;
	h=To:Subject:From:Date:From;
	b=Sv1SQtCbLe9yPjsPxAC5dUBSnpo9RCNgZktsCffaveF0P8cerBFC2wdj22ALVdK+w
	 hU9yskiPFcsr4MJtpwZv++Y4XbZqjCnRbVXLNhwFU2DgWAMGMCwET09AOkGVTvUome
	 SIkzGOCbJMevTWPcsTTSjpLNJI+TfnPP297YrDjOW9BupgLQyyKnl6DNTaUgWkDOfi
	 6urnHK4SYcUlG9F7n2kgrkIRvUhQ12qL9jS1RNek/a5Wn5zYXY+ZZwKqcOIVaa0kqD
	 3epOUNZYlyOOHx2tZiW3DZg//c+p8l5ByWBgfnt/pSUGIqhIyOQ4VaqN+Ej6dSPUQD
	 btiEi7yiChjoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F41CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153959372.3613.17106127515114006885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664e21a6d1d0ac174072ed4a1cf5c88f579d9dcce74c4487b88bc148cc4f0842
Date: Mon, 15 Jun 2026 16:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781539593
