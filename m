Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0A2296BDE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764975174; cv=none; b=LNdXYugDyH1BqM7Vb2CGseSPn2DsrYJ7dvUhxzPK08Nb3dj5b9DmyTh224JTnlI56k3HNRNqQYEQLjwGT/ZuFJNE9fuDPnD79UrrxcwrR4fIrPb86dFs+r8mq4DkRQ6o0B6m5tVYBmaUyvjWKf2ueSnpY+/lHDQ64D/70nYeqwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764975174; c=relaxed/simple;
	bh=M6LPUh6LW6KS3o2VqZjjPG0mnC5RVUhdrWFt9NsM3Z4=;
	h=To:Subject:From:Message-Id:Date; b=CZvxRnuOMN+0cHFl2ELYbd68jG3SYgnauEmqZj8NmRU2V7OiFeyozCQiFHsfocfxbiXnXavywI/u6o9VvxUhScjIA6BZuxqkcbliM4Oxbc9gya/eiXTvH/UWezwuxRpczoYOK83XyvnxV17awVzH5PjRjs/c/KvhqdA3+DA12tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2ZCx7EP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2ZCx7EP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6047C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764975173;
	bh=M6LPUh6LW6KS3o2VqZjjPG0mnC5RVUhdrWFt9NsM3Z4=;
	h=To:Subject:From:Date:From;
	b=p2ZCx7EPFmecMuyLsj6C+BWBrgUBRMFvl99qMBnS5m+XahFrLq1VX7Tm7++dzAN0q
	 SR4zdGtNITBCMDUy/kNxbuAfz/Vl394zi2umWrAhQ+EMhvu1jq/3xozTm0abDh1TB0
	 L3vpKqOqRuMFYTsfAEcLZqxSvQlKIjZmHZPE36XvJisJ6YhayGk06AokvUSBPPcpBQ
	 QNwL1lQeAKk1DJ7qRM7Jup4TpSG+r65/lT8MCaW2EU/h0hDsb+w1r+09aw+vNDYZsL
	 GcXMeivSw2NZjlKEqikuC+3DniAPY+sCdl7sCFam3Z4UskMAO5XHUdokMs5xH3LMtQ
	 zR4fljjl7WkCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CB9D374B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497517364.16052.15270009334848379708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374ab14e4b736d0f890d5696381aae1be5588fb644e348b88ff5bcdee918e42e
Date: Fri, 05 Dec 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764975173
