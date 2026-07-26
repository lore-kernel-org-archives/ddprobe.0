Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569432F12A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785106234; cv=none; b=QlW5dFtcgE4kqvsTk9jJAJC6DbqsFYRtbsebBah7xvXORPczRTnCISUJgGMbm7eYYNqOyb3O/ZuXZoJzDE/CpnvP3EIKsnGnEFHYq0bZlSxlIyR6QRkjwucmnjQNjuHUqUdW/zBsvXhbT3ER3P0NLHzcVKDdKKfvgVh/nZjMkzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785106234; c=relaxed/simple;
	bh=d96iobed2CeYS6dxrJp6KHozBMNk1evdWc1dbv+NzTM=;
	h=To:Subject:From:Message-Id:Date; b=RM3JdfUloECM1sDSsx/BUhFdSYo5RnTLdmHo01K5e16qLL6Zax1EqEZAPerXzIFFzX3ARs4sFFKccnnJ/jdeGhYQRQFafHSLhAFKeKBVcXvlrzHAcIPvrlqeLPUGJJbXq/fKK/Slr34/ozN+BgTMCIBLNzpxYEB4vPp95zfKJE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZ7jfnaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZ7jfnaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FBCC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785106233;
	bh=d96iobed2CeYS6dxrJp6KHozBMNk1evdWc1dbv+NzTM=;
	h=To:Subject:From:Date:From;
	b=XZ7jfnaYG+Crkg76vNvDFQDe1CF9jfqfcia5snSz+dZxQzYsD8xhND50Oz31tVVEf
	 8rY+5NfjxbuQh7qLJG6/A904CPoO6StfMtsKtA0i1Lx+q8bu8qCFv3ymISKntdZ9Z5
	 GSuEyaed7X/nAOru3zrWs0fWcZitiZhoAPfqIQfKJNEq1DCxh3VmJoWCxeMcwJIs2D
	 b4nkgJl671rKWqzZiadkRhtPK108JCtQn0589y2QpovLcngCM4nDWpYtSYhHJj5F1p
	 hUbs69IWKBr3fcnLRBUXrm9iwvUAfwXOz4EVsX6GysLAgzBbPC3LuD/I6tnVtKlqT/
	 6oZliWHCCn7oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB02C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510623368.21156.11360548672292956863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71dd3354642dc3b29991b9459068e134938f5ee7ff5419979c6f18e3a87b4533
Date: Sun, 26 Jul 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785106233
