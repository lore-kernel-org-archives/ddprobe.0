Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B09622AE45
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766112234; cv=none; b=hwbItidnwFmk+vfhrjKEkC3x51HFU+agJ+4QPK2ziE2YuQmbx3PUT0KBUKaqIUkzRFZ2hYYximJ/7I69atrkbg4Eh6+DOv0cKBKwOGGJLrMiSk9aMJ//DU2ETtfTzcqCj9YjkKgcu8ZUQJupD7tX5hd/NP2iLcH31MWDmy/cv0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766112234; c=relaxed/simple;
	bh=3q/Wn/XxzEf4jE7lsx55GMmpE/6YGMNR4RxCEWpuaC4=;
	h=To:Subject:From:Message-Id:Date; b=jWK1RxZRi6joBI6n3HIlhBtlPrcWTr/5jMGM2TCpF15GcXCRGQ8YjTBSKLdoa/0F/Xhj4fo8GN3QMsYabArNMTQugTCVxh2DoeLLbC3Xabncqt5d5WS0JTsWHpDfwav/Wcj4CBJEeo9mCKPwkY6P/HkxjfAC1/R5ywW2HRaEJog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiFgUASJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiFgUASJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 993D3C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766112233;
	bh=3q/Wn/XxzEf4jE7lsx55GMmpE/6YGMNR4RxCEWpuaC4=;
	h=To:Subject:From:Date:From;
	b=tiFgUASJjbjhy2wItWvavcCT11rXCMeG2yxDdsdvBaN94oO9UF7TRqbP0IVNfQYVo
	 NjiADYo6yzIvIFDqXi1PvEA/HGDlO4s79S20u1nVxQwaKj+4DpmJwXRzJ82uUWR2Ox
	 Yu+wp4EgfEAOM37rvpyxs8ToakUzKNAM65UFBqKJgdrr++Cr3D/o5LV1IlM7AP9hwR
	 YbBBtiS6C5ibIVSyx0jpiBfPivkoai4hf+iHoGiXVCeN0OorTEtg347vKbrS0ivbSJ
	 9GFXfAp/80xJ9b3I+lrtPFTA/LEk8S8axOOA8rfE1AkbnSxY6sx7lTQnOkuvZIU663
	 n1Ppl7X/V/sgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90537D711D3
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611223358.24095.15199404110014855259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc98e40d5f2010c96d36a169870b94b2a67a1d31fdfb382b006694d5f25d4bf1
Date: Fri, 19 Dec 2025 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766112233
