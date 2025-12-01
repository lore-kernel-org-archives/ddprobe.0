Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C334C2F6913
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764591173; cv=none; b=sPJ+UdqXqDSCkMFQnJuIQX+KmUYN2vx3F7hakYceZ7prslLnaYj+9vmSmfvtW6i4eArA+L7sijUwKYUsR5vnX1/MJn1edDljKLw9Kz7qxk7OIyrXImJD8a1w+GA5TikzwJF+6UTHIndsjosuhSTddnNM96wC1OW5RKF0JYHXOEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764591173; c=relaxed/simple;
	bh=BlNtDvR9vzRZNeqW1KTxoMdBTnRfMndSNAwRbcd2bA8=;
	h=To:Subject:From:Message-Id:Date; b=JON0xQahI2RS/L7Hdp+Xz6cuWyO+Ne4qHTRQgm85PLGTHpYGcFxG/tVeFZFlJH36UjCq80tUyHcBGv2j4eJen4ya9KpgLNNdYhg/vo9RMmzXEGc/nIdfKpjhoTrmGo52DMP8yLSkAE3p4ZDn3xUGwb8lp8QC8mWZNsBIqKuCnjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2uYFeG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2uYFeG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0795C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764591173;
	bh=BlNtDvR9vzRZNeqW1KTxoMdBTnRfMndSNAwRbcd2bA8=;
	h=To:Subject:From:Date:From;
	b=p2uYFeG8Q32ZWTlQEJhJVYrgZL+/23zdNjrFSC4dDV3gOs2cKvhOelwwNHfg+85R+
	 g7aV7HhTH8BVrBAWMQm1Y2nT8y7uXQaEXMUdVskmcxYrUm+/teXFa09nSDiXRKdhl+
	 B9JuQvw2n0Kxa7ED62iOFlweYuIl1QAtPm/w8I1x8nAITFDq4wgmyXVpxJE1km1p2f
	 Ri6X1GWsPh14TPPFJ5sk7lhoMiuMRyPkwXTjrFnE+i9Fz0AFE+XDA2ps7lTilwKbv6
	 L2jP4yf7bZdYUVSZqW/4bwT8jh3CLkeotIh9RURL2fFe3AlltXPGHy4ZldbT4A08jX
	 bv/wt6uzpjmzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B2CD116F5
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459117358.27403.12687520167084496405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d7b86ec8f0b676f6828e1aaf8e50ab00045bd45e38277c4c5fd5091fbda3cc1
Date: Mon, 01 Dec 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764591173
