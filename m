Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDECF207A16
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 10:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741171134; cv=none; b=TQ5F3J8uV8m3b58KhbvgUCvGDTsHhvQE6OJoGXd0R+RL9mmgL9i2/3Rpd+71CXYcc8tz3ACmDwUoDckkVraaFPn+anNxfGjOrLiJSILbze/MqQOkirFQU7iDKlEjDJtPyds5IQUDGwaOx5RgJ/aDEh3797Q0OXw8kf3ctPuWzCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741171134; c=relaxed/simple;
	bh=zkiVfIHbjDvoU+ohz2ATgKxBCT1WdgWdNQ7f5In3zaw=;
	h=To:Subject:From:Message-Id:Date; b=GDesoqFImRWEPndN4u64NzLIs+ps2Oa3YWDoznWuYttQBBx9S1+pIOG+FKiu8FGP8AEQ2YPV9Gjej807bqYDRWq2Vgnh9m/UCJbY4PeJQbE6WRYQD1G34jk+97CZdLs9CRJhl/+Wqa/zQ/rhP48S0rQPL1jB6YIrv9gz9yArWgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVBzqd8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVBzqd8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CD3C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 10:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741171133;
	bh=zkiVfIHbjDvoU+ohz2ATgKxBCT1WdgWdNQ7f5In3zaw=;
	h=To:Subject:From:Date:From;
	b=tVBzqd8w6mkrzY1pVIZ0oa0Ki+XkfJFhrBNC/RMTFZWlr4ubwSu1UIAMcCneroba3
	 CVaIHFnVsaRl6V0FHaeCXMJ+LMyd6APlkKLUfZZPkMu8uNkDVdoixC5IJ27Awnq2ch
	 yxFq9+Re66z1vyiNiHso14OlY+P9WsLxfUgStRi67Pc3ccp+WTgS8LFE2m9B4n0j1R
	 2Ceo80CpN49EiXoCLtr7ydC+1RZNobtHetbmUMxodkLM26Y2ZIVUI8bW1X4AnGnipE
	 +FpUkeiAQqIryfaHc6QbhkJ35kfHqLESHu7eWzdwuv15W67THeP0zZX9H+fLwVOq9N
	 Ong9e5ZenTBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A82EC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 10:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174117113362.19393.14964729884677696391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba66e150480cdeeac532a1b429bbc573b0268ca05424cfff8db132e84d3573a2
Date: Wed, 05 Mar 2025 10:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741171133
