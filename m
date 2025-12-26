Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38485163
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766743434; cv=none; b=FUL3qwBidxkwNvb9sKjHompJf81WEAYZt75HCxs16nXiJWRs6WKBNH50venJPD7YQJEYczrAlvZhwMl/ECOKnz1ON+VVPqHRJP7vjzo9Zjp1lWzcvkQ4QtRx4X3xPJV6ooGBkPnwZMmx2ec9uwJgcNMWRBpQ7/1kgQh3A4y4EQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766743434; c=relaxed/simple;
	bh=tGwEP2XG7h6LBKu52ttfuVLvLJ409K6eCVUkBfCZHfY=;
	h=To:Subject:From:Message-Id:Date; b=hUr7lAil3aJ2nlvWGvvNBIumfsOHz7bT18iO2vBdATqo0ELqTMsOggvAsUFIfYXTbGtQiPursZ3R31RSboeWbsS2G4G+dgJTo0K+JdxJHQFjxxPSEMaNsh3oHGtdi6H9C7CE7Z/9PgdKuiSd/e20WWHBmuhDAIfnulgw+oimusM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhThxJDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhThxJDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D2FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766743433;
	bh=tGwEP2XG7h6LBKu52ttfuVLvLJ409K6eCVUkBfCZHfY=;
	h=To:Subject:From:Date:From;
	b=rhThxJDEMtRREm6ES5+1Kbw2iUdMwlQdioQ1DXMciZwTJuLVQv3IJYvGezyyv5Sgk
	 UFIuNPKd0a24htdCILDvBeM70c7NK1LoGuxC0SFj1Pz13LNfurVdwVtMcRv4BRqDq9
	 AFT/y42pKctZgHXpb2fBqqe1MoXMPKvx1PHqHsemEVLoTMtjnlDKFTp28/y4u4llte
	 YSanMCTr6kPnxMdIkJF0jICJo/vJ/eL03KJ2mcvJWpR12rVQAyrIWrqGMS1kvQiHUP
	 cf8W4LgK8JYCn9QcottPGPkexWUTLAx3b6iGqJOJwykf4EsXu3XyezyYlnie90MJ3G
	 Yq4kYK9RAqCpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B80CE8FDA5
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674343361.19741.17398548622937992483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cc67c46a512a6e8e7255e1101b1be932378098a4c5593aada926dfc7b017df2
Date: Fri, 26 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766743433
