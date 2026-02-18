Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052583191D8
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771448694; cv=none; b=eoKH6Qwdn3TCyFTszzLpOOsh+x4qxBE2/WVz7AyK+zI+4AEPRRbR7g+y95qudoWokiseQqQQbnj1M3ipIpIC5q0w2c/50ADQ+0XmYtefx8dnVEi3suzWIYoaAe5s1oGT61U6c2x9ojh2bFvdVlfxdXHoFqBmf3MAPpVs6EHMvbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771448694; c=relaxed/simple;
	bh=JfD057Twn0WDOhAtY0EA4mOMpVQmrVq0iCCE7LIXCw4=;
	h=To:Subject:From:Message-Id:Date; b=oAjJ9MkE/YfhPURRY1/lVfgoVMOr1tmg7OzSPGCbVxWaw2G00NvLEJmvwSE5cozm8sjfp+ABMDtRdw6xBgR80zDcC3SN14UJfKX14FkF5An380YIxtqLk/LQIaGpgFnfv4Vyy3zBxgqW8ZHcFY/gfe9W9J9JGYVi0F/+ayjSe8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFo0NpcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFo0NpcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BF9C19425
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771448693;
	bh=JfD057Twn0WDOhAtY0EA4mOMpVQmrVq0iCCE7LIXCw4=;
	h=To:Subject:From:Date:From;
	b=OFo0NpcNOeFuVZ/v+9AXBFVCES2THnS4n38p2442sYWJ8BBccSms5NInABTAB24Ok
	 qWdux8hH2FjuZTrk1pqmZwkFWnRrGDuRtkj92DyWzUMCcd8cMzC/c2lDhVfasA+nW1
	 1yTlcwTLjj8qkeD01QVDztIlyfwqOpUaxLRgyd7/v58i6777b2UD2jDW46SgCgeHfG
	 SR/x1YD4Qhky6PeSZkOCHhsHZC3iXvN12IOcSxHMzREwcNtx2iWZj9U8rv7MmryXQE
	 kfGZ54o/9PuP5Oy7m0x6TE4V6/vkqWasRGeezikAGcuTivrrtwX66BkbxioO5QdDCg
	 ybi+RI37EcLjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9325BE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144869359.10600.8130872214257763684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5bdfdbae4bf547835525a5b44b583613086c3309ba5d3785f16701851ebad2
Date: Wed, 18 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771448693
