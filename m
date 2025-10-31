Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DB33321B3
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761904194; cv=none; b=s/oMY8vUh4kYFyxbbruiryRGkS6lmORQpa9Iv4vR+O3Nc3WEwho+vaN5tlZQLTZK5pPSAzPFC72tQ7MfHNFECf5Wc5Hj+XVdlvLwL9qBh+DYdwxcL2UmdX18/AYwtNcGyz2CYwhfSiOmW5KpV6AIPXtBI2Gj3QTIYA0EEfr/zas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761904194; c=relaxed/simple;
	bh=CqeOB5rwJ5DrTdsCbVeb+iAPORBubSblgT97BaWfejY=;
	h=To:Subject:From:Message-Id:Date; b=ZFWuXKQcD+L2ZqQCwW+oYh2qNH5P/d/4JxXcoxIc7Lm2f09LR49nafTlwnlZCCU/SwEgp+ZXIB8X2itd3GO/8QmKngmJvULjrhRapoXLF7XKUmfSsr6zOY24Jao7zipyRN9Ow9sK4JiniOxAs4FIr8DUgOMnEvRgC2mT0sjLsVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/3cXjJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/3cXjJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9859AC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761904193;
	bh=CqeOB5rwJ5DrTdsCbVeb+iAPORBubSblgT97BaWfejY=;
	h=To:Subject:From:Date:From;
	b=l/3cXjJaJvHrj3VphlqisrgLc0Xts/VC7YFvcu8JeH/OYJ1XP+agIeOLifuiP+qnd
	 7BDwr8dZbB5xtxd8RU1AaC7IYZ24nZp7J14TUXqr3KE/Sxcoex97LjPEadcXu+X0ra
	 sNQfuumXkN1Wg+BjIDzLlR7YtrRtFMX9poJ1fQg6nVvLmeQrROn3yQzzErsj7XMHoY
	 JsQzuZQd8/ATeNNLst7xOHrEGwCk6IQq3lqFICvtcI0YepeJezwIZBC7mywmYzIEDt
	 1ZRxuqoes81jCoLjo02UiiGlWzKGpv58pr/Wf3Mo1Oi4RI5PzDVE29akldHcT2kQlJ
	 x949rCbLCI6Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC7CCF9FA
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190419358.9986.11256528126936521014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a36b96e6584c8f8957846824a468f956af251bbcc6a52bc623504e7e05e1082
Date: Fri, 31 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761904193
