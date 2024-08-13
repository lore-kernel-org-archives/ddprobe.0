Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A89D187341
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723557354; cv=none; b=eqk/nXi0kNvQtgpd9ll+zYZ7YiKtxTOHpunY+G2Elxb4EaoGtnwoztZhfy/sBUdALzEhcdhxBaE01cxmIVlkxXgyAsFEyKoETndl2xbz+4B0EpfKsi+xwEwysGjwo7eta0untuVw5FO5QP+ue9FOg+KGBWma1YkoaOhl706JO+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723557354; c=relaxed/simple;
	bh=oasS74pFDu9AOIb65QcCfEMctiesSE9+ZAJbkPpIYLc=;
	h=To:Subject:From:Message-Id:Date; b=jXzI5kvq2eQ1r6s7Eb33nc6IkIegU1K67VGGkcg4rG01QZk25vmkUXm/5gDtTAwzuOyDGY6Zk9M45nYRI4E4l1yWDoG79uJt28SZCS5e27a7u6xOM6b3YGQU+0MVgiXybHfPAI31968+WDXK7MIucEawkUqGDZiG/41ox7pPG6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4TTLR+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4TTLR+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27F5C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723557353;
	bh=oasS74pFDu9AOIb65QcCfEMctiesSE9+ZAJbkPpIYLc=;
	h=To:Subject:From:Date:From;
	b=m4TTLR+oPUX9Xs5FCC+13H3UxHpQPP7w6RENbfqeCxgnXDqjsrR6XMoVriAB+oP35
	 y7t1GozVynXytIplXolZYxmfQ35wyP7tV7pPuDFEvurYNEAzcrhwGqXPCoxkTf+ie0
	 aDbh5dSpGwEbYee3yOoLdsN7b1GPvTiyEsIoL/yG/oBt2BJP+L0R+qag+FKDcsgSYO
	 CRudrZhK8ZCLMi70iJYbdU33Fcq6yydpX8tc3u6NCcUE4YArvrHUet4HHn1qj995Fm
	 6bWwTRKb14Il2OpIgSODFPFjgYdfe2WQPvr6q+2u2fGaNb+uwNMZ9E949dUcYdXwfs
	 o3jSL6xTPnSfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932F3C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172355735359.11550.11849901914017820851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9afab8c2368c8070e9aa0cd76492308954f45a82e2e67a4a58880e399aa2b5fd
Date: Tue, 13 Aug 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723557353
