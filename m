Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4505F28E0F
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786739434; cv=none; b=EaK+EaeypH9dx40fz4bfW0atSM6N1neaaTjFO8nd98O4cPZvVW5w+UEK66gLAw/pEnbOVjZEQCiMimhhUarhmmO55XBxi6XVkPlzV/xBv03gb1ZAgI0LXLWKOYtuUTkQX9wnjbmYWQNdqY9vEqO7dupmx2ilBXYJi4JHjTL5B/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786739434; c=relaxed/simple;
	bh=5RK5fv6F01XY8t+svlUjEEJYLQi1tI11CmxboLbx9Bg=;
	h=To:Subject:From:Message-Id:Date; b=utgrIFuFR8iqEazc9aEoBh2TkUkGHcjHIlyfSiXBuv8YJSdKi9pcgkbDqfXu5Be1XA5TynSasV+yFH0nZeTFLbWWBG6yoihv/aJ+ifAoKCDB0VJWwG2tdyGeKHwH8TT/7S3lPNBAO1d3Vl3Jm2V/P1gLNCJ/jt2HOAIdE0mmiAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7YxWNdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7YxWNdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D471BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786739433;
	bh=5RK5fv6F01XY8t+svlUjEEJYLQi1tI11CmxboLbx9Bg=;
	h=To:Subject:From:Date:From;
	b=S7YxWNddOBtihj2A8/J//FUPOtVMTeGpCRpCCdenQOC0aF09qN+ZVX0WcOsls78ji
	 TlCJEcIsK/+R2Ig8VF6KPNM4AwOVJdoyFS91m/BU7xzOg9DjpKO7ALFHwBM4nIVbIH
	 7CE6FSDlLZg+rXo42XlKHsWLD8KnhebSrbpbPJb3zjcGyaw+T3bGvs6W6+YboLxpbg
	 njIZhfdCCHzIcgBwCppQCfcbiDgruHSsYmNa1ILps2gdrdC3yYtOdS1I5bTzdj79Xy
	 OmnxQuT9IcFTm/g5lJHLntYy1cKHlYmeTKKxklo4ZBhe+jv0oATs1ooCe8gS8Byjkb
	 5ydZSaTTL9iyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE282C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673943369.31341.15748554434464916092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be8099a8d4a6856b1a0f6b19de1d35db7dbd8ba08cdd9db20dbea48f55b449b
Date: Fri, 14 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786739433
