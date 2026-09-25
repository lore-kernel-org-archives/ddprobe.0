Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB934734DE
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790345434; cv=none; b=ioaGc0aiA8VN7zs04rKtiNRDk50B4n/VWux7metM2VMQdnpsWZHxwGDR9iJv/bex1dkxGZzeu2HJgWWw/ZkBXaEN4bWoPOHwsvk4wNuceKnSu/zmt0MwQ4MOyxFyz3cQkUnkbPtCozFVRZWVTn+YA8bax0koPxRb9hS/vSt9i4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790345434; c=relaxed/simple;
	bh=RFlnb+BjslRcMv6EtURwZGX9jUmCNMnYNCtuoEO64mE=;
	h=To:Subject:From:Message-Id:Date; b=BjZgv/2tieDTYsC+j5GB7L61uBos87cB8nIXoWdvSiwFppeipczwdKIFR8ZbMbDxLjq5U44RsyCBDkGs+bBhplXirWJxEClu6W29XAN+BTQgbND0gT2e+Zh1PmA8gL2O12CCKI/0hO9hKq8XyJwIfrIsL9ohvLd4nWdTC53C6AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MupZ3F7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MupZ3F7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE15C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790345433;
	bh=RFlnb+BjslRcMv6EtURwZGX9jUmCNMnYNCtuoEO64mE=;
	h=To:Subject:From:Date:From;
	b=MupZ3F7HWtIW2pBnbKuuy7E6yxaE1LOnU4Uyzf+dp+WYqYFtuCOIXkCrPM8qFSSR/
	 MUbIZnx9tMdwKh+E70cTYg037Wn5EflFREKRzdFpg7aRB1krmnhtYnZsAvWD/lNAzc
	 kEd4Wxw7lLVMUMgWW/JVOJR0b0i6fEbUTM/BTsXgMrcJxxxQ9iJQTtJkUmiuQZ1Ywb
	 6yOYl2AWYFulABv+7QCEhykqWaKEnaRw/VvhGpVNE1AF1jTAhb4/G3K98uwKwzV5iH
	 nrBMMVN39uz7byILm/BLmKvhiiP2qLHTksUOgH0yhCrLk9PNt+lfZcQS8a2XAVpDJO
	 IU5iLVIiVPT2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8A1C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034543370.16689.9678928574629192557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3057cc8e2c659f1da1a2ed50f06dd7b8d3927b394b35ad465ecf935b33db34b0
Date: Fri, 25 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790345433
