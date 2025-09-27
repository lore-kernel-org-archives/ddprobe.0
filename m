Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276B918DB35
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758976794; cv=none; b=aAsM4WIUKG00i0YqsKxXZzgIdhmn3IVQOxHibc9RnGm4KzOTYy9I+17i6Kz+9kY/Xhbwg0+Ret2bqEcpK6Hm4YyF4SvVPjg3fVW8ugTQPm1j9lnV1dReFS+rJx58vxRxyxRE7gt1KW+bmd6LsED09d0WgTRa5f0IHUXP++6AOZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758976794; c=relaxed/simple;
	bh=eWARpjcLpEQV67FRikGHt0BKS/lz9HUpJLlUSoWmgjE=;
	h=To:Subject:From:Message-Id:Date; b=R3YSW8gDqWwfmAt0mumGqhZZPahPICaMEI7Gdtp7DYNAHMf4Wyq9sXkGkaKYIaNc9OS0lJONdmt5P8wUdEibZ3OzsKWNBhE4OBKHZNS1rM5MJadyIOhUd2F76w34x4ecgKwSlijnrfqp48bMX6ilIFph8SD5XK+yfFL++ALxDI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4RQbBTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4RQbBTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758976793;
	bh=eWARpjcLpEQV67FRikGHt0BKS/lz9HUpJLlUSoWmgjE=;
	h=To:Subject:From:Date:From;
	b=f4RQbBTN5mI98fhTJL7oo33C0nPUusS33CAafck7Z3lNTakSytNCc7LM+2Y85mH2s
	 jIpXEaI5/aoof+G/iDpTIAzEYfUTlIik+CFSXEUxQOhtyinWtAsLnAMkWnL1VRB8Oa
	 PP73brZx8yiLJkyuB1c8qrm+sAsdEtLXoEeraqgF3LCybZrb+6IGP3HMyHhCuDM7qG
	 y1EUpvHqU7yslXJj6nSX619d+nGK9X59SekD858bhPVhgB2SFt9Qpl2sLJDgNhsiBZ
	 lhLIiiJoCPRU/63CEXPRJim1BKx+qyxMNO8ZQnzWewyePxZgc4pTY+sTduHmn5mpZs
	 u79hXVDtEH0Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D8CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897679358.24860.7044200338943594697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169ec254ff3669671458126b8def7f3dc44a56f3a8c3819a6f69715c60e6a416
Date: Sat, 27 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758976793
