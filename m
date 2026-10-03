Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653BF3AD503
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791025834; cv=none; b=MTWUTVI3L7IH2h76XNbqDkc+e8JoUVGWfNjpMoLFetPylfqytu4eSSC7TE1ZcsOz0mgCaJYB6HcJZXMzJ5QFYzyipW7dULEdkgO3qwVhNJnRRSUdcN/Ey06ThJ5U9/hd8OoGD2wfGFd6t0Qz3qn/2Byq+gSlVMpl+AfpHUpvYrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791025834; c=relaxed/simple;
	bh=aZc0K2aykR84btSoy3eN3BY75FCQBdfccNhLW8pWESU=;
	h=To:Subject:From:Message-Id:Date; b=F1VHcUpR5blWnos8dpHGgQ0YzBQJqGmlba/DY5RrWTMNrGXFKbx/MfKyaN9ShE9q1kEAhRwJGBG6UY0Uk2tbwHVVgd8oGQ9RMb4qaRMCOhdaKqETWXKrzyJatqyTStjqfHCmy0dvfTsK4zdxXZ1wUhBnh1mIYV9TmEJwKT7M7Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jggCfkHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jggCfkHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB172C4AF12
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791025833;
	bh=aZc0K2aykR84btSoy3eN3BY75FCQBdfccNhLW8pWESU=;
	h=To:Subject:From:Date:From;
	b=jggCfkHviZv9D6C5ricbayD2LKJyX86PlxBF9BZ8Jbd6Kf/2tUo8GYGiagLYrnmgU
	 XIA7KfnqzeeVOXkLEhf9OwTmJB0wLOl6Jt5TAdxo7TZZBS/GIEOmWVqth2LinSLwUI
	 7EZux5jPLfnxyQHH4WMLysVVW5iTQ9QsQcdKWZQcdov0oEJORyH/P30rBF5j6/Tu0u
	 r8UZ7fQsqmMxNEMzh0VrGO73HRKr7W837uKh/IgaT8G78XUwnziCU4nMWAgb4NKoR9
	 lNZwFxKF42U3cq1s6e9At3tKK/5jmdgiR/99k27wyQvZphfq4DuZ28m5BEYAyh1Svt
	 qVwzYniMu5wEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0A4CA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179102583369.4205.571389179740724012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3830a26cd0c8b6b28dae43bd2a7471e656f452eeb4f5d5bd127bdea3424d9f71
Date: Sat, 03 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791025833
