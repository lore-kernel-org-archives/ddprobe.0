Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B6D346FA6
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778536834; cv=none; b=QVFmXr9pzT08cvSsjkpd7GsuMrqo0f2eEUiDUXy1WIZH9nvdy15zEJ2TOQ2hfZN+PYQcjyiYxGJ54UZRUcb8qcupBxJwFp9LpoP9mLgea+Bdsp6xiwDP+ZaAwhI0ioOkg4HglygLLqtQvQQYgM33/9xEfzWDrsHfsusPaqzLCPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778536834; c=relaxed/simple;
	bh=YdusSfKgQ0+bPRXKJUSVI/YeOoV56R0WHqXw95+aA94=;
	h=To:Subject:From:Message-Id:Date; b=hHtHlQ4ZkHt1OaetGiLSAXSh7FU1Q6X+BZJkFZ9RyleLBs7rf7bVBJJXJCY8gtf7fMNyvcYNld9IrB5ap0uZM+bHvTWLB720375QTixA74pwoDBQnGuU+UqfK88Y0QA+jFgPTXMPJDy/sGBYMoZ2sqTRXkk2U4s4z2GnCuxl/ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7yk89zt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7yk89zt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91B3C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778536833;
	bh=YdusSfKgQ0+bPRXKJUSVI/YeOoV56R0WHqXw95+aA94=;
	h=To:Subject:From:Date:From;
	b=O7yk89ztrAc1rKr8f0d36+vOJ/Ys6+lGYKLX6dZ8CsM42ZqVtnT65vHedGL15tKyd
	 7jZJi2BuN85ZBwbc2+NsVRVedRbCxJdoXl3vIbaI7Ia4N41xxVYDGVQwq3H4Q0vuvH
	 h+vRWj6FcLzEgYMgdEjc1bfA/MzebNwenvfZKaV7j6NhRe5/SjS3NmoNV1sbL6ZjaO
	 pm/6qN1L21NU5aOFH2kvjQEaZcPvrrft3/3/qhMWzlEXyDvcAf61gllClgEqWUnrGr
	 5yvNqCvnI5G4TwMACrO7KFy9sUMfeki7Ty7UQprhhJJSu583N4JLC//Yys7UMjmys8
	 RgTqBJbceQkvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB73CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853683368.27749.15433036616773336282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b570c3b9e9b18956c662b56c861366aadb424b6599ebffe3def3cc619e7dcb1f
Date: Mon, 11 May 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778536833
