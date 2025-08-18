Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E70322DCD
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755527394; cv=none; b=Jcl6tPwJx/UiLLjwT3rydYoxAT9ppffW0WjjH19cnmh73sZSwS4Pc53omkL8by1KCLiWrVkfO629aYUcCNXX4uHKxKRFq1fglvRx9lgPCY7LtwNqgtpbP2+4s4KtuuYBgIZiZQa6PAUG8KPM6M/7T6SsaEzsbJx87WFDl/aBj/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755527394; c=relaxed/simple;
	bh=C7vE+fdTttdPlKH6BcKKgzmudjFOuBFNJ6CWeb40pIc=;
	h=To:Subject:From:Message-Id:Date; b=IJm7wl3GB5LQNpz0NaqttfIPWQqbxGItdg/1Gu4wDLWHQHeNOGGOd1Wa6jYE75eGLfeCjjFZvnm2EPRb8TE7mt8dNYMuU+5CkjXFV2iCWOssJXay/nCEDqZqueAZVZOhKM5GpGUdq8qQdZNMTZxSuuDzz6uLZ35GmGdbJXZbnvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2bpqarV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2bpqarV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D58C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755527393;
	bh=C7vE+fdTttdPlKH6BcKKgzmudjFOuBFNJ6CWeb40pIc=;
	h=To:Subject:From:Date:From;
	b=e2bpqarVDc0+AL300qwGRhOwGYjQbIlIqhqeECaJjesFpdbdv5Q+6HuZVXCkYz4/y
	 5z0HYkIHo8zjPVURCgPcvsv0ilonz9cdR/Rx8u5Ib/uKgklqAI9f961oC1+MNl2KOC
	 fRPs8YenKIdqWNDkP/sF8zItrWnjaWpyUUFSDURNj1VoUN76OvNffX5QBBS1h+m6lb
	 MEKkh9egTLMP7dkTA8f3+hiqDMVdYT4FWrjsfQfbPArym8y2Ih+HF7vGWZmf1m/+xX
	 bgBeIJXSr1+W1vCvnXYEmE1RFuMtqTvVoyZaq8kqn7vNrcbNa6YEyxfL/F3KLm1fWW
	 8U5/1UUJdR0nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE81CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552739358.19948.5291974653313150566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5b7e30e61c8387d395d82b5a0a8b125d3780ab5da5367a5018e80d9f04579b
Date: Mon, 18 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755527393
