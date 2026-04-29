Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0FC3FCB2D
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777468654; cv=none; b=XCyIEommsT5q8iJm8EDL54ObIq+2pQL/XzOGji8gVFgu99z3+96zrkMd0Kd8M3Y6+z52k/Gxv3xe7shFeXZAJAnQ2FGCGPbBHcYljYz6oA2Bd/Wrj82gfLqYCD75b1LDNB3ZfeT3TqcyXioPClRBxSH5C3cv3s1zEd+ZcQ/XcDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777468654; c=relaxed/simple;
	bh=J56tDD/8XEXMgkGSJ1gGQIy0AI78UiiZyU80phTW08I=;
	h=To:Subject:From:Message-Id:Date; b=erSkelj2oyu8hXrap45k0Rv+8+L9A6NyYGX/EahIMMbRZRSURbH4eIsNKCLnX9SK1uLq2Lvx8zCPmJnYDpaf7sDQrr2rmyEWSBD5pc/58LRWmztZ7l3omdL41kMBS8tffmDtvlFFru/ngGsRdbQw1LTlmwks9qdsGgDDw9rYnDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Htpu1VDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Htpu1VDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D6CC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777468653;
	bh=J56tDD/8XEXMgkGSJ1gGQIy0AI78UiiZyU80phTW08I=;
	h=To:Subject:From:Date:From;
	b=Htpu1VDgn3YUTXMxgx8Yd+rPdJ/UG1TrmDyhYe6qJ45WwQuTYrZOP63X5QMbgGudn
	 NKS3x/hLRWh1AhTXzEXa/XGaDwSK5cvNC8v/hgyNTkLj0uoDt0R7zerdm3ysD6Xt8C
	 29W2VM/lNyOasX3b0ktN3GlHwphlWmbhj/KpSPWqGy8OYQ2P4KUwGeP7kq7KiYeFSd
	 WIlK2x0th04anw+cf3qJodE6rWBVA3q1FuiHxdbV4LRh4h5Hnhskv+3RA2vBxE7RuZ
	 m4qDGuXSAqwDapi8CPAmHJzWZyAtLQdz6SYVTYoFNcpRlj9vPQmwjDxJICzq96n5Vb
	 SlZHed/MM5DAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9208FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746865368.28344.15788657724530098046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1bbbf82b4178f478ab212c2b5e3b02543cd6adcaee8f0d73cfb78378960003e
Date: Wed, 29 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777468653
