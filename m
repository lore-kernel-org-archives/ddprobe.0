Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354B135F190
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777930654; cv=none; b=m2/Cso+NY2D4UxkLmvP9yZY+nYvYED8qeBn+8Xyw1lxy6DM2g80t4JnW4/ITi/tIXiynxuHM9W+jA+2O9doNfkmVvm4H1YmPz2mY3wbpg5dqaDRazScbNTOphAg1Uo1R/yILiPkIYLZS5Rjv8TM4b6Z6XYu0UVzRbVJK4lUqpjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777930654; c=relaxed/simple;
	bh=C2Eukcl3VqRs4wx/cIm9l+wLESPAOUB4/aIuFzJS2KY=;
	h=To:Subject:From:Message-Id:Date; b=XltslSjFLE5PJ3r3DEvlc1vNlL6tQXTGo8lFg/MlSJeGe3kcHCL0EjsbUYF4EHMCT3cwPQiTyZGEl2AxMbSChrSQG6DGJoL9B6fJVE7FJDj9b6O7fzJDfMHz6nfAhLOKLMeil+W1/onUYD6RySl6r4j/WoRVWaW8Rz1ob13bUcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQTaLkgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQTaLkgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04F4C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777930653;
	bh=C2Eukcl3VqRs4wx/cIm9l+wLESPAOUB4/aIuFzJS2KY=;
	h=To:Subject:From:Date:From;
	b=AQTaLkgv0F7pra9AFWRv4gvwxp6tvJsMcQzIC9XJbYcABdvYE6Zbn0cEkI0ZLcB1k
	 KxqnLleFd6bHaI6gGjPHsf8XjDGPEW7Tu711/o3v+82a3zO5IX7yjvn3G77yBrjiyw
	 Uusy2SGRMbYGHkHmT0IUn0qdb3FCDb9IK789CZ6kXU7eUJqR9P8+rnjB6QyRjSiGP3
	 xLlzGZHxAro4J1bOSJm9EhjPEHv+3BRE3nRNAek0TLgYAtRAr0l/JhVmOB9BsHuP07
	 HTU69Yi7MBUkpG0HrWb+UzD2jZj9RrVEPQ4/IphIAZ0rNIi3NkYgDgCVw9Hf0Ipcbz
	 d8DGJ3nClpS2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8D9CD342F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793065368.29394.18232995374849741956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e885c42b14436937c462f677d760fab6f88f69599d5c4b5bcbca69101c20e28
Date: Mon, 04 May 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777930653
