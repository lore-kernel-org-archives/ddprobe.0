Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4297F1DE4C9
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762072194; cv=none; b=kYe1HPIjAN5+4oHEQlCzC2Cb/W8F8EZFmsBArl8rQB2kqVQwuu0gaojqAymUPlSTwuJSIzm3yfrrnyuv/j683GKjPn2BjeyeOX2HWYfFAI49OHiIPXv39xcreaZK69+dgHYJtByCSxV0mzr6jkzCW0MvVJBd+N9Q/IRLXZptGlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762072194; c=relaxed/simple;
	bh=HizpzpRCsklr17YNpIhhm3mfp/z5R1YFf65Kt3oyGkY=;
	h=To:Subject:From:Message-Id:Date; b=ASb0xX2h3tsPzxxxbJ+cpqhvI9jupHWdN9ITbSF1T1wQDwDZlqH8yr2UNSgBBZH8ZivTJG9rmalzEoz2UFYweAVF//bMmbdSffxje6nPbkg8/nzw96wbPUoI5pnCmJj1+U/74i64ZRjIp8jsXG4rR++zZMPThTLYBZ9IBqts5Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXDOc333; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXDOc333"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D78C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762072193;
	bh=HizpzpRCsklr17YNpIhhm3mfp/z5R1YFf65Kt3oyGkY=;
	h=To:Subject:From:Date:From;
	b=eXDOc333QWBWted5gAJYt7WJ+lxq5/zyCKMXUkB0HIh51lmN6hot5Hi/TDxho53WT
	 PeUGOHiO0MtM8tx1Igp9030wZ9XVr/N4koP5+sUNeb37Z04xS2h/mh99wzIyTkFY7m
	 Ac2TPbWLHFFTn44wLpLqJbC9xRCLl8jPefOwIvpdlJb2nuaA3wztLQfVWUvsbAlWw5
	 Pl1FgZrQ9daW8bE1qVk14SjXV0lMLrx+XGKQXSeGlhJmtQFCB7Qujxv2AWsefnFrhx
	 GhL1HmiEB7VYn/N/BmxntDpnXiBjgsGE0BzeeqQDxSCAmByG07ZZa0w+V7c3q+5qVg
	 wJuE7uUDZdqXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E373CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207219363.12601.1413696367249130028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca4090019d066b9ed84589eeaca170a7add1204d39bb4f9dbf3531d0749cab77
Date: Sun, 02 Nov 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762072193
