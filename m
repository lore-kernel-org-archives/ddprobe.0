Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6D14C6D
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708222097; cv=none; b=X+Gr/IMEyX4DvQOp6p35ZvfHqEjWzO1bITt9MyIUTrtek8v9TDoIL+ZkFf6qQ24XBEIdq9M1uLzFaob6EfuiCzdvsG/ca/rZOnxxXIgztjg9yi+9Fr69WE8aCTgGR6BZRw1YAKMa0uSIkjYPU4YT7NQAHtV9B0Sy0Iin9TCkJOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708222097; c=relaxed/simple;
	bh=32O9JUt6VpJPqCDgQmdql2mL8KwyyvOPUL2BV5Xcwnw=;
	h=To:Subject:From:Message-Id:Date; b=Y483/IewIsczJUHqMCwdzhoxgr5ODhR4hhobQISwnvgPDU7Vkpw9Q1x5vwrDg7EBILmZiw8w8SvMWIaqyYmIfa5Oto1mGbYyfIVQXid9IQQl2X80O7Tvqfb0GhG8D011YG0G6c7aLIIuabFd/lNdhD+hF0u5X3WF4zq83YvhNeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVzTb0uX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVzTb0uX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7841CC433F1
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708222096;
	bh=32O9JUt6VpJPqCDgQmdql2mL8KwyyvOPUL2BV5Xcwnw=;
	h=To:Subject:From:Date:From;
	b=HVzTb0uXon+eCgHn1eCbRD4Xn8X8I1LjewP9Pl+/xeCcyoAz+GxdQ4pkUIKAqvRw3
	 L5+BVP+UoIpD/xFeS4+xO7oLJIkWA63bLnljEhoIFc0ems20KzxqSQt/uouLeNHvyM
	 DgyxEXRDesL0mjY0rSpX3ekahNZnVra9P6vHDATtRqkEnYiDEGnISA94F2t3u3MHTb
	 RwJaLGnwcmwC1MlXCSjgyAV4bufbp0owKCSx20a0rD2a6rYjE2/L8B2hIJG5TJCxcO
	 ymEppOuCLrx7NivD/5VtEAVKsbBlsbqFpBQwVeNsb/PQ3pv2khPU6vnhz8Mdho46UO
	 og0abViy1k9IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D506C48BC4
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170822209637.5278.11303938643636013503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607687dd80720093ea1b4e55d84a7a1b81d6b88eeb4c688cf2e27380c4e7a878
Date: Sun, 18 Feb 2024 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708222096
