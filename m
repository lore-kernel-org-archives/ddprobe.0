Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171931EEE9
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728825354; cv=none; b=DvEXsPvus8OPEblc39IAivHHhrVWLFDjfl8wb1RkfcZVXz8L5Vycel6J3i+uHtAG3PhGfumks0iP32qRwgWaKHyjqnyAtBXKy0/6v5pHurKPlGycPjvSOWKL+p+sNiTJ1NRvAD118ce8EOZNKWzJXCWVSLHazeHhrBxiqtdJpx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728825354; c=relaxed/simple;
	bh=74+LtRLyxuBX3e14H6KRPxHDbBgG9FQKsT0UyrzL4P8=;
	h=To:Subject:From:Message-Id:Date; b=g4eyIejb9iWduFj9pZqAtFVjo1QKZ115IVfFh5YOtnRNKajUX4Fz99JRYjSraAHNPoienjA92Gz8+0eTG1cVqUldY8eAK3kPnHSi6zDXPcikHIVUsajzfPiOka3JST24vlwFOQF/fK4hOXWt4aAWWD8VC2OGQeRLVLu4d4S8B1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCLrw9Qo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCLrw9Qo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AB1C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728825353;
	bh=74+LtRLyxuBX3e14H6KRPxHDbBgG9FQKsT0UyrzL4P8=;
	h=To:Subject:From:Date:From;
	b=UCLrw9QoNJ/13cMFF7Y3OIZL/ENhN2eU1EGfDoOxayJEnADVdZUw8Dn8z85o7peyx
	 v8iH7K5mKFyzJgX8qdXQ2ksl8ypPM6zUVOVu0KLrS8p8V++6/GWoIDRZk4rRWK4/6X
	 hi+MzoBcXR6sWYgeDbBT/pt07BBPylhm77rMeQr26CCPfiPiBUspE5EpQAmD8qUlWT
	 HFiKpimr9ZMUrojynlFPquJeuqyV2vLfusnTKsLlqxgjXm2Ca6viW8gLRYo8shp5rC
	 FABqgbsNqrHvPJrMROkGF8YisrW3YSXwIOS/1mBxOGApWRb59g69oawc7T+4XT98wv
	 uI57K8ISN5IXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A4CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172882535358.2886.11646194277398983107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e7df3e84517d7dd27ffea9d5d4d0a51073135fa96691976584ade36278dcb1
Date: Sun, 13 Oct 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728825353
