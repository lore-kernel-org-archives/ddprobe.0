Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2798640BCD2
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786617034; cv=none; b=l+xSHqVozcopy6+vHHf5ak4Cq8u213hToS71GhVeFDC/DTHaRVfU3Xi2oPgrof3WECWU4nMV+QLiSodlV4xN/6nE9jwjCdsUCmwkv27wAOdKRRAtzSNp8JXDkOGGeldNA19AjlU/tUJVb5Xm4s2NQ8yVl+bEECoCAwPIDz582A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786617034; c=relaxed/simple;
	bh=xI2Y1GT3ZjNOnyulfc0rDXhjMzcyBWSjX7eF2TQLGVY=;
	h=To:Subject:From:Message-Id:Date; b=WIgqFhWual99YPXXlxDxQxng/hkS4L2sbbnKQjHS/woVS69J6KGXO+68c1kwf57DN0ucPHIn+TYIwqKNexjEE2dZ8/kISGOoLoBL4CaGHZ65E7lW3FIsSSlyQneWiHVrtSQUmzDhWja7b1n0iFjbBG8cX5Em0iJWkf5fErntVeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggVmiWfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggVmiWfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA47CC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786617033;
	bh=xI2Y1GT3ZjNOnyulfc0rDXhjMzcyBWSjX7eF2TQLGVY=;
	h=To:Subject:From:Date:From;
	b=ggVmiWfSQDAMv1Fea1fx6FYbNlEhCWyR85UfoMN/Q1HIUCKw+GHj9HZFXNfWkUSiK
	 5VOoZvMBXMe+S2r0gRcjBC1DmirEOS969wSTnV8LLoFxRLaDQO0FlmT6yeFTcupTZj
	 ctwAjajCtp25NFBEdKyVqouIXt44hlFcEUn7z0CHwzIKI4FKLMsj7SnQjQMbgYQkOM
	 Q5AB40wZkL9xl69/6B0uKWf9qDcuZvh3YPYvAgsFwYPusqjWTu4qG4rR71TN8Q+iln
	 lcXVmv+8gf+C5E70IxfjbVtK1fNSVV+E48ivAVVrKDXKojI7zfrfMyoLxNEtKIm/OO
	 efNtmYFdzCDhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A21C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661703368.7411.5990748141684172813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff866837de17052f027811b72864f7510c108284de2a6bfc41c9d7df053f0b72
Date: Thu, 13 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786617033
