Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C15A4315A
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772313894; cv=none; b=gg81SXUDjnmd6x9sAEKlabjhyxa8KCogSPrEyj32BIpehnknikEeyRrGWqedms3KwVrLfj/d+BZ7oRv3aTYOY8BU8lXkLngKykB6z784/csvWo8fxB1ErKGzhSPsj/w4rk5xjYPVUIq7ez7luyNgeLzfLZKdZpiSu18NLOkWQ38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772313894; c=relaxed/simple;
	bh=zNkMkbDIhi7GNqbSnabNYsH1hgzycgDYXunWw9wrwiM=;
	h=To:Subject:From:Message-Id:Date; b=YrJ9HMnfQX7Fg5+UYS5cwVT/9qm2EkHCaRGMiziIqDPvwa3dC+vyq2gZwj0VvJIHqGz6WIHBuNFDxKS9kYW9dR+ctu6ceDkQoRmUFBTuNV4CwOSdQqLHif5pEomcnCQPjmSNIex7vM/Kw1+A8BJNX6Sfa4lwoj8JoUSP5qWYBu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQymVfmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQymVfmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFAFC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772313893;
	bh=zNkMkbDIhi7GNqbSnabNYsH1hgzycgDYXunWw9wrwiM=;
	h=To:Subject:From:Date:From;
	b=LQymVfmdlV8tIWZqqmsqit9r7LSGhzReWDnY2OayNahA4Q+WGY4297k2ZLF2cB/hd
	 xqhNgFiicC30+zQXrfJvi+bZg3l+4lMpUqHysTO3VHKLxGvRbvkr+T2mu9/6uAsVdX
	 WovegLYhOxQPdoVkHtDzOwdPWlgMWUoFNUdRDKuEzsKrBsBb+cR7ly1+3nevem4y2n
	 W7OG57186PcLQF44z+8t1e+YIOvOAQMrCEuGAkmCunrPw9Z1cf8oyJ0QLnMFn0k0vB
	 ra2eBsuW4co0N+RH8lr3eY0ZQbCl4KNEJh6c/Np2eaYPIXOUoT+MGSLUltU8shiHZc
	 6N53maz3JJKzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B47BFEE4F8
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231389360.13230.12109208125463362986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca384479a36afbfaff24656b0b1d0eb78bf622f4efcbc5cefec52806214362da
Date: Sat, 28 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772313893
