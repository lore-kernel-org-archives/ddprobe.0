Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7355B1DFEB
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 18:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714847543; cv=none; b=W3r+FqSVspkY4ou3+OBGqbv17ChKJQTyYcf7elRiTHzX4KBeWM6f5dydZVJWYVyJA7R/7XoRVyUOe5fNJXRYqO20egO4ZJlwxrKZfEHUxnlDESb3dJTuK0705mUFm4DUmrNS4+ByRLyV/rKGhIAg+hgFPxwRR/uj0apMZ0SorW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714847543; c=relaxed/simple;
	bh=EiOovu5qiR9U1fd2BvMBJfk6vTtHKymkLIqPH1jUTQ4=;
	h=To:Subject:From:Message-Id:Date; b=d+fR24LM4bxFyc9kA1GelpFM9/xTha6ZUutFCfOr8vDXX1NfiFuwVkOj/yGeVUe1shKrnWJmTQIZ/NxPw9sMGpYpU+rM+eUmzNWPQj422rdy+r+C8M5kOZ7Hh7xWNorjsuSqiyZessIUp5Zvvh9gEmNbZcZEegFE+U37ZfWGxUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShnROgi5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShnROgi5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E187CC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714847542;
	bh=EiOovu5qiR9U1fd2BvMBJfk6vTtHKymkLIqPH1jUTQ4=;
	h=To:Subject:From:Date:From;
	b=ShnROgi5uvc9CG4KDo8MZrSbjMoFK3KuIyki9PRWAfUMbrxtyaTtTQKYUkqDYCTua
	 soIxsMFXmVdQ4sPVHPVkw2ef0tOZzBggLluoeysoQdot3sl9ioDM1+yyjQ85XPtt4z
	 RIZBA2Iqgeacgs2HIln+RFO4uy3nH7Ctm9mOmYW12wb25viHRCou+i+To0sy0PZAw9
	 gyVyhDt5Y1dWTAeDaZm4k1Bz0dDGIrn73lFbNcP7LwFDtCdLlWUnuY/ptlO6XOjcG3
	 KXJYXlZLLH5IP9T0sXB4us1f4hqiDi111zt6IDVT+s67hUiBnVpsOVkgCPEGzUaCdN
	 U4xrJxzZ5blFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54B5C10F1A
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171484754277.28488.1532077173822027130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26041c2fdbda4ae7028dd1ef9b7faee69685439b2a0cbabf050d181e6e301f7
Date: Sat, 04 May 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714847542
