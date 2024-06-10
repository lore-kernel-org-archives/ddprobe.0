Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482BD79E0
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 04:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717994243; cv=none; b=rC4K6Cpa2Z81PMJn2JGTISu/OrHeYDffOdafPOC+47/ySrtNUyd1exoQBZfheKmt2fppQ5NW82a86WDqHeqinXM8pwdHaTnHjYeM0sMbfgKiYJzZjxNn1TA67wzBNLV3rq8GEQ+PjkG28cKXvYVs2CxQs0cwVylYkcx5U+NVViU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717994243; c=relaxed/simple;
	bh=v7MtYot5KytivpFWJqHCHcE2btw4MTzqjXT6Gla5VdM=;
	h=To:Subject:From:Message-Id:Date; b=nFrsZ4DnkZGtuDS0uulhEKXQ1NJSxXn0b5WqtFkfxEnsnSoRkiIYEhzQrnVwczrkZrGPB+yeSnpF0+m8tvGcpE54i/Yx9DOQ0YtfQLHBZG0DLYtjry6gqpSft7PnXD7xSxF1sMDVA5sCsfz1rqqHgYA+laeb1gVg359XUWuQlTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgUQ4k6/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgUQ4k6/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7DEC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 04:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717994242;
	bh=v7MtYot5KytivpFWJqHCHcE2btw4MTzqjXT6Gla5VdM=;
	h=To:Subject:From:Date:From;
	b=MgUQ4k6/hOwrKuDy0thLwLHYvM8SAWlplvLuc97p0CZTM99tqw0iBl32pRc7EbAO2
	 CniwClrPvIjWA4jQ4kz0mDShqFYmkUTGHqr6DWKm6fp7cpTtjxMP/K2heQgBqTCwZB
	 8ekMGZqM/qD+Wx8OMm5E093N3vbjkVPuY/3r9V9eRBgOL3cNIN0rRFkPzA9E7CjwKt
	 aOQiZVz42ibHp2M6VmPiUDFGChGNmFzaQTCElSBY+uVurqWffDMkJv52IIDzaR6ZbK
	 jJucuG+TZ5XeSfeQ5Lrjb2cCsHwqeSIXmtR9KyHU8GK+T3eew93Ki/yTMCGYClBv/7
	 VbfrBnYJvluOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA50FC27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 04:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171799424275.11799.17137639022192941796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966357f2c9be9408f577f604ef53dddc9c64b1d4716c1f8b50858d1ee7e0f87b
Date: Mon, 10 Jun 2024 04:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717994242
