Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E97F2E7BB1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754994594; cv=none; b=NXZJPrGxRtKhd7eEaJUGAo++cKkdevlYkxRn6N7O0PVhtRUY/p90KG/3znax9wqkpvD+NVxPSBUcz1lBXb6hULESIbOI02f/bVL2aySiV1j4v8xJY9mXDNchmt2XAHK3o85LxrsVA3bGsGAKSquOkgSxT3XRr3iwizAR+qI3XWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754994594; c=relaxed/simple;
	bh=IColw0Q+xkamTqM4cMuw/daedhrErUET8rydrEKzEoo=;
	h=To:Subject:From:Message-Id:Date; b=HUoGZmuKUJTzY3ygt0grYWU2x6I4wF1tJXD65IgghgtgnuuOFFUkQmUA62blp1cXZwNlD+xQUYH4rakMrhdhV8yjk9JRGDHxzihzSVw2oo4gwcc7ahXgNn99nFKIT9FCj+A5p5+JL6tF2Azq393HzwVL+FpFx0drxL9yMCuwplM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzVxrNNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzVxrNNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C48C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754994593;
	bh=IColw0Q+xkamTqM4cMuw/daedhrErUET8rydrEKzEoo=;
	h=To:Subject:From:Date:From;
	b=uzVxrNNKc3CyLREhxjRyxh1Uc23ahZBPW2rINADwIAPr+SbArlfEEfwXTmQ+QcJ1Q
	 SO++TVQ6PkzWUUTz0zkW3aCnQKvXz4SY2pPHxYYuTshCwLNt5zwZZ6twosrU6uI4QM
	 MJa3Kpm1Upab0njU4D5d5mKPUwl1vAyNCqDGlzBS5wy3FrOtpc+3yMIg30INX2hHrZ
	 owFZEt53vkPQNGrZ0SLtC1ZtglPvRB4Z2hgmFMWea9lWKuwq0yDtjM8jxdhKX0QVue
	 7gbURvnKh/9ocxLDPG3pZvB8rOLfq/DjBj8JmdWrdZVtMVVGVWRFRCDRGv2sd8s2nG
	 ggkASI23r6oMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933C3CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499459358.25611.9790659192431674883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c75894d7a1adf911a88fbcd952b1d892feedfcaacdbe9706a26747300b2c1e0
Date: Tue, 12 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754994593
