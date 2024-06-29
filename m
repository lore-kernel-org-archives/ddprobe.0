Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2E539FF3
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719703463; cv=none; b=oF7WJDDt+/ob/6Uq2YRHkk5Ew9TNOTzgOmhhv6duGBCNRBibezy1bOr27TPyW87Yt1EerupkKXKOg7RG0o57BxUCraJcPx+So5trcGT+KYMhae4qJWOWApDzP6RpDjlYH4lqx/fCT3Zib5cYNCLUhtDDqKCwiFPBnDwCRAXLyC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719703463; c=relaxed/simple;
	bh=v1jPgkRwCrwhh/eX9uuthG1v/BQZqZsclnhGJ1vBFb8=;
	h=To:Subject:From:Message-Id:Date; b=LMW5bkIvNLjdqE4XPwyNZ+pI35KvJv16hWCq6LU9U2YAMCANtBxT5G32Z3QpOX0eFHi+V3F04MQoB05uHg644kPlK4ydO6vJOZ79UWJCrhmlnuSlsiAQxD7VtJm4NtTv0B0kNXbdBBPHyk4jt2fQWqxHnOrZwZNeOfJv+nLPc+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTXjRTJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTXjRTJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39C5C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719703462;
	bh=v1jPgkRwCrwhh/eX9uuthG1v/BQZqZsclnhGJ1vBFb8=;
	h=To:Subject:From:Date:From;
	b=gTXjRTJL20gg5BfD+R3EW/VJrHgMQbuX9mOLKVx5XRkg3sL1/Px/AX0HD1NkPFROA
	 33U9fHpqZizousmhrMqxvcIooTNmEAuY6Piq538heWP9sx2ZspAYycN9foIBEB6FrI
	 FlCT+1xlh+R0PTOby461HMZj6d6U73UdD5sI81Nzi6vEH6P5yorB2UJD799wGWroIK
	 Xhsb4Aov3mzymXv1Eez28Xi644d9x+vlCZL16lV+bOw7ie0qkzoVihuhLsw0D1DExO
	 R0Cd34CiKQkIqfvM2O/1nAJAxWFLn+Mwj3/C6sXRgIT9/Sdi5cjRQmFabL3s/vGsGV
	 bqJtmnlQSD1Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09FAC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171970346278.3282.13471443159061679770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9b8cea7a1f7076c47b2ca8f09c6aef5a98a2f80c926bb3c058f9338c88fafe
Date: Sat, 29 Jun 2024 23:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719703462
