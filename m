Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC16272910
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 23:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739316054; cv=none; b=uruXtonS7u32bjTUyaIG7uk8N9o8kkxD6p2h6nEunUQx4msN3NiHIWs1k9ktp9udvZjBFKSnbs+8c+JiZjWU/zkaLE9bsL/UT+q/bvDWPMxMlBcuTsg2XaLRXePR9BqbiOqgzcNDnElOGTXOtPIbagvMxVXw4zHGjvJlaCP01EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739316054; c=relaxed/simple;
	bh=M+HVI6BwEwibeiZOQLKfhafvBynqGvaHsJmSEMP9oE4=;
	h=To:Subject:From:Message-Id:Date; b=h+A8CAdujxjJ1/+pmscBPS+cDcxiyypbtuWiUM2SrHws+sMsdIwjzBB4p0qVDc9tQ7vXclVskQIi95LMY1WKCC+qWWClLzJLpPdX+YfnVuOCB/CR4Y/I82qT+4HlENc/vyY8PwhuRZosxwE8aYvuLrlMspSMiH5Zq6KXx8Qf7hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arzgPjk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arzgPjk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8AFC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739316053;
	bh=M+HVI6BwEwibeiZOQLKfhafvBynqGvaHsJmSEMP9oE4=;
	h=To:Subject:From:Date:From;
	b=arzgPjk50zMBmybvM/xpJvn8yqRDguSu2B+faVhUrEXXS5qJWFuvxXqRxR1eE/KKd
	 nLiVS8/1KNg9vKgGqo9zQM/WWHRcNRLjbk4p0zmQj3cFDBDkUN2WM7eacOMGAC96EJ
	 55nLfjXJEqX7VjEQlb6aoqR/MoNaXAkrX2lzsQEdHKUNwGV02FZ3Ha6rfOH+fbKvbo
	 RJsQdj9C8J2w0g2dmRBMaR13ST+FHEPpKubd3KQ2YU9SB9TI3ZchaeqDdfcVqb2Tln
	 Ipe1orP7LWB4ZfLtmlNtWSBbC/qRpTJeZN40wsyvsjRMn175Dwdu3VVOPme0ji6kMw
	 fvdDxYwRiLrZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EE4C0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173931605361.25671.10211761731164641866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 505e86ffce12ee39d965cbaa4e8f83580f4af5e1536917809cebf7423f80eb76
Date: Tue, 11 Feb 2025 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739316053
