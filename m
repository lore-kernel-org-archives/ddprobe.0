Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6DF2D5414
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749628194; cv=none; b=WlzQlc3mQgR6Bxl73J6VNEOPbe4YbWChOIITqdFLwS1njBAmMB2Cl0hwPLzL3wOU4xKDivhU+pjjgceCi1iVhHm+zQfgtcN18RWpcveItqjvKfciSj70DEUsuNtwr40qyNhTlkT7jfEG51DLg8o/WaXmW6Pd+2Il4fp/V6t/cxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749628194; c=relaxed/simple;
	bh=pcKubav+yJxZutOSVEDkIMFk/bIiB325W9+ihjjtSwg=;
	h=To:Subject:From:Message-Id:Date; b=O8cuuEj4Yl49WeIM8wUOSA3IPJFor6CavrJtCfusiIumvawopLzhY2tDbveBr6OGUfyV3pwHytlbTvCqlu7zWVYzXYGqfjD885hecX++Zg8Q8ckK5Um95t9Vx7LLuVFtxZMrTIuGs5yeZUa1t+i+Mk/4TIVqZiQkSEDsSCLuLC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFSZ3AEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFSZ3AEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3148C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749628193;
	bh=pcKubav+yJxZutOSVEDkIMFk/bIiB325W9+ihjjtSwg=;
	h=To:Subject:From:Date:From;
	b=GFSZ3AEIg/Ah1zZQDOn5FA/BTMruTJE+XkF8h6bTWoBZx5AjwAHGXk9FxabVSXXEv
	 4OJimDey8iCfe66/XfEm7MmFcpnaV9E1OAJ0xm2Wp8iQVvggNaPO9xnDNTNvzGt24B
	 16MwiTyINSD0C587/MBiPRLMJ2IUgj7yFXmvibsjvCP8TgQoXqSLduq/TjU8Ltof+J
	 o7uhsKLkbBXvAgGn5mA+o9iXVgmP9n7o0aWG1JzEMV7MXRka6MiDy0HfJBa4LCpwtu
	 GJSqP9I/7ltjbJ8JqjoSOl+Y7MLt14QZNLwr1eIC7LGXguEFi3/NZcXnVO5NngnKKs
	 s4Q2KqSQG+Hng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE8CC61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962819358.18052.17303599769270085278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f397a93b851f0cb74bec3a00aa1ab3877bd2acefc07c0d19b08b4212dd2819
Date: Wed, 11 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749628193
