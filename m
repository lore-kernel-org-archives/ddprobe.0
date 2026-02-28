Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD752E091B
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772250294; cv=none; b=OyqSH+yYhuKpBjwVsOmDQ0M7s5r2Lw8uxI+QzG2iyTSsVe27YKI3swmFxPCfnpC+dWOdxDOTn7nm1RSlSs0N4Jt+3bKHMkRlRSZtLrQnk6WIdbpC5+zvi+1ZlBVQbqDpnYeCX4JG65GQk2IyZ2x6vgyJVjdhIMI0pMzU5ukqGVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772250294; c=relaxed/simple;
	bh=GItby9t+VVGkikQg682jEXf6Deb9pzoKmqrfYbmNtsk=;
	h=To:Subject:From:Message-Id:Date; b=ogR0tTSr4vBJpRBInH3x6uILYwOsqpPVB3ne46FWgcew44ywYSzaJSbfo0WloMKqJWVOB0thEdKUq2R19+CS1TtvQftcauRBqsHE0dQUE1hiZtxdDtV+oz6niRK87lo5OFWCzNwojlJuZoSv4wg5M+nflwNm0TiD+rIG0T/f5fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foGJVjm9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foGJVjm9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82E3C19425
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772250293;
	bh=GItby9t+VVGkikQg682jEXf6Deb9pzoKmqrfYbmNtsk=;
	h=To:Subject:From:Date:From;
	b=foGJVjm9LZu8Uoww+iviCCmuGRTDBit5HWRq6HfeHwJkVLSnljJlzo7rjMHNVQD60
	 exlKSStw2wtR1/nDC0i8VTh92WRXayA26r8EN7AGoymsqp7t8oCMRYP+h+NPED1V7Q
	 0A1DoPCQb014l4VOu2ArfNdMSpOtq8eJaJRLpp30YHYbVB+lduJ69ddgeb1/o4XHaC
	 PXMxkBqRDW3ubE/rG4uzaQIM2fbAGYSCPtOFY+cKnYv4KqaV/mUiemyA+xdHnz8ZGl
	 57yDTy7/HuLc3kShKyzj+GhrzNbeRXZBud9B6HYt79KBkTKWOMfQd3VXdyEA06x8vG
	 /oOwe/CAAJRyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95800FEE4C3
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225029358.24770.462587342442856783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9db51aac488d01b9137b03d1842f2a36acf5f384d76f7abda97b598babcf4b0
Date: Sat, 28 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772250293
