Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502D926ED46
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788475834; cv=none; b=qRwi9vFjlWD5y14rmCiH8ylwbvR4aqD4AlWUPsPGTe1Yh+0NujE7pC+xY2EE5HD0kehE6LvsaPpjJYa/ciI473t2/8uC9oD58owa/QQ8XIHW5mWFPVmW8+CtcJDbRHlcgQvADEZ/G9gzXf+UIp5adUuj4QDW6NCxqFTm6ZUp66Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788475834; c=relaxed/simple;
	bh=zbZBvVdJstcfjOz6C4ALagTgob310lnHdexnTT7tFo0=;
	h=To:Subject:From:Message-Id:Date; b=mlpae8WtSi8g8Cb33Urk3UtHHrHfqVFB5F/mo89QEK6MvrMXKl0hoLz6WG2qlat9SsEBNLt9RDAEholQq/G0lhWLng2qg/meRkD4/Jz+Wu8PJcz25xgufqcDmpxjSP5z66Qun1Qj5q3OtvUN6st+Ge8Q7tXUzM2Cy1tRtVuqoro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Esc5oPzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Esc5oPzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4250C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788475833;
	bh=zbZBvVdJstcfjOz6C4ALagTgob310lnHdexnTT7tFo0=;
	h=To:Subject:From:Date:From;
	b=Esc5oPzUXRvqIZW8GspFL2bDoovHex+jtjkte+sWswxOLWyqcz6pwVRJmO9nYm1pS
	 j60Ef4qy95ab6eCT1RI/X5D6bsNvH9io9hWqMA0358mk2pqFjuag7VVp7jctCmSo2E
	 d/5qtinPDV+20rrEr+UOCg3EFhPwX7imh6/JglQvLjxhRKwr1X7A5buwslQyIyF6Ju
	 7VhC7m446H8kFpj/PwSgoHVSWFiWYesDc+HxRqMpoDnKGhQQiMMHUV8fcAFikoyEb+
	 oj988PjGpw71glrVpUGYeKFR9K+6EbH+sIt1JsdYu6FsEu9Z7kHl1xd1OHWYJdq0Yb
	 MRnBcUY9C1aWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B3AC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847583368.14067.16240956636597125732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff2508ac21bcd22bc3a29f4ac1c84bb8b4609cd782f6cd756cc3c3786730e8b6
Date: Thu, 03 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788475833
