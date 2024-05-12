Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E31E56C
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 06:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715496743; cv=none; b=Be4xB5EfoynA2DF8FKJ51JoDAbzwBv4hZlESQk515/ESFJveizhdesca9pdlawjG9znIoPeGFmHEto3BrVWkYV8ShxAj/mx53J9nHxwHWAUUboOR061nyWlc8CwNViTJbubpvT7ZPFgW9cnlPaF5/NE/i0D3TNcb06oSvDTKpw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715496743; c=relaxed/simple;
	bh=W1Rq6WFkgw/gnTK9Ody16hjtsJlUZowklleh1ijwWK8=;
	h=To:Subject:From:Message-Id:Date; b=Alx2Ianwg2Ozs1p2HXJkcLmTsET44kpN95qavg3uO+w28wZXblEmbQd/sDr/K1/4F9EfpB57iuHeyhgM/hB1s0x3QTGSk6hYwOtzo6cKWDSXYee0M0dhYPXzm/e2Llnx9c+z6jUuXHPyKqXiJWhUA8XY9si/SV7JeuS1aOslszI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVzAHg5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVzAHg5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B24C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715496742;
	bh=W1Rq6WFkgw/gnTK9Ody16hjtsJlUZowklleh1ijwWK8=;
	h=To:Subject:From:Date:From;
	b=PVzAHg5gcg/njh0izBD1cQGAdHPcWvy7Cv5TKzdtF4DT9COmX4v+813XG6OHMW7PB
	 zehnHSlxkYiYoSJnqEEApssQRoGmnFwwLFNh0RMW5tcWyhE4c82sZ5cjBZLtQFh7KJ
	 xN/O2a2DQsCmF5C/jz+oHwfGu8Te47uXuagYdb1XELblAlUCS72cLG4ZrO2wayaU+8
	 WvgRVodqBsiQU0O6bqDn48oZMLJR9a6yk7LYu6b4ICtkSaLMkHgkujJNOtuZZwrR2c
	 8UaMsF9ef35PE33J9B9ZLIEWKXvss1Hxq1qUOF5iAh7a0yXLbQHjpUHUV4F4V25Kfq
	 MyK36S5b9sPHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D1DC10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171549674276.23213.7207565082415175630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f18a6f42413bfa989bafb8282ce070879c6d1594abbf51c40c2289600880f8e8
Date: Sun, 12 May 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715496742
