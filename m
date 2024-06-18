Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392E616D9A0
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718740163; cv=none; b=smLHgM83CHux1qZosQTyP0f+4eXq+TYPgToysoJl9Dx0N19tDYPosIXcbe94sxv3DS4g0uVQj767bpp1krmlKGbl0fSHsonposk0Inp9vsLfm0VC13ryzbUc2Kp3NAbBhnCb1tFarJ6DS/9Gsm3S6OKboZhjoLbNGw8FIK9VyZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718740163; c=relaxed/simple;
	bh=yaMPvAJYIK1WlDAfJBjrL9/Yjf6tcLMYfw3WUOGjMe8=;
	h=To:Subject:From:Message-Id:Date; b=Fe6CNmIe+w29O63c82qrIDdbnRl1TjrjMi1n8pOVLISLEEDq2unmpXMwSAQQjedlaKMwO+XM8gMlZ1WRJ52n5daWWuArHYLond1uJtVWa5zmutw4FWUK0zpc7xa0JEBu4k9Z0Q1yvWHGajbQoybVGT3LLd1Kelsr42TxkgJ/mdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3l3WXhq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3l3WXhq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC0EC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718740162;
	bh=yaMPvAJYIK1WlDAfJBjrL9/Yjf6tcLMYfw3WUOGjMe8=;
	h=To:Subject:From:Date:From;
	b=J3l3WXhqA/06vhP77W3G4qD6iJAoGzGl87y6QOSc3BTlkKkOxEFlkBFc1TawCauIy
	 uXeWtsMM3Yzxtj3z66dR5ZPaPjAvcBIB5Q6Kv7u+bvPj6rSbL0R/OYrsCXRv0WWI+O
	 sbNeiSXI1e/EznsUmElXqPXyBUyaJZGtXESpMNKbc8zM32pQ41wX7LYReJHp+Ta9MO
	 sme7xmD44Jlc7Dv22RDGfSHqjJ30ecYTouOHg0vcEEF2NZaSsMGEyOHpI3HBGbMduh
	 TH2nHZ1c5Dg/CpiE24NBwv5oFPQxhFSZqb16dECxC8kc+mhyhCbSpnDUTE3J3XYvOU
	 N+rcpgw3lXkeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19CCC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171874016278.6850.9536810101796439265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 804ce7c5d12637469528850b45747384543d0af4eaa937abbf11eb812719af4b
Date: Tue, 18 Jun 2024 19:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718740162
