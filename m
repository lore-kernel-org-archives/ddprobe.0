Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2431227472
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763973114; cv=none; b=GbeK3c83CWduA1yM9iHnUxS5p5skqYM2D0eyv5Dq2Xr6jFruBBUWlUkk2f84ZK/XrIIEDRe+zBTUUcIVF0Yh7SVjUOu0WcthduoDAOpdSmRyqfo0wjvv2BY9XFDvQsSaCqIsq4BzzSHROppbQudwBhbb2f1N+PHo3qSCzKBUbUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763973114; c=relaxed/simple;
	bh=1Rrs6n8qf2zwTtijIoFAmZWVuNfT00yccIoiZZiOe/o=;
	h=To:Subject:From:Message-Id:Date; b=oOLYkfu7YerEeSvE5SJUPvVL/2TOTkZIqsBDPVlLj3gwEXWUaDH+/F8yFixWPD81CFa1g525J1dklFQth7lYkmzGrTyMmWYc8v0HZR1xRpHP+40YEmgK/l1cSAODux6wFAA4lip42DOR+rB6R8hTw3yHoTg4Dc3bFj2N/rxcwek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPI05xUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPI05xUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A643CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763973113;
	bh=1Rrs6n8qf2zwTtijIoFAmZWVuNfT00yccIoiZZiOe/o=;
	h=To:Subject:From:Date:From;
	b=OPI05xUWQTuxMKEx6EIicxvu0rTd/1qzfzjMztAPEYjL/5mrBBxLE1obkyD4qlJqR
	 b7NuVtX/TwsN0wAUnYRnV38hlzFh3oU3M878e96xchoMCEjJSCdkPbi1KHAYw4RAjw
	 xu6JBoJIkFpskvX57zsFrbR47TE0ko6IG0SGJpwxRfIKLYekMlRa4Ukjh1eemPnrIO
	 SAkeNv04M3ioPDJYB0ug7UJLcNW1CGSYUYL+MH+e/IQGy786ywuxbgdmR1sNRVpjy5
	 cFqj9LEhvO9KqzPYkvy6YfheVw7DAzYJjdenhkqP6K9noyU61Zd0pHuAcnfNryRW+s
	 Nv1CxIk7fyRnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9547ECFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397311358.7886.9413708476835913412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c17d142b32520ce3cfc5a6e6a68a582cca42b927bcbb7738b94837501ed3f3f
Date: Mon, 24 Nov 2025 08:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763973113
