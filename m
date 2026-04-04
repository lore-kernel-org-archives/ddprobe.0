Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC542D4813
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775343334; cv=none; b=l6b3+CLRfDqmKKN7aumfO19p4QzRRSvt4bCh+crp3F3KY6n7vO8IG4/iL29vb6098JqyLwz1cLAId6HLNtQqwHvEJXjOBnOLD5JD7UhKrbgttBUDHg9GLkmOXesPZaAf4/4TOo9fqaNOsc77OYMkwx4WDdFEbRPmyE+j2L92gY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775343334; c=relaxed/simple;
	bh=H7QqQlXHUOvn6raTd+wHdup35o3PWMm4WnwXA9MPM3c=;
	h=To:Subject:From:Message-Id:Date; b=Xp61tqJjXaGIXhXJeBGClNCFuV5StfbM7UA+A4NYTrbN3qEMqPoeZTFkt9F5Wl7lgPJwQM3t5bmW/D+JiNBwh9mQLqEMasSSVd+3ZJdYTaIvOWgHXhrqZi6Gfq+tljYL6UKRA048SPwlQu5+BYZknphIJOYQV+Gsr1S4fuV+g7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0yH/aQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0yH/aQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C293FC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775343333;
	bh=H7QqQlXHUOvn6raTd+wHdup35o3PWMm4WnwXA9MPM3c=;
	h=To:Subject:From:Date:From;
	b=m0yH/aQO1CMGnOMK5RDELPUlKHJmKE31iOnR8L1hsbEN2dfJ10nyt6C0Z+Tsps1bR
	 mrBW459MSGc37Ycs39PSAfxoPwmQUoW8Wtf4fpba5rGTiwyqs83CEu4LnOCSqZjFz8
	 gqp0EVEHnLv+t5nD1GhI6lrmouwZbc4zZWZsxhDN97woAbKlmSElDDQss6bopug3S8
	 9ufvacL9RsI/z4xxGO5+4/C9EaJzD0uojmonhU04kC0XzOTU8Bb+7I1BM4HWG2G9uf
	 8EuVqKISPiQqpJlZOGgTYTi36fXAlnUPHRTD7ZBG0hST2xM6U9fSNI8fuQaZFSwvEP
	 gVuqle/9lw3FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE853E63FFF
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534333369.14688.6074335453930739363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f446e7856425d677cab162573dd457bb72e94ba34ba843c246157c07e46ffd
Date: Sat, 04 Apr 2026 22:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775343333
