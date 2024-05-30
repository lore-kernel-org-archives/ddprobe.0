Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF0F187550
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 15:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717082663; cv=none; b=YczUks05wKyWLq+9JIia0WVk6XqaoEYzEfkQwvohA+idQYQPkExgUdI/PPxf0w4hJaWdwUBqdGhQfuiWi7Pq1Aw010tQ4eFg5cVIscuuoihzWcDHFXhkSzFc0JJ1BBk2Lg7wm9TljkuYuXJfC8k4Pf3m/2SU0Ye5rKKvQQm5O1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717082663; c=relaxed/simple;
	bh=LF4CSSSxFxogcCQkZA0PXh4j2Z3b7J5v9jX0WPEy7Hs=;
	h=To:Subject:From:Message-Id:Date; b=mVQesdIGA25ii8YalPYn4yvF92gE5FkNoB07h/AaoLmZr5SPsKGkOU4Hf59MCiCRkZw54Rjk/FSpD/Gxjd2QtJMYm4WPtXMToP2pylwQisQbNsriMypCZ2fNwEajJxhPH3oL8TH9RAOdHctkVUGJB3qrjN7rbjHMGannU7MSYfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpaV4Ixw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpaV4Ixw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD453C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 15:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717082662;
	bh=LF4CSSSxFxogcCQkZA0PXh4j2Z3b7J5v9jX0WPEy7Hs=;
	h=To:Subject:From:Date:From;
	b=RpaV4IxwtyCQPgacFhwYyIJiWCOFtYByRInu8MtB9bSKYEygUXacsH3o20N7/ZckU
	 6vpBqlbHuK3fTndJjGNOOeJKom/p0uRDs2HX9Z21r9wPBZhj/yk3rFTrmyIgE1Wa3r
	 4xiMy8P6GOB9LnphHMzHJ8o+jXrGpVXvxdK0OpaxRjMfVdtFa/dXELDJ5PawCqeoa1
	 cNPHdtlEuOFAk2HuVsJO5kXu0bBJGB7REkaCcvZaNltgiJ0PW13nsuADbKakpR+qh0
	 vl0r6Lq/7wouRtOhXV8WCAizw/ZtDbf5f2nQv9KJjsK2z0dTGzu5VX6s1rfyYkCCGg
	 xLtNSQa+wrO7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC259C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 15:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171708266276.21041.3380477747671097292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ce8bc155bbb0cbbcfc0bf4a1d37f95d4f5ff55c812f2873d6362a2011a08cb
Date: Thu, 30 May 2024 15:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717082662
