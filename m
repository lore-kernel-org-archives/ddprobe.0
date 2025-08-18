Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384B717C21E
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755494994; cv=none; b=lip6d0IdSsOUwiA8ZivFwKX7ilYx8UdJh+dd6enfieNszwVuJKHXrEp4YMtehpNMIUeIhVhyup6VMB6uHajRAQfntLiTw9uV2t57DSEFNxvFewho8exSlLZEefVKEZxr1Yq1UHtkwHobmMTRhOMG7GXQmHmhmmJrWtyicTDk3+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755494994; c=relaxed/simple;
	bh=2k2fIlGcUsyIb1FTfsF+UQLaIaMK3LM2hwBJhoOv+cg=;
	h=To:Subject:From:Message-Id:Date; b=IP1FzfVD9cGgLqOhMi7VoSfIhhUtzZyZLx2BJ0VZe+3+SMU7DNqiAfZ9baUL1ZXx/Tii427JRo/R1XaGAn2G98wrTwbop0Wqe9mUlETo1hLus5x8/YucSQKX7RS9ucPVGvX6+JTmEr7IBQzEeXmgPsqxBqrB2RRgGmSf78cmnxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0pWZpMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0pWZpMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6085C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755494993;
	bh=2k2fIlGcUsyIb1FTfsF+UQLaIaMK3LM2hwBJhoOv+cg=;
	h=To:Subject:From:Date:From;
	b=m0pWZpMr7Fu796J1CRbw+i9nqrKWyBKhaVKZBD6S0EjoGnvxnNZIwq70CYdbM7nf6
	 QqzjxEGJZteT2DY56z2hEd9dL7EUHae895h0/VPuZe162vwkSdL+HZm/SYWpR0qp2B
	 A1rtjuxS+M86tLlfi7wOLgP3jvl0qrUGTKIvueeSLQ2KhkUT2PPNHwqWNLDG3FHQF7
	 AA9L4aXlostLHuRIN3dFluVtXVhuMDMdqbC61lc2MQtLiHf1bfUHTUXMcCje8Erz6R
	 hXvs2/IpD6wnt6qfG17/oLACPURuMUgJJquYluMQykAgz6QYu1AKcl4FxgBK+PlTT8
	 7o/NTaCJ6RW2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BB8CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549499357.15552.15599919151762643418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414147bace49584917868df11ca3a07e775ed0677343de72f8b4fe390d0ddc0b
Date: Mon, 18 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755494993
