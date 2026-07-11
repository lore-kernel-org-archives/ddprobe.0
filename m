Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FEA375F88
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783758514; cv=none; b=Z2VDGFsbR2wx06EksgpOS3Z2d42j13yS9Xw98vk0Tzbznj6s1ZKWNKcsrCKguBarLRSRS/h7DYRR6Esjg1RyL6CTl2rVZqwcAwzVDgeguqObSlMykzp141Gjb5uxSYEQGCcO+VYk8ZRU9O4kKw4P26rjafCXnVz4b+3Ul/oWKns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783758514; c=relaxed/simple;
	bh=5H80gjfiHgI+bSSkkOW7s1Fc87O6CANBzzqsb/eBFh4=;
	h=To:Subject:From:Message-Id:Date; b=DagbPwDOMwK/MdbKx8FJjkrWpGXVdNPzf3TpBJuYQ2f+SPLnK+1j/WMaj2RrPkun/HKNj1FKEU96/hfgMH2reaL7PhFFQKLKzv5p/wJF05tqFFllwXsZ/ZzL7L5k1UsbK7RkfDifQ7qVbiCZiZitwnH76VwStOuTxkodLq/hhYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqFxvVpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqFxvVpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03CAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783758513;
	bh=5H80gjfiHgI+bSSkkOW7s1Fc87O6CANBzzqsb/eBFh4=;
	h=To:Subject:From:Date:From;
	b=sqFxvVpChTLqRYT+eGkXDUO8NIxvtzYEeSilbedDKWt3keHjrZCrgi3e3AMW/25+F
	 +xit+lBBBjWWdc4fOaH/dw1iyqaEkrJvhpoGO915Fr5O3rJArWrfWFpNXaZ10g3w6Z
	 fdImJYUtmwfwoV+Y3LW1czcb9acLbgaRRf5lqMKD8HXEEjJWzFC2mH3xz73dlFhOYC
	 BgkYzVru+mbGsfR0gJvYTEZTRstky7eqk5ikSzvC1tZ5UkAXVEDKNx3e0swM1gpc/d
	 ZwBYpXF5Mf95BRWqQwKJ3sqJ1mlFzMEkbxhgs/usDMRzspck4zS2NKYfnLp9vIDLH3
	 nzv+MF51pLTuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C14C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375851368.13659.8599840791137216892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8aaa336f8c85b8725ba1ecea57e3e20132da5abd90206d96be3299571a69280
Date: Sat, 11 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783758513
