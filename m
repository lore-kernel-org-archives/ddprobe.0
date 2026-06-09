Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EEF22D4C3
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781007334; cv=none; b=DGwB2YcwDN4mKZ19fM34kKQNRyDZNAzcs24CV6gbzCpLHiDbAOWxeEYVTGYShoUSLqzmthb9ZQ3u54dam7fZ6xpEhozumCMrEnqrMrYZOroM2ov67YIUFbgB/fCOkvEX1AOgvWx3WXsSiMeRoTDEtfPTClj+NLhAsWV05uDgiQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781007334; c=relaxed/simple;
	bh=w5YCepqMHbQlxAsXOXbM61sJV9og3YdFQTn/7ai9FeE=;
	h=To:Subject:From:Message-Id:Date; b=KE/O6fUv6dtNp80JLFPH60/mKeggYPNobPeJn1TQ3+T4A/wUXyplugBz6UAzOIIdsVU7W5rbQsAQxBb9itHpApF3FLzbQ0IXgar/dF9K4YJh2GbKUcSACwHv9AN297nLuurLrDNFPoHboV2+p6P+ziQM5CyrmEeZZwX1qYOKb/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5ht9gnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5ht9gnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC03CC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781007333;
	bh=w5YCepqMHbQlxAsXOXbM61sJV9og3YdFQTn/7ai9FeE=;
	h=To:Subject:From:Date:From;
	b=d5ht9gnRIKH5Q43/EIIKuHXfxImlTnhulzki2U4Kk6KWbmldXkwA625j4RIkpItGq
	 XccYz3RYOr5mwagChFLwU70vcUsudG9pdlcZYObwIYA62EAxlyqVGkzehNXpEJ1FB3
	 BeoejtwUp9qIU3BTHSvciA5zNLj4NrUH+fgyPcSGPLS/b1Ono7syojOzHBQHiahpJf
	 kZr9wmTunsVLpLfOjXcuOgLRpaSIdVhguca+kx/ifbIWt6Ba30hEnkwAD8+ohsqa4R
	 Mbiv+zG+8z/wVCtN2oWcF3AXyhqrw+R7Nry/syvK49m7/h3/TY4OB4Gc57P2HXVjYl
	 /ej52ywZzL3kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4EDCD8CA4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 12:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100733369.21649.15592800589096081399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1437322e2c69a694fd6a47edb13252eeec0dee9bc09cab40949147f9d115cf
Date: Tue, 09 Jun 2026 12:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781007333
