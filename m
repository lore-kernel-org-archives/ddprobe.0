Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C281A316E
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782353254; cv=none; b=Y1MuhIidOhMjZSXcHW4f0QE1ReOdbsLc5nUKgJziZo6NAV8r2Wa8FCt+qVsmdMZU8ScSiGf1rGkq77l44P0FYRNJxghoYngHPORIv38dMh34pR6RFr8LfTqD63GEiUTwjteBbArEJS+CVzPwsZ1wN6vycqbaDBIzUe3wukDEYgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782353254; c=relaxed/simple;
	bh=rWea+2y47ZBVELRrFm7WYNlv3GX4XYUfZReUCwFR9bc=;
	h=To:Subject:From:Message-Id:Date; b=p/wt1OERBKgPeiJhvHQNBq3bJj7nOSE0oxQFhyo7uYKJPUOdSwT/O2LHGzOA2s4oESvcuPxkfmG4+ylo+nev3hAm6LvORV6w3eMh6sw6U5aPoDNTkIw9nAbMdXM2Irf3ih7Zhx2brLGzmlPoVp7nmGV84I7kEZF5ozVXNIxPn8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkBEsriJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkBEsriJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEBFC19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782353253;
	bh=rWea+2y47ZBVELRrFm7WYNlv3GX4XYUfZReUCwFR9bc=;
	h=To:Subject:From:Date:From;
	b=pkBEsriJjiI5HwBfkZ9rsPfReFbi6+Cg2V3sq2raUdEbYVx/4ooES7qDxkzKkl/Y2
	 pWpGc0s8tKQyn8OgWcnkZgzluwlneZBVMZ0dI9RhXBFs1RFQWpXQz0jLmhbyfznhBd
	 JpzrqpDpR4qqX7mI7eMiTH+1+ZD8N+/TFAlCr9VjKfqeNRzZiGKa+/ZAZNjv8R06CL
	 970Gbc3mb+ShEagrZL30CNfF1hebDcmjcbqS4RJESF5005WL36CCl1FHYhqIfPcauU
	 N+fKq2c+TQPlXeJjU2VHQ3vqhoPL7fVwEWsJxFahitDv1ADgnBsNGwviJci1TUKEF2
	 P8Y954LcTMFog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25CBCDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235325371.32473.16072571130598128916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8ccc4d174b7f1411d39860c6f43ebb7ba456a1289dc2d8112b208a963eae0b
Date: Thu, 25 Jun 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782353253
