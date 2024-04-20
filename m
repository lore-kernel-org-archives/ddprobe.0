Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA0710788
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 22:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713652823; cv=none; b=u/4moVp2BQK4uRh2cWjVKa/iA/hmM8aVpEO5OZtulEViunQo4lDG+I7i9kQx5FjdDJJDS+RS/JWtAlScfuFZJE3izQT7C+heKWRGiOLhuIhMtZ7uVE9eeMjuavmUURES42r5aqmlc8BYu3BrTdZjxkO4p+Xak/P6JDDCSBJt3fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713652823; c=relaxed/simple;
	bh=jNt45OVHDG2DKON5DzZSdYEIQXOX6o1eiHdvHepHr/4=;
	h=To:Subject:From:Message-Id:Date; b=tgJqsakc0oa0YO1UZ0sKarTxsPMCORG4Qz2JuG0LUzO8NEQaQY8dBnq2Q6wLJnGYdDWR/QsttNpy6TFHULXMpxYG4OuEKDFG/k4YHp5dU5Ulfts/D0gp6yBQ78GeVn1ZJBUCAJhyy9qHYCqGlwmrLMDIUj/V8sOpKo9FcnVoGOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+ar1cM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+ar1cM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08795C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 22:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713652823;
	bh=jNt45OVHDG2DKON5DzZSdYEIQXOX6o1eiHdvHepHr/4=;
	h=To:Subject:From:Date:From;
	b=k+ar1cM1IV/kCHQjetOvpv+HSA9InMRTggDpOmbRCb5W40Vilhrh77xQ0FAZxR6Wm
	 ZYWTUiuSHHj4CJPisavMHWo1B316l/X6W9nCWGat+6uYdajUNeDo5CI+9ngHhYD19E
	 gHFHcVWduDGjSUikwfyKOVkCKr+1LJd1KiHvoS0cK3fxV7pfqJHgy3NvJEQmmCzvIG
	 firQi+mEG6eeQ+rrw//QSHYro62yNstbs/42EFwwA2cKfnloMDPBKPQ29u36tOH3X7
	 0woL/zxmj6imsrrPSTn5FQUfoxrY09O0/fhOR2SSkCvTa4dnldR2pjP6RP7TKgONfb
	 ACKbreWpsm9oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD57EC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 22:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171365282288.2204.18058351112020746234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e9034b8b7edbd2bb16b1752a7b24bbfd406ee91e56a98dd127114f48b3f7e2
Date: Sat, 20 Apr 2024 22:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713652822
