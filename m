Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6209A411FA4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791950434; cv=none; b=G53Sx1hQOcnsJU23g6Sd882ZoklUw2zkP2af/LuRl7xjT4odEDESBfW8iCOXiwIeJIwaGBK0e8DV5bZqk4WLurbqIqPaCt1YWw0XRaGeIIISxuGKimadatlNb6lbcz2Gcts2TrCMEh0UIfcOdKh+/zrGW+Rv34kHE4OyR33mB2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791950434; c=relaxed/simple;
	bh=lY0JC6MjUnqOc5x9lz7FsQ4s32FlzuMU+KFS4NGAr1s=;
	h=To:Subject:From:Message-Id:Date; b=CZ0h44NItGU3LtJ630fwgZ1dqhOzM2wCG+mXcE++yBh7M54E4ZwAMexY0Ib5nJzDZNMcBqQkAoRGtTorUZnuGdYgcBXPkCGwv8Xp3cvgzANzHsf1Gw7PrKayHO1tz5Dd5BpHrYEI1LAhPVwUy0mo6CP5qAjJC34CFpJzWNOmvjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JL1D0Bpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JL1D0Bpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BFAC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791950433;
	bh=lY0JC6MjUnqOc5x9lz7FsQ4s32FlzuMU+KFS4NGAr1s=;
	h=To:Subject:From:Date:From;
	b=JL1D0BpnH9rB4CWCHkfF+SWRsrG6Z84XPFvJvHJs+de++X+fbiHFpquu7Xqmj1Dlf
	 WmzfRb0VgpbWfZ3KkCIZzJVaz0XzII//mfIkpVk0c1yrcV3aV/Pc2U6FEMAMTaJCT7
	 5hFdWe5YnCtPbbnQiFK+qbj0zP/jI236CEIz5mKpFTmXiTRDWu+ADnmxWkzvSOX4vZ
	 6NuuQoreZoHpLzJOcRdhQCLnECeMLJMZEJI1w8DJcHs8MEX8Z1qy55LuFS3mA/Qy30
	 ikh4kuM360LRMU9Zs4/3WJAYXhGZ92oBettKPl1bUIfn1T1BJTwVS6hJLvOVFxYqwn
	 l4yEcaFlV+LBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE04ECC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195043370.21447.152070157297616733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0816e2bb4013f932bc05edb12665f854abb73644a208798f323912a2c13cae82
Date: Wed, 14 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791950433
