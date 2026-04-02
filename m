Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309EF13A3F7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775107534; cv=none; b=atalXLGnvwVETEMzTd+42egMXll6PAALHvH03Dylgz4GjzI0zAWixUqBIcaiqqbUoTaDJ0tqNeEZdeeEhjMrfWlBlo/xZDStSsQJvGikcffrmiFdJK0C/y7M7oXZgs0fHIk3vNywRZHq3jw8WxSmawcSUNxaUdMVg1gU47OspZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775107534; c=relaxed/simple;
	bh=UfNOE96Jxc8RdNoDb1p3OhQX66/u+Oo4nZTvW1mbxno=;
	h=To:Subject:From:Message-Id:Date; b=K4mK5uEY/DX14RxT+mH4VRDUw9/TCiGnAfXjh+YMAZPPlQS4ajxH9O2tKsOvhbeKc/ji1jupfjRw0aHtZUDNQxBP9lcloy0gjf5FA3dmUYCsW8ljTB2BffysI0sTHez2wZN0UuunmZH1rbYVvU3lNlYdaOTjcGcD+ao4oqwvMp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/JpGbeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/JpGbeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD80C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775107533;
	bh=UfNOE96Jxc8RdNoDb1p3OhQX66/u+Oo4nZTvW1mbxno=;
	h=To:Subject:From:Date:From;
	b=S/JpGbePaRjCQrn72xTVI5+ZV8ZjwSyZIRHhV7YZwY3reLB3yQqiTPyPU13YEaccQ
	 IGKVWEVuWNQEo7c+cKSzuyToid1fpk1Dt1SlSp36/tjgUDdgNQBXA/bzljKY77sTTw
	 MvNXIu3hRloZNfePg/Eola8Lv+izieL2nRDLL1vCP96Hs7P2a5bAJJbkUNOFdO5WWz
	 lN1dlBSGeCalw1o3QbM0csB2ZWDnEG/K+ZBLgcDySDXLz29GriVau2dDTJfT7PwBM6
	 FjbuRa7EpUvGuAJiCZ4rZhP5LvdENP4PWxmSMnCpwDR/eLo7JmJTLQM443sN40vwOY
	 k5jBNYeIOncBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F93CC6B00
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510753368.30625.8554226991088720309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6129b29d1f51eeee122ed1bc064adced8194ebdca132d6badac4308f98f526d
Date: Thu, 02 Apr 2026 05:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775107533
