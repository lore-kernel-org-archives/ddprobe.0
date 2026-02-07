Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE7F311955
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770428034; cv=none; b=ewCUHbQ4rQs1d6twpl4nlXJsiWIl8+pOc1XYJqtzfWtqqGfwhYuWsCnMNrXLiV+1z4fnXRY7c4JZvgwe7GKwfPUKJvO9jCkUh4+jogFb7aIK0bce7/cX3xcKI0rdbuZh53RErCvXrY6XB/r/khGS1hbeF8B0mF5AkjTrx+dGBT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770428034; c=relaxed/simple;
	bh=oq1QH26vs/lnMuNjtNyYhKhYFLHBKlPb6wFJTL/S2vo=;
	h=To:Subject:From:Message-Id:Date; b=IrK/SSIfrvnj13rAiexel1JVlH/7YURgx4y5aH+NgJ3c76PqxlwzyxUpYhwC48f4bGafrN3vlh+44ld5R+LjXHjgNl8bY9amgRtJJafBvDxg3aryJiMIrpPjX0HxsT+gzn/AsbHSz3xuF4/36rSZVt5JtpzlKzBEozecXDDLnjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmT/Lp9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmT/Lp9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FE8C16AAE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770428033;
	bh=oq1QH26vs/lnMuNjtNyYhKhYFLHBKlPb6wFJTL/S2vo=;
	h=To:Subject:From:Date:From;
	b=AmT/Lp9I/MD1WMdV5z+R3NW9akaCRvpj3f7iy0p5MXO+M5W2kI0ThaEAKxiPbS5AA
	 hN89YKCT5w3lSFjuWOjHCVuHGDo5xixt14V0MMv/ZLQvx6Jn6Y6qFPMCEv8oCGBb2Y
	 LK8uaJa3a1vNSDzrjPilIa0Ap7pQPL6zuwcVmvMaJZKBGv42hMr5qdPHc+MZMQ03/u
	 jdIM01xf34cRxcvs5vvOhX5QD5AQmyc6azCAaYlKB+3h95Mdk8jXnmZWinIpMZbNpT
	 OUt2xuK57ExgUdHSNhsj0RXyQGFyAJ9RjzG/2QQmMbD1G04fsUvinATrdYAbpI2BV2
	 UMaUWvsIcP+BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9571EE6B71
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042803367.23391.6770353622494433492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401b6771d0f1b907a0db47bbe0ff035b2892516f9c0c7a000412779db3444941
Date: Sat, 07 Feb 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770428033
