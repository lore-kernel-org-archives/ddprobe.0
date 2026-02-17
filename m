Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140331D5CDE
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771366494; cv=none; b=je8vheZLYRVlmG2URlR5ULixNnf8geW/gnbvPkImdgLhVyHhtEfHxIieodRycp6O3d1ieseofZkB1c/Iuf6+u1Uq1hj8V6WcT++3/0dMe9dxyTahutL+hmZ2YtdF7oL8g75b4D6xeFgzJ+rRNWQN2y+/a8KbrlCk4r/Zl90or9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771366494; c=relaxed/simple;
	bh=6sAy2SO8CS18M5QCFiwN00FhiBovGdPyi//ut5o1Dmw=;
	h=To:Subject:From:Message-Id:Date; b=Gr/uKLUz0nG8wRRhe5WxfANoyoawjka3IWiBUz6lEJrUzeXzzaGO2jwb9ClDqwNY4GbK3Xu7iijaQ2TdHXNKw1AKlsx6ZGdKdfGUxFg8CWJMnkcHxoxEl3XAeYqEStF2Z9SH3qHJfCff0QQlKf8oRANu0x+TuqqGI1nIEyM/11c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+JHzzj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+JHzzj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD19CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771366493;
	bh=6sAy2SO8CS18M5QCFiwN00FhiBovGdPyi//ut5o1Dmw=;
	h=To:Subject:From:Date:From;
	b=Q+JHzzj7mTFIGJ8c2kgtTF+Kjo6ph5pG+leDl7hrsv1FT0q6ipuND22CU1Yn3DEpJ
	 m1NjRUptbH4oHvO1wVe71Gs9E9BqZJH6yp+ZianLpIA9xKHTHKwv9XBAEm/dU4pqj7
	 AEwSvgfVEX9nbFNNNvY+hfdEZCDXr0qOLla524ypSaKkP99yi1frlfE9HqT53sdvi9
	 qtm3PRGfJwfhKavN9B98oc2mFXIjmoLHLnw6Vh9gkvcQBdIdoiUuZthD0+OCGp9Gp2
	 8Aa30lAWN+DD+2/uznMoV/JX5sfjLdw+0bUEpjdQEOoBWzUTkseZJsYpp5Nz93yZya
	 2W5e4SC978AhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B36AE9A03B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136649359.22927.584461739185381743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a672be912577e533d66c36434c7b3c9f3e23071bb487c5849f8f302d87e485b6
Date: Tue, 17 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771366493
