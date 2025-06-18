Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E88F1C5496
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750220994; cv=none; b=QGR/iIu8g2ArbK1gUDUJUfw24Cp/2zKHTOMfv1697I6JrAnCLzSzPLjv0jjQ4tw51BaLdyOBWfKkBfvatiCxk8cs8yPtK9w25B0t/hOIjywTGDnuMxhl9f8WIvaHOb6C+DoGGIRSBDHqK1h1hzbk1XYg0UIik4ZatZkI57B8Ub4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750220994; c=relaxed/simple;
	bh=HAwI1QZe1LH/VYay/7oTllhmBqjsNjA9NPwF8a2er3M=;
	h=To:Subject:From:Message-Id:Date; b=eRLa8vZikr18Srx1KVpZenaqTokYNtOQOXlFBsgTI1OUutf3+BIOLgxoxex9r1q3cUXRHWECohBzVw8G5Aq6nLqGzW7a6ep7hqBvjcs13WF7qBMQkyUhqXG5YHrZsIJQc4RFHaiDhOAZYGdZEt+AusaUuIHrCT0/TY7pgDumGzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4aXzVch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4aXzVch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04A3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750220993;
	bh=HAwI1QZe1LH/VYay/7oTllhmBqjsNjA9NPwF8a2er3M=;
	h=To:Subject:From:Date:From;
	b=f4aXzVchpKo50vC2C0P8DLiiEOQB0u19ZLNyAimrBLNH4WB1wUxzN0J+k5fAJNvNy
	 rr0Evs+USZIfq/OAwvfEGWwXFcmgdnovzyH51WTu9ioT5hebiMzLBam8xWIEgSL2cp
	 EuuC/SU+eWSuT4CPP2VzaYZN3ipYN6fUrS2p8eOMwScWZ5k1aTQp85OpSfIrNr2Kw9
	 +fmMi5cmWWGgZ03lTymP1uQlrzGRUYGUidKVhH+NpaeluMUtWHGGm1CM6jGZCI/Y2f
	 YTaSi6VReP7BxKmrCPCb4kbXwD6vjJyX+G3dcDO5cvbjwEhuTl+/sDlFclXPAqkvMc
	 HPxsKh+oAPm/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C77C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022099358.21390.9002347786272123077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c135c5ec20732ee84d51c344c53d23e01fef6bbda959404e29877285e8c30d
Date: Wed, 18 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750220993
