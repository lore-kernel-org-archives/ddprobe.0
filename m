Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A186350D6E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769530434; cv=none; b=U9cpy6WRBQFHeOGMs5Z9pD4jW+eTfMykBJrgFOYckjmm4PbQGGQhWrXKpRE7Utj201RDxhocTz6+QD/1a9U0fTDYv4EYkW91xz2r5lGhcQy8LfvI+tta40G/KXUSdjRlq9+/yjsYQds01P7XiZs/o8+oWwCk72KhcA2B1poTjNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769530434; c=relaxed/simple;
	bh=DxaSx9jNdOtmIZDhccU5V0rPSYb2AvNG+QRQobdQGfs=;
	h=To:Subject:From:Message-Id:Date; b=LfnLybfK0ThesLYbSss5PbURWWSe0JH1L2ORNHFUS08Ranzq7BhAA2cdPP0J9ITwJyIfS6Z3ixHfXOme6GhBZq9TQxtvUqBRwSidWcD18ndgfwhpDdE0YzCDsYJrex3enGn38JypKK8fdk1AIK3pZcBuFjejkv2dyZ2ympCGvSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvynh9TR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvynh9TR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DAFC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769530433;
	bh=DxaSx9jNdOtmIZDhccU5V0rPSYb2AvNG+QRQobdQGfs=;
	h=To:Subject:From:Date:From;
	b=rvynh9TReVisx7B743jWUUdWjBTP/KlUzaYd1JsAvBpljMnr3pIKvUCDSWb78H0OB
	 0M+i/wDtII6FRx3rwbIHBK2QXfmUsO2ZkWwh1W8f5EthhEnkme4ldIKEs3NhJtvunW
	 VTf4aXXYr09CXwCqz9AoTNBEsN0DReCCJ9TOZwMDkGkAH+G9QkPJtKHnK9jxROUID4
	 zccblbw4fjQQhR+NuzvcVG2chExp5Y1TOpqOIGbz6srKIlHwjLp2m5W6Z9sUk2r7/I
	 bKBudvPbTUGYbR8WwSCpFKP7C0bt31uj/2umE01DOEzdAsVSwUiDxEchsy+bEssiah
	 zkcMpH40wms4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9514AD3409B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953043359.3397.13319184937905374078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2731d0f4ca24848a74e6b5618da187396848bc1f1a0f3c148bbd1b983fe73473
Date: Tue, 27 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769530433
