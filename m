Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22447136672
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763842314; cv=none; b=gI/2wagt6CTXgawayhL2c2bOhGJcqFHiIpF55ychMJkprOWtXXStIOLhsvcbnDWxEhziWyJhTEFO6vYBvAbVRWXXLEz2vq0bPZecL3JwqVwylZX/zFIaGyztgVA5CiSITZSPHCU0WQlUkzC9kN9CKTiQIjpLIXghlGt8NTotqlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763842314; c=relaxed/simple;
	bh=DHqc2J9Wvjbux+4HgWjiunggWaZO5pzs8RyakRZjPIs=;
	h=To:Subject:From:Message-Id:Date; b=b7emmRADTz2rxR527/c+P60wsv1dkjvCPA92kJNi4612eFwLYDhuyFLi2w5iidwm77F5Y7sYGN8Xwl1uXGEPFPZ6amqa6ZrvrC/CRjybuuRZpuBnN10a2KxzkzD3Kor3QOUWzhXLQN8uWiD/JLOlwTO1rkNf1OiDiGotrvO6pi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fn1xPM1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fn1xPM1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98BDC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763842313;
	bh=DHqc2J9Wvjbux+4HgWjiunggWaZO5pzs8RyakRZjPIs=;
	h=To:Subject:From:Date:From;
	b=fn1xPM1J2p7hebDXeO6WItx/h2tTr1Jk5UMliAwO9wK9ZQhfNv684dt9KMUwD1f09
	 CerXSl3KwHg1NtVMKwf5sVE/CyOhCt51Tr2J5ev8lAxWPSSF5JdBUEUtSVDzzUn2sR
	 nf/lgaVjUwG9+QSPKHnVFZGoNHv+mLEKAktQ1puxOd9PccOGMn1piLsLravf7qEgiE
	 IvSq2oRUq2MyWD3OPm6yv3GYywsVvvQ9YPubtz8IkKIXh1c0a7WeUInt/wyC839daF
	 p3DvBjIhI6QkhPFy2a902XDZdFkE6iQJ5JTIzOxjtaLLbiO82vHWaldNJfdT9oT4jj
	 Hk+X3pBPufd8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9759ACFD2F3
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384231358.19692.14398435815648108071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef8c25b1d269c75ca340c97e676e6e456fa876b885067c73c79d793da047503
Date: Sat, 22 Nov 2025 20:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763842313
