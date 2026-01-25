Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278B1F513
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769333634; cv=none; b=alVGh+mvbPYy+uU3dXP+5TUjyIQEuybz+ww4QLkCbpOTqYCHLgcziq8QEVnl3V8FIAiKXbAZdygadeK5QkCPeGbcIR/XxGH07w6GRBP7zDOCosJV07c9CPs9KVRBGR93fFMxziFeQHjpimUxKbWCTxZY9ipfQ09i8G8lhJROl4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769333634; c=relaxed/simple;
	bh=gUYcnvKvMU8CA/9Sq3gC603sc08phL22l27zVG4i7Ls=;
	h=To:Subject:From:Message-Id:Date; b=oE90lrTutcCtp4mmfkllOE0WbSmj1ugS/2EcDyJ6fCdGk2/jUs54CDKYj2Xg2rm/OdIyFCIl5Y/OwMYxdQualckErvlOv9FbFGgjcf7SF8oBRN3E6bbDTC9cRLBgcfF70RZn+JIeomz14qGocsowOHFEXS7rNjtBnVhq5xhcDPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mx4Y00qu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mx4Y00qu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C70C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769333633;
	bh=gUYcnvKvMU8CA/9Sq3gC603sc08phL22l27zVG4i7Ls=;
	h=To:Subject:From:Date:From;
	b=Mx4Y00quhrSHSbYitci3GaSeM7aFmxE4H2AAa84bheKEdUuyUvwjX8W3a4JHisj5B
	 r9o7e5hdfu6buX+7G1G8LujnhH4pMiWItR92Kt0l3rFjeFOVGGTUvoNdwb0W+69agh
	 qk/zOa9B6f7LXpvNXDK3GlQTXbqcmR8Cmf5y3lz/iPP9Do3W66VIIS9Vxwovg0kmAI
	 41639h6zWEet2xXTY1c3OMv4RPiZv93L2q8JifnRk6jmazZm/mom/jhtBjfB6mOCkX
	 UfGKOSpxwR6iAmKc1QEZBWq2ekHFO2L1KDG0Ud/i2d1ouWMhg5NuU4KZsBfGrSdMwK
	 cYKPd2G7LbTew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EF8E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933363357.18036.18008077687818286653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa516a184e1a969987caff864913816768616d8fa7dc9c428e298ca5b1cb9605
Date: Sun, 25 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769333633
