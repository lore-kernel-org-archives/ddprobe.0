Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A1813635C
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764544974; cv=none; b=FlU/xR6/KV9HwnkmbK4oga6oU891Mui6dtg0DXDR6WYrZupW0ZRloXP4qf8V/r5C8aBWspdQj63o6DjsY2xM5qq/yMDOAstq0UUm7RGCJoPKbULw1u0Mt/YRlwIAQLv4Ri+eYto7cdgvsckIfnnBrC/s0zDnEpKz8+FJoUY9vyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764544974; c=relaxed/simple;
	bh=xWhLGBVeFa/uTxydUTh0VvTknUl/jn09DlaIimVtFjE=;
	h=To:Subject:From:Message-Id:Date; b=pgQ543CXedDRFTWAjzJwao8IuyUQdqfqlTDGaTQjy/aBJ9N6/Cc0HQ7XsZLc/r+Ch0MPZyQtRYxosXglqkkTERJMONGekwzRQ7tkcWmU5fBShoWQ8f9zS3KddJwizYtFNAUWkf4Pyb6c9DFLP6HK5Xwa87O4EV6UiH5TqvAvoBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAAg0hyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAAg0hyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81A9C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764544973;
	bh=xWhLGBVeFa/uTxydUTh0VvTknUl/jn09DlaIimVtFjE=;
	h=To:Subject:From:Date:From;
	b=eAAg0hyXfhzB/McuzgjivtFuIxSubAU5R1kefmWO/Vbo4RsBpjnrdYMadiNWC3YQX
	 fDFMdu3Isg6soD/Vq2/15Hb88fvUft68gA/vHtUF8bH0w8D5wcu69HsCY2FMbJTcir
	 OPD2EU819bPDu79I210vnNoSC+30WbTcjc9XvZQpTRyISejL1IV/LwzIwyn+9Ls8YV
	 vwyUIFCtWuYiivAVwi7ghCFcOHnYEWj6l2iGw2/ArsG1OCwtjs3ESQzO60/ojdQUBM
	 vNss8fO7ipZbDmJ/LMFOdlxXlC/1cISjS6EmOxRp4e88ypKmqvyzWjYW0eXID++Lox
	 PwTYYhyeBuT9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96664CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454497358.8927.10671202736295888941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec92801b315bd94ba2e2e2e9cbf0640c41de1d746af063a0ad4ef0e5d323e6a
Date: Sun, 30 Nov 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764544973
