Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31140255F2D
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766603034; cv=none; b=WNije+9++UA0/rrWBku7wvb6SmGgcVRgUUCEpVFifruFkpe86F3rY2OK6in9YGWuPTxs0dsc39KK9+dFxXQRyf6E8OqhxiDEkH4EDM0JCB/5yzxYHsRjl6ebEdgzA9gpOyE07JvetEvoxYv22f0PUFyHWA6U7gv9HeqTnSKyii8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766603034; c=relaxed/simple;
	bh=aYHk564qaSP5g2AEeG3PdwLIyq7ILGrifQ0cQHUs6MQ=;
	h=To:Subject:From:Message-Id:Date; b=HsOfV43sEOAYcNQ49wR5OQ47mQyEw8OvqF8rkZk050zW0NRsFWvuje/sNKfRpfzDifEqF1AeGCiJAfSLOxb6P9A5qGQ7XIlvT5vc6e4hZab+C6CtYAqJZ6s7ATRHesYGFW04gXDs+38GHUgsPoHmPC2WspVyC5TNs2rghRIAsGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bf/KxbTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bf/KxbTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BC7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766603033;
	bh=aYHk564qaSP5g2AEeG3PdwLIyq7ILGrifQ0cQHUs6MQ=;
	h=To:Subject:From:Date:From;
	b=Bf/KxbTLEegd9FRKx7PoyLvA37guwnvBrRYuquZuu72ZoepQnyHCm4YaIs06nWvBK
	 5lFF39+bifwEzrVwcEcSHlgABH6cBevM3MbruqCRph+9AeVw5fJFCnx6G/enDITfdV
	 NgI171XKAQyhuxkm/5CjqASFdJBg2F1CVirRNNaG/bF/B6mbtXEO7ZnVIgtWRd/Hmg
	 fsaaC/bCUN6GuTdogeNTauBR9UhSHAuo2MIsbUuZ+hmHwz9xzjiM4RiwAEqJtqUSSJ
	 Fvp4GkvocqVa9umR0c/sff7fPV0HLz90OiN7+YTCA7IKltF/JvigLNaDFi1sAA8sDv
	 ydNy9r0WM/2AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41EE7544F
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660303357.17811.9534643506483893974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa77605880b1516848ea3c13f5819e75836f1e3bea951f4af10c24a0d204274
Date: Wed, 24 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766603033
