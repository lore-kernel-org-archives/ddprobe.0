Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F12199E94
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766897034; cv=none; b=MsgRFOqpk+0l6CMYjjmw0d2Ka/PVma3Ld50ePcalqTyF/xDFE3rTVXL7cHOCJeko9BcMGt39Iet4HkfDzdpNSTzrhf5N1IhOps1cgLwzmF9/0KXMdX9HHIYJscwNErkLFx6aWgBmFJTjNloYiHmjaBFICp2QN5mu6AmmoUosZn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766897034; c=relaxed/simple;
	bh=4CxhUxUSNq2T30KINB059TMvCWXPqwdw8tsAcmgZ4dI=;
	h=To:Subject:From:Message-Id:Date; b=qZJr8kh89fzWu4sta6xcQJjoO7uLWHElkYQjYIG01UobuUr4GgkqeXE4fPBYyDWXtJupUM6EDkCw8GrD3lRg0bGLIt7y8pwtVPo7xRlOncXPQwqclKbKyTOIrOPcjlvmlygwznxzEuC6w2DK9knQY2cLf9Ejmcql6g3bsjFKr+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkz56lNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkz56lNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5788C116D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766897033;
	bh=4CxhUxUSNq2T30KINB059TMvCWXPqwdw8tsAcmgZ4dI=;
	h=To:Subject:From:Date:From;
	b=mkz56lNkz1EuIoFfMaEJkdaP6f4np1N50edKPl4iN+eEP+IfRSffqGdwMj8rTh00M
	 4IYU7O22oy/j+r8wKNPcqhMEu8Y+e1nlMzsln7yKhDkMukCNTw/I1ptWS6wKpnuSTC
	 S+034UJ5hbEUULB7IpUw5qZ+XD/cDvNuh4TZzO+G6d3GrSEax8GkD5Xotay8xpxELB
	 xXKCHNDDBiZ2CIZ6D8w7sRfHnFfhkFlc9K64U0+2smoYWGp0o22NmG6OLKARaQTe63
	 buS0Y+Mbo1TjUJ+58uIvqzpi2PCHnrYsZGF966E8wCsc9JbOdF3EgvMOAVgv4wPNdi
	 IuVeoKG0bXSjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2853E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689703360.7460.12333901494585625881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005d1aea742cc9a0e66e60331a39dd25e402f5616182a225cc28131403416892
Date: Sun, 28 Dec 2025 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766897033
