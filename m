Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A792905
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757445596; cv=none; b=gy90uxC3OWR0/dGbgbL9e9dyu4TdgCvYk3EKGuH6QMyiLsOhkC0CBacEMlUThlldCL7wVT9Jukz9eROeiUuSrQlnwsCPaBiSnuFDVd6Tb3We+8Glq4kzT9VEXK8/qL00ZeIGbn8SfBYT8adK1GLne85Oh3ViNHCrAQoN8cKX0rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757445596; c=relaxed/simple;
	bh=QFRqy/xQDTLsWg+Uqqw+e0DN+6junwmqaQHV/9JUtUM=;
	h=To:Subject:From:Message-Id:Date; b=kUjRF+5qTAel+8itaTIyUIYlYSYEwAui89WqFoJ3zYWAMMfq7e3Ap6Z+dSBCZGqtioXtGofESjtHcaopNRD6AJ/Ul1Gxdt1Bfoyn4gdhkkYosP/KmBRQ+AzQH/bsDLksQlPS4QI6GF06CCRvAkkRBDf+zS2670xZEbC1UyoIzgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSmOeKyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSmOeKyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A730BC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757445593;
	bh=QFRqy/xQDTLsWg+Uqqw+e0DN+6junwmqaQHV/9JUtUM=;
	h=To:Subject:From:Date:From;
	b=aSmOeKyWxW6ahIlHQ2X/6RwfjXNuJ8yDZxSaxaBiW8iTuYLBcBN8cwnQG08XjIHh4
	 WAn2heDzYy2qzDgdlquBp5jBskDV7h7qZnNEzW5WQg2XI1Pcm4LIgwu1imxgjulmmP
	 I0aviWAyksD6GORTqqtXtdgR1Z1TwdpwEWYboQhDA200v7GB49CXUyVNrrLGK+/SSk
	 QSRUQmAiiw4T1XtQWMkNLFIsJKqIkSDKkL5bCi2oTwTDC0STGsNK6ATSjVkwEdjXIV
	 4vcoCOrF4+8Lx/oUCJ4ikPIn+nivDA1mf0FYMo9/fk31tFkB11a5/W36oBOUPPvfUL
	 U4KjRXn2Yg7cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C6CAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744559358.28684.13275177459891031823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b733abc07bab055a06ba5c08a11e54c940e969949f65b5f9b6bd8a7eb8e9de20
Date: Tue, 09 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757445593
