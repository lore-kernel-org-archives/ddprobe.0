Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393CD328611
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 16:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781196994; cv=none; b=MsC2qAHTbx+V3MSkyiBSms1SAB7f/nqnDw+nfw1M35KyLPDrkrqgke/9ldgv2mHTzvrXZXOnMmXfP9WVZalnjRhE+Egmrj1bOFtKcfhUhGlUlQjNVD/bwq4qhR7JXD/tcDOHlCpOySy8tesiaMsvO8B+gqNe2oxKBB4s7WqAGrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781196994; c=relaxed/simple;
	bh=olIwt1ed1/4xnuQ8B01vl9RTMpiQ4pMYoSLtOZl7/gk=;
	h=To:Subject:From:Message-Id:Date; b=t/yn2Wt2yCzur2E/05ay0zr2DhYPzCEduqF+o8+k7ilOZynL6TUmgV6HnEEogQShzXkzB1SlnWe4utdfmlzMPBG/xm9fybMC17XaYh1dbmGSm6D4veHT0bjwnXsB1J6v6jUF/ybpMioMpyH07nzZpthyZudY4lxkIpjbhemvPfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPXZEBf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPXZEBf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD879C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781196993;
	bh=olIwt1ed1/4xnuQ8B01vl9RTMpiQ4pMYoSLtOZl7/gk=;
	h=To:Subject:From:Date:From;
	b=hPXZEBf7nDZLb673epMFcjUJyxdoml23MI9lzYH0r1sdghOylqlwA+Nt/YWyk1/rg
	 WN+80tHhyQJcqk4s28R1SFJgftB+HyQZeaZVOeI4+2ux/lwuGg7CGCBojeZokpTtxq
	 GBC8NEtqoRK8TungyscEVoUC3rJuLJOoAOrzqhPH6+/Cdb+5N1sqd9GLemQsyRi08t
	 s4kvZqv3+5q6n4rgvjpwHHI2YMY1A422RSfR6VjWO4iry1RvgSePFiiQCn/pvtk3DW
	 RITkNMDjGe/3h/FgyT9GFYKMkAFYZAckQoY0KPq0UeJHevMtwvIIR1N/gitAy/O3Ug
	 n9u4YR/DhfZHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE50BCD98CE
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 16:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119699370.6469.467793693654408783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958a407d5bf2366cb3f6ef46b2195269147a9077a24d43480641ffc419e868f8
Date: Thu, 11 Jun 2026 16:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781196993
