Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CB6302170
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758143994; cv=none; b=anvaSgucMcBPV0PWQCkuU6mkT2cNuXWuBibyvaob7W9BIjXb3FYy4STVahm/MmfHHPKP/xANeouuIV9lecqnd5R6P7+27pF47xbxE4ef1eh+wlOFvGPL/bZOv1Vlr+ttU6nzPnhnnByECSne6b/BhElX29xGQ7gUme2SBnCHFQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758143994; c=relaxed/simple;
	bh=oWGysJAd92bfXVwDHVs6f1K+G4srd6ref7zN++Vwpz0=;
	h=To:Subject:From:Message-Id:Date; b=NaIAkO9nuWF90sFn1s+7mZCvKkfJb5qVmpllexpxkHp/yFtAj2lhIkHYBDFPu1VFRvstEXW8SPXQopSk7lCR3C+0lhwfr1Z+SLMkvts4mqQa6NmSC8t9w3iE7X46xCKyEfWCetykYVnb65sMltOwsDY8HulSOtGV98ZGhhuf5LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvWvKTpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvWvKTpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D87BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758143993;
	bh=oWGysJAd92bfXVwDHVs6f1K+G4srd6ref7zN++Vwpz0=;
	h=To:Subject:From:Date:From;
	b=IvWvKTpUKwkFZotng8QT5deeE811fLWO4ynWZFs39slzHl/mMWfOn0gRwWWtifD8/
	 GxKohMMNisMPou60OfHO9pGgDU9tx5xrDnWuZ7XK5D/hFuRJGOiyDTDriEsx1R3IWD
	 LVvkqD2zlBGyPceH/n36MDP69xUnsB/C7xjwxbgzsbCJCNRmz2GEf2+RQRxcpUO8kB
	 XkF96hVwUnK7ly820ztMTbELBVcB4/uqYO4TCIHoYK/++PtewXjPLnhrIecae6r28N
	 2m4nsCUBONHshz4LobvX262O6SAFDduy2UvySVApdcnt0MCwtuxxBD2LGc6unmMF62
	 YYqdShS82GXZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F280CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814399357.13424.9772549915227739841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cacd59b0f63b3e56641b57a217ecd9273a5047ff8643187744d4ab0fe3c48596
Date: Wed, 17 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758143993
