Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DFF3382E5
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775038534; cv=none; b=uI5T0Apkn1H7iUax1PSHIt2Yj4/zi3bQ8qAPLsylv8fqqtYewYhLGSKzxXcdEfWOSd9gYddRDm3c6zYN+znARbkl/I4vi0Xq9+6Q7RSCkvawL5ivXGlVUa1j6ISIO24J9zit4eI1FY48Yy6Z6ukMGigVO8QAKopkDT9SBlkAkIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775038534; c=relaxed/simple;
	bh=PLXngJFjplr+qHMr8Xp5RdruJFLwD0UliWZsGatBgiY=;
	h=To:Subject:From:Message-Id:Date; b=XFBUSf1H1PZ+cfqh72PaY+uD2xujZ4vfvwEUvgEl2GfUpgRI+lyyT4z1Xxsz19XMQP+TIaHcJzTY7Wl/tHaq1nvUohjd4I8fbHxfP7bC2leYRizSXVDtw5caDcZJkmxv+37Lo1Z89lNouSZxLFsErVcApIhjWluBRSZkUtg2EN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2BYhRWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2BYhRWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB769C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775038533;
	bh=PLXngJFjplr+qHMr8Xp5RdruJFLwD0UliWZsGatBgiY=;
	h=To:Subject:From:Date:From;
	b=K2BYhRWsA91OVhiLIEGeMONE21cpwSt0mepHFogTJF0r52JGL+fKPZvKebO+bU8p7
	 zvpSiKKVjrrZI3H1kSSCMsynfOoemoeGWWuAjjBZ9zo5KA4YG+7kNtzASTpb8pKvgE
	 Vbrp21IAujlNharcVAfy0QYiYT3E1YyTcajlNVVeQbjFnluDEBKAo/YSqVTEHrUdgn
	 O39wIpQxgKsi7UMF/Epe5S3VzqmwLJ7q+w1Gy4MMMTurVKTe9YfSCrdHnAIiqUyJF3
	 bx6TzeaCSSbG1nGyaZKRk26CZhRZ7b5r5Lcssnz+luN4nleZZQmAbxkp63IWtR9geD
	 LtTZJSivCFlSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB772D3516C
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 10:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503853369.4005.2282478938435944826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a7fb28de606d39a6e0c492cdd9af33698ddceeab0a68243adffe1e764b1669
Date: Wed, 01 Apr 2026 10:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775038533
