Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4649CB640
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786312234; cv=none; b=e9AMiusyq3+sp5fJP6RDgKKlIDTcaoRJb+a9LkIOgP5Un+BodVnqV+CAcC9Y/LxOjKcy/SnY5iE1cJi5xzfKTSRlp5BINEfIk7m74qRYL7jJRcRUWBKHO/34NnlpKlSC4oe8yNKyfTJamiLM0jIrlMje5NH8ZiYwv1wfplJATo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786312234; c=relaxed/simple;
	bh=SJIHio+07Kzl4pq28udV8VFbDz6P2evrjCn5djwy5N8=;
	h=To:Subject:From:Message-Id:Date; b=OfMndkf9vt2ZCnbI0b3AX73U0U1GVbaiRhsIgBXo6AyntcAadLxouVqLvyyGujoCdfPgzZJI7NmGxYhNsIcughA872Js3vtYWpGf2D3ndMzpKOB2k0jncHnp43pzEeymWnzBFURnQmx9p3HF/px9UOR4gEgEuP4AZl8yrjNf/tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtjJuImQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtjJuImQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5825C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786312233;
	bh=SJIHio+07Kzl4pq28udV8VFbDz6P2evrjCn5djwy5N8=;
	h=To:Subject:From:Date:From;
	b=PtjJuImQuWJeAQH+/1W7lGXkpu90iWazHsigFyezQ0ZWvMKdLROHBWsbm3mLyk1Dq
	 JY4YY2Dpe0Tb3GCcGCgholCzH2RW8VPD01Q4h9FLvgwIl0AfiFtTM6ii6mvTZn1md8
	 KmUhDxkPyxl0xfzlDIdoqUDc8rkei7fkrkFQLqJQdBmKSfNwFyGfhvCTJEzw/UjFC2
	 tOfWJaykyVypoWGNByMz7LbG7BkpxWB5aIM+RFoDUFTR7Ja9TXaJ3BFbHpj8PU2PJF
	 AA0nhCwVdMC8bwZZWX0Cv2JbVjYcQewBpowsL0V4eGpSeDCWNIDtB173gjFJubhT8f
	 vuNCNGh+KCnqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD8CC5AD5A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631223369.15981.5290324961488837199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e124292544cd92fe3dd4333027671bf0f7cab1e26df2bd8f4891b4846ce19db4
Date: Sun, 09 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786312233
