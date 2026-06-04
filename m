Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E64F352C2B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780559674; cv=none; b=SM1sxNgztvsXwfy2Ken+8mUKA4ellu2zOCj/k8wbPCE2R6+7eaLYCPDjeQRL1WA9vGLD5THcbO6MuDGkJvkCPF26iz6gGRtuq++MCKrJxCQ+ypvx3UU8DNZXWyVkIyUg05vaN6Xu8yRfBv/RlI+Ushyf2EHDmiqg6r0eyDSsRe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780559674; c=relaxed/simple;
	bh=AibWwnbn1QBYyxDGGENiTmXh1vNFh3K+ccSE9WvFb6g=;
	h=To:Subject:From:Message-Id:Date; b=tEZwkJZNGx+TC2V2EyCN2fqKf+z4QZsXzRYfSRbVlaZgK9IvkrVl7zMG45xBTOcI0j/2TXsFCSXSVYX3Y4gJO94asOrtP09zM95kU/42yud2xL3JxSkt/2l1kAk5Kk72qMPaSyAXk5of6qeb2D5mgnvT3ooyk/DVAcVdQRM5Wag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRQbZu0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRQbZu0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA689C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780559673;
	bh=AibWwnbn1QBYyxDGGENiTmXh1vNFh3K+ccSE9WvFb6g=;
	h=To:Subject:From:Date:From;
	b=hRQbZu0nAloFdW7TJmsZ+XON/h7R8caOqtkDWY7hZg3/mzdmYXqZ5aR8dPBynrvfc
	 ehK6TJ4hgZv+MhWLLoShap40GkaJ+li5ppWDpv4YoIYW950mCvqzGflvo5wOvU53fX
	 nVxsR4Deq51lDr3nVyxgp6AWZ0JlWSnGQxmBefDCoku/lCA0oTWMrSJvQxazva4df/
	 pGF2o2g1LiLMwewk/bM3MSQEsm4xy6k6M3YRQE+0gwJrsW3dLjI/SQmTG+qI+vK0st
	 uKHZ6Ke/TUVLrXcy32l6dsn6aW+OfexG/6Wt5F2yz+YsfLflbT+EhfPb/fEa1xDrOn
	 UkjiV3SgSIpxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11A6CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055967371.19890.12290688286714375586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397093787e925042b7ddcf6ca9561c724770f56f2c3f58eb6d8525ac6aed7419
Date: Thu, 04 Jun 2026 07:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780559673
