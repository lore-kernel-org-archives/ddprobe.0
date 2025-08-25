Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263D9634EC
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756137594; cv=none; b=DaJjRx62VXt4ukHm2LUxreiVDdHOpFQF899ElREPWi/nyRHYMfO+KUNHWrSyxstnm/5FRpqP9DHRv1/RMAbFO8Vwe7c0FBR38cCl13nlwJeeiOQiwgnNmNTIqmNtMKGh32YJjFJ8xV9IUdz9d0ngjb1BGPjaZ6wqEKxGYDF+WNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756137594; c=relaxed/simple;
	bh=ct8efNWg4uuHvraGuIc3/7Vz+/a2nwoNyFIPfsOizlc=;
	h=To:Subject:From:Message-Id:Date; b=htDx+Mhvs7PxY7YZfvysThCiiCjRRAMnAf4CGzmjjEhh3m1bGNC7oCfUwwTvT0gG8/ce30HfchxCaZloKa8R6X2dZl2pOICyOUbvoM0jPRn2XdRJo4XCE486VkFq9pkz7+btMm2jPP5rB6vELyF9SriyCPTxj7jFgeTPY59fwZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1+53k7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1+53k7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D2CC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756137593;
	bh=ct8efNWg4uuHvraGuIc3/7Vz+/a2nwoNyFIPfsOizlc=;
	h=To:Subject:From:Date:From;
	b=t1+53k7C8ifl6wWE2hKt0xSEjrdqBgI9eQE42gV+/XLZZioby+ugNlO2uYz/sE9wi
	 S+L0IdlEQJUQP73gZ85zwVyaJz1jkXP0gWznDlHUf/7mMs45uaMvFLBEmFtpS8vxup
	 iF6DjP8N5EQAn/WARYXIXcrfnn93z9onWAl6rGrXVhyW3oq4AuafVMriXQ40Qe9J41
	 8vTWlRq1zPFxUoplAIwRIWJAVBLt1DvKcJOdd/zPnaRx0QIk/Y9uHQunt6hsrSiW2x
	 kb0pMvTMM3NmiQxvbpZclT+U9ulDhpjlBy01gV+MMdMZX+9OoWxyL+r7HaS/Im+ur4
	 BKIJvCec+yZjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA3CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613759357.4511.16497140934231823103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c835d6656d5e6b168e2d7606c33d4c6c8283a610e58050976aec1fef940e87c5
Date: Mon, 25 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756137593
