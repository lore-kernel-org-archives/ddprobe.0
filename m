Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFEEA55
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754180994; cv=none; b=VvpV+s4aatAIvzyGUZyq/S86tonOFHjaaxc7CaDXnIXZ3uZ7XnPx0ZPu0zlkpsTqWNmXHyDBizOCFdQful1YVRGVTSCrczUSzpbD2ai9vIV5chK+djF5P9D2nPauv2GJSnCPJnxqeldMi6nBGqCiKxUX3oLNFylreGeM7laywrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754180994; c=relaxed/simple;
	bh=yEe1zfbxosBFBYc6oEO8Kh8K8eFCyRlLn3Vxlh2pOIw=;
	h=To:Subject:From:Message-Id:Date; b=gX0XKFWGc2YcT8cjjgBW652Y5sqkWUWndFfq8vNXOyTqSZoLnttirncdPnxcGaMXMvMLpUm5zI58TzYwWpLSlHDuXp5OtEs1Pzs9zJTb+uI/to5ozdwD9KXhL0ELT2d3G94u8phznLIjjsh3p6dSgp45c8aNblXF4TPexhQgiYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/NvcL95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/NvcL95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8C2C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754180993;
	bh=yEe1zfbxosBFBYc6oEO8Kh8K8eFCyRlLn3Vxlh2pOIw=;
	h=To:Subject:From:Date:From;
	b=b/NvcL95SH2mEio625nLsEQxAAlCkFULM8Z2SkojjvjN9QGRby216aHiiAS7HV8Vg
	 FAI0SZ/y2FqM2ByGOe+zgTf2APTheWWCQFOUYVTgDyboSv/3GcVW7YPWFfhP4Vg+ql
	 VFKpGiD2HgMcbfrh9ft6kAYHRI/D75Pir4WcPuDE2HAyG4TYttot96tx4Ps9n7I9TL
	 NCdYmWic7IapLvNCk6Vbv8bTumdiho8UzZczHGAOWJgPzcwX3+CpxSxcicn0szgT1L
	 lcg5DJfaI/TBOL9rAHyGI3CkBhqa1W+7pq84dROhrdWZ10NoPwPlry8gsPHoj6lUgG
	 bqKy5ICP/6DXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955A2C87FD2
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418099359.23232.1935930723699234005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf43723a0b8bdc73a13795a1c0ec65d634d2978188222433e616eb69e18e9cf
Date: Sun, 03 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754180993
