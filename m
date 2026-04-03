Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC6617BED0
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775189734; cv=none; b=PUv0Oo97dpMZWVQ6UoG7Y9qY5ac8ZG6cveJ6O3VPCCd0WDyozYCkn3IJdH5DVqQ4r+dJNmrovGyaPG2s0WrxAgA+Rpy7JCIgwGG4oWc3HhE2srIAaAl5wJbS/Yr5SDLbD0c2na6bLdzWiY9kKf8StZT9pX4CsUo5qh0j7ZwfeQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775189734; c=relaxed/simple;
	bh=YrHl+aXTvEORTcQh3rUNPinF0jfIZdJRDinIkFOm8Rw=;
	h=To:Subject:From:Message-Id:Date; b=gRjYdvjLOGeOjNNdhGZH55qn2q27eM/uAsU5g44aV5InWAxrOYm5JEMbRJEDy64TzCFfyZO4FpgGeGAgNXklAa4xGWsEoLeOB42xMNLFhzTxgWuEruffrVNcIz3HcegFss3tb1EY0pVkiiTg6bEdIP2G7EbVw3BHKlfwNBKlToU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuKODZVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuKODZVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7DD6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775189733;
	bh=YrHl+aXTvEORTcQh3rUNPinF0jfIZdJRDinIkFOm8Rw=;
	h=To:Subject:From:Date:From;
	b=KuKODZVGzGXq5uJ+sZpgPqgVQEZZZy+kALNiUHaHYmXaHzWrW3eSaLHpuow4QSNLb
	 IfcwTraOUDZIpNgRJOUonz+XN5QIy6NcYgjR7UJxaZetE0hGcLwHMQRJNXcUFJ4rKB
	 peV7u4p3qOTbswcjiJTqju4IILvnU13u/jo6OftwcpJggBnKYQJJh9z3poSPl2P3UQ
	 DNNECzbvAdfkkortb5K0Xv3Ih9ptWojO+sIEi7gZBMD3YDDgyJxXZbpPXhUVfSzSQ9
	 N28XnAfh1yqm5e4qjfmlp1uhdAvmcY+ZbcGFSS4bAnpN3ioPi1o4ku5BpxOdukYI20
	 A9l6G2yXypo1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F3BD73090
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518973369.11633.16837579382452882103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4bc71fa0a4385d0f8139f3c1a131a43d995522a5a1a9b86f6271af62c523174
Date: Fri, 03 Apr 2026 04:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775189733
