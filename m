Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F513C30
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 03:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717990043; cv=none; b=J+mkJ1t7NAQozZF4+dZSogEfghpQEg9/CU6RMIoTuZgAiMu8hldwmMhK0xCJv6fWJ/nvj6du0LfE59XralYDZTgjq3ii5X9aEdVpYkMHQL3WzaCgHQ8JCBAXBvTQxoWI00+gnKUaVbYljBEjoVRap8Fx0pHalQ1/7qKJ9o1QkqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717990043; c=relaxed/simple;
	bh=dOajddmUlQRkF59+FETSS4Ksx0/jYgsXtsn3MSm9dww=;
	h=To:Subject:From:Message-Id:Date; b=lNK2KB7C4bRHF0pDNLej00eC9L/uekMaWtnXPnYHW3X6rKpYt7xX7nH1vadlhwz/GbpFlqNaFyPqGpq7/4MQ4Duh1/7BvLY/fF/CiWucsix6epzFikzmjiH0APBttThLsUqtj0zG/RzedlwCkhRgj02tZGjt7rPRt10QHmLEGbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGG6OkTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGG6OkTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA7DC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 03:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717990042;
	bh=dOajddmUlQRkF59+FETSS4Ksx0/jYgsXtsn3MSm9dww=;
	h=To:Subject:From:Date:From;
	b=ZGG6OkTUltLndfM+dEIGUkg1FxG+xlUk2apboL2WbRfyQZdp3u20Xi5koeSu9XBRs
	 vJQzQ8mqaMTNAg0tH69FKRV+BmNnyrtDfplgTHmeiejbqwXPo1hZOoGtmWtCuq8Cwo
	 uWyo8Auf3y4o2Q7wwUebfDeVL9ypBpQAbfAOoQMWfO9bgGk4yMEpCwp/s2uWCgqhIc
	 gxvMI/kss/knDrqvJhdsJgvUoGfmaL3X/hgQghmVDLR3rBIbCEnxlSXTA+JZjc5PBW
	 UUMCOcNOQVA7RFp9WyF2qbjj0bwJdNDtrEY9/QwYTQJbDTuj9X37xYlwvUQI5+NUd1
	 i/e2C8b3GhvTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADA2C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 03:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171799004275.21680.5889909146898573980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ae2a6c5906086335752c0a78ac7f8d54abaf5a98be3d0be7b7eee3eb15aa3c
Date: Mon, 10 Jun 2024 03:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717990042
