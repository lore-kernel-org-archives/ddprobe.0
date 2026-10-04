Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663BE223DFF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791078034; cv=none; b=OZduwPhacr37zTGcTCbSRp5b/5lcDKB8w1t6ObJFVy4+r9GrMYpDNYu+qTAPJWFHAAOCYZwDKf31BEan82xlSWgSBVH6N7o0OiS5GiHHuNNZ9UZjLwcRsMbOdpi0Yx06HFx3aBzj/MYimu0KsRq6BKC1/t00wJTPA2H8Gm0JUxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791078034; c=relaxed/simple;
	bh=ODjRv35iE1q25PRMDIeIIr+EMncmre3cf1XDkLMPhxI=;
	h=To:Subject:From:Message-Id:Date; b=EoWT2z2BI/ehvlm7giGUwp8xRtWAkPbH973q/CDS80zTiGsqPQb7xZ2VMDgFC9Ak2sgYKQ4vJlwB2OhA2+vlFvH3eDPGr73uNglfu9J3vKrMEVBZrI01cFLL6vvJnkDOmAedRET+B5ht0qLGfviHct/rwO2lH44bzL7Rw3Lbf/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2gdRGAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2gdRGAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D779EC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791078033;
	bh=ODjRv35iE1q25PRMDIeIIr+EMncmre3cf1XDkLMPhxI=;
	h=To:Subject:From:Date:From;
	b=i2gdRGAWYW8RMsmfPfT7m63VQiABHf7yuVKjpgsSdPn1gDCUiAr4r2jaleYPWW8+e
	 gWfq3HZJoBR5PBB2q+Ogy/2xXwmtmsro6QHJp9Yv5fwuMysmGCawIhmSyhshdUrmKQ
	 KfSXVJwUzzmb2TlpJb25RmZVyaqjBvnRUFQl7/PXYlWGRXkEZcfc+js3cycZSxoC0z
	 9VVmaK/yOqlhx12mhu59MuDx8qectyWkOKA/qqfH/pgAqAvdixb54kBcQZ5CAkGnN0
	 +0OJgQs0ipzQdgXw9V2AzgcYydXxI6djVelqL5zCmEbke0vK8I1Iw0rkvdcbtQHjyJ
	 7xriAivr9QiqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D08CA5FDD
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107803372.32145.14650105024614719926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16de5e6eab55493369f56e9657381fbf9bf58fb5ce479a3c1e2d692f11a122ce
Date: Sun, 04 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791078033
