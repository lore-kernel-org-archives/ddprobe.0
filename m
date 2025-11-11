Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8E89476
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762834794; cv=none; b=ncCm5+Z5ITJ+ICQjNE++XIeffdZy8KOgEkRn5pXBgv/WUswO39mMJ9BbaQgomCpVSXpuQfn//pNxWPwbIxKpnmVdoi2Ad7WHRsxANgfGUohFTTdERntwD6yEnG0pqfucDi+HJITGWJuEFNKZjYrYH/SGZ3iKJ0lCHWozAqc+Zjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762834794; c=relaxed/simple;
	bh=JZBipBNftTkli7IR1Adop5xcPgSjksNRv7Jf2RFLMzo=;
	h=To:Subject:From:Message-Id:Date; b=DPnlcW4T6DNIQgNsb/ryLMpFazNYQYo8NADOKoWBOaSsrY1z+dIi5U1Bu7VXjj7sBuPzPideE9Y+KFh0irgowvlbhBwZgwbTRuOcvtdzvv/2B/Y1m7hx+qo8voPAetIUPzzpkvaBtKs9ZmTt0t6R1MTZRI7ayunimRjl+NY2ScQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZcxLlaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZcxLlaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EF2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762834793;
	bh=JZBipBNftTkli7IR1Adop5xcPgSjksNRv7Jf2RFLMzo=;
	h=To:Subject:From:Date:From;
	b=hZcxLlaQr2i6HYL3yDCPxjcUaFSm0cDXtfblgVsAx42VXeDnaRMuwIUFdtBq6KRKr
	 s7gukAHfs0LDVWrJVj/IsUOHy9BAVRHIeP0vymLwaVHaj+TF43SG2Ij7cbdaBkgpF3
	 qP4OuquYMbs9Q3i3tmZQM049eHw38uUFZrzjyIaqKcgZKerAqa1w2gRbxburR/Jtpy
	 Q7sAdlOb+heU4c2/YJmwY4qbTxJF7WjsdsmpZlaBDWjK+WDg5fVH1prY5CnwumFmPK
	 tszxiVdlrbGh8zHwFIQq2yXaND/gON/dckLVzWbVwA8/F1v18AA3lfPUHtb86xpUiQ
	 sbSqwe7lmpoWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61B3CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283479364.25602.9273405883791391328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fa938e4f638f5607167040c38d01c49d86f7c80660f70c8d5f61b0f484eae4
Date: Tue, 11 Nov 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762834793
