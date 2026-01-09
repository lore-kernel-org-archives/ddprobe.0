Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F027F225408
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767975234; cv=none; b=XwXLmtDlEFcNVF7a7LIkfQEGYFLBxPFZmQS/CEaVYOBUpvwGDINYX936SVSx8TiXwNLc4Cohi6h6dO2bYuA3K26EvVeaMqYxZIIRigPoMspx9i1GepGMCG5MbNLrj5SZbuhl0eBe2MPd2Rablpq4IFAzhfCjNOriIP3e05gelFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767975234; c=relaxed/simple;
	bh=6aYJVYpAF0hVTCBOZB32e7MN4+jGWXrEQBk8L4BmJ28=;
	h=To:Subject:From:Message-Id:Date; b=XcPgmVW6aYTVw+bikFYqCP6AkB+rWdKwPxhh9nGY8gKMn3yNsP7J8fRt1DD8PSh9YS7tTvN3/DIC0lVVWY/0aE29lqTyTn723L7CESCdpXZBDb4efQJaBq9/fTkxJLQyCkHs/Em8eG2X0afVD7FkOaNdj4xe9JuZJ/4Lm9OaqOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBI8jV4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBI8jV4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC4EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767975233;
	bh=6aYJVYpAF0hVTCBOZB32e7MN4+jGWXrEQBk8L4BmJ28=;
	h=To:Subject:From:Date:From;
	b=jBI8jV4m8FunnGDgej6JJt04yYLITDL7mfAoFd4sfnATAQVsA/ostLvl7fcOVwken
	 SsuHA4FX4yY+yy5Vkh52rAH0we7mZGO9j5o++Izi6XHPe57f5L8bXnoOwjzUr/yi8Q
	 4Dju0/q5znfAkAqo/5ftOQYwqhy4HrOaLNHpXGzdENJEkxu7wtOirXKA8c+40KoYYS
	 oUDZcP7wdqu/IAx+7u7zDsfiL81cUPXJ5LQk3n1F/W9TKZjxKNMq5xCbw9xmAZSKg3
	 rRDBy7+P5sR2+bBPXs1Qn1HLT+ttNq6j+9c+zeedEFIdGXeww4IxcTbbfwTPaIXnGI
	 EQTNbT5QUmw7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A5AD26D6F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797523358.25589.7195416306004383488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab446678408eb21559b4af3e9f59fbef889ed0ccb8868c73c7b9889edeffcaa
Date: Fri, 09 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767975233
