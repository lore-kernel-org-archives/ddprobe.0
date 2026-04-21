Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0C0372B3C
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776806854; cv=none; b=kPEDALaOwfQWdCayigrK0jsj3wltwGuzwVAgBqGk73qLiatqSPR/hStvL/my6x3GuCST8THH+li8gjQ78q5jgk+boK7V23ZBcaUAycA0tKfuU4f6hGJxazSpdm0ab1t8kiaC0WnA/Y7lEsSEhh76TrlGzHBCTi0XCbpZalM9LeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776806854; c=relaxed/simple;
	bh=qJ2H5s/EIvHGUwqCLrs5eSbPdK3O1lEuakoE+cULLIk=;
	h=To:Subject:From:Message-Id:Date; b=IabojBrZAiHa3TSUhMvXkirYAu1muTOxuVvNB56MEmMIg7ZQztLxo782APNh0L1la61wTG2s3mpltYtI1q7Fgu/mL6/XAJFrfog4IolIhN4zv2VMuGHh6kNXfB5vPv11pD06wOHBQdFyxjcrGPIY4z3Dv10TxfX4SVa6RL6pYao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m039ObWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m039ObWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92E2C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776806853;
	bh=qJ2H5s/EIvHGUwqCLrs5eSbPdK3O1lEuakoE+cULLIk=;
	h=To:Subject:From:Date:From;
	b=m039ObWs1TPu293RnYiuMhxo5iuzzT7ulfEC8jwgTjLmjudIBzvW6cJPx5/tm3YX8
	 xEHPTuhtI3qbf5ocsIDB8dC2tBvNYmU9GDCdfroFe/LKIx2tKODA97QxDJxZIKwIoj
	 YPacXMIqQiY7c3gdD9TgMKGLYgM70qzGUeAPHaXd+psbvRdaRrjQY0xZm2yqF4pga2
	 FVhumECZ2FU1LoaKGBN0+YlwDBPHM1FbvP5P518Oe2+Z2yraWE0CqvNHreraizYcaR
	 ENtkoyO+tlljSLeEQY5NNMmm2HHPw/VkfGMNv11lOxSrkAq0Uf5pj/yfKXjkYrTyrU
	 X0lX/jJ6dxdzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD5EF94CB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680685368.30871.15821414495333137072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b1bb1559d304154cfdfa72c6e4029178012121aeeee9ec325b2f66126fc62f
Date: Tue, 21 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776806853
