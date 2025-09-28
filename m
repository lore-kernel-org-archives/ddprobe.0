Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F88E18DB1E
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759093194; cv=none; b=jKezuW3F/cBc1ospFAgJ23BTMAEJ9mIinTv6xs+fdVeb0jYqVYNMeEua10+yVJJTf4RqQxNdrqS8bGXnevAx0enHZqPANUkoq89ovoMaHp5jeO1piZqF4j+vCo0vALK5xArEcBQ/hKOGK8SEY3/u5KTWG//i+3Cfkxcd09bh+SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759093194; c=relaxed/simple;
	bh=Qnej4Q0FEv0ZN0z0O8Suyh+P6NYk/FVQLhG+D00wYbw=;
	h=To:Subject:From:Message-Id:Date; b=RSMm/OMW4EyuW+bqToAF2mkOEONEdwxgcUIJF8YZOXGzyP3X3nfNVee/hnWfJrtyDiuJ5Cul9UPAJ3FcvYZJDQtTP2uIR06Lj7qNSnLft5xsFq1IuaHhIdUm0XMamM8POAUe+1WeokrqD6PwGlvRhihGgKvBd/AzorUcLQYI5E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZsCplix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZsCplix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71C2C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759093193;
	bh=Qnej4Q0FEv0ZN0z0O8Suyh+P6NYk/FVQLhG+D00wYbw=;
	h=To:Subject:From:Date:From;
	b=aZsCplixvULOR/4oSsUNzbpwVv9uXYc/pJ64oUzDOWMfwjfaglvKDysuA5CI6sId6
	 JzbDamQ4YBVeIeTeBr0s3NqCK+GUyj2mkr4Y1cCwPgAAZwFukk+afgszn8mnF4pvij
	 rneTCt7JLHPGAjnc4u6LDZb8V17HBsQCKIKIqWGWUbLsfVS3Z08jJS3P5ZlbqlMyHf
	 xArGx+u9Bsga6Cea2+0IZrZWRHR7g63pVnTganFidlehVJV6+SmpgFQeIYP6Xfx0T3
	 V6+U/Ud82efPPwtTpGhEFy9fyQKvErk55E5YQwsrEzO+hgFEr1G3sl2BAQqDFsnPYr
	 OLUqPW6Hc+naQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9429FCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909319357.27693.2581188503009372573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b12e14afa93e148ce5913fdef0f2f627d27116b40ffc26b8489f36a55d7f578
Date: Sun, 28 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759093193
