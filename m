Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE22193432
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736810154; cv=none; b=X6EFpAo5zdP9oGoWdDj7UsyktFvXmh79eWGLSRISVANaXH5LJmQaROhFMgQuguaGB76ullQEmib9y/halhclZ1o/1I6U3631vTPGvIUT+1WYwVIv1hvvqoYqVVplUIX5Tbuxd6O7Has851bxeRi/565gPJsKqevBtT7LO4lk1V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736810154; c=relaxed/simple;
	bh=85VseEJKV+3YSvz/8bruhYymNoRxI+3l/Nq+4ZJHWv4=;
	h=To:Subject:From:Message-Id:Date; b=BcbhEqO4He0ye1yygjvQMHaRJmXKAIyt6IBfnrBCvrl74QizdT2bzWrwmfViPMuSUPhlMgTWlCH5wI6G5cbZM7/pen9qw6giFy34Nt/vjDOWMPh9mTtmipCy9esQDNHeViEVfhwIAhGvpI0gQLAtkfgwTQ4MwS5pYc6ByJMoC+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwapBNFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwapBNFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE23C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736810153;
	bh=85VseEJKV+3YSvz/8bruhYymNoRxI+3l/Nq+4ZJHWv4=;
	h=To:Subject:From:Date:From;
	b=lwapBNFo7HcVKApMvj9kdRq1Q6lGWLgIUuCO+H/EiyVxWgRB6MEsf2tM00Gib5qsX
	 F8si8Qnjp35VgS/g9c5PAQpor+zdVeFH2yd4oFluCbqhMZ/uYKf9Ai0Lzm54mEv99Z
	 89bqJxgMQi9MpoDqaj57Ny1a8oIRYYYV4i0Qc+03bda1nfjEpxiL46JoKAPq0Dev/j
	 XJ7ArfEl9T3ROuzqCO+4OOiIdEbdrZiehcJ895NioQFQpbYIqsRssddcNpJWIsmM7g
	 AptIIIWomL+dVWIXPyARC6BMHNfEJKKVlopGFmsY6IYMyuReqmsfzdnNx6NeVS5l/G
	 CIv/ZyBn2gv6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E27C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173681015358.10060.4638165708550303006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: affec009b6fb58e84754a3706a9d38f25a782ac779e2c20b72c11e9b1269b1f4
Date: Mon, 13 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736810153
