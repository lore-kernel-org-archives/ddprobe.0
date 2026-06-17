Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE8531715F
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781718994; cv=none; b=uOaDW0ye8eZ88CJpsG2M1KZutVB812fjFq6NTyTx3RKTjLWSkdXNzCpT8yNZzlQeLeCxqZlTKpAx3ajm2lr8kZwhd/x0aM2sj/nw+BoPD35VnQgiE73XPOM2kJBba3t+8TSuJsMtdYyqlHhgyAnkt3iT3S62MfGXUFo3CCJdCYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781718994; c=relaxed/simple;
	bh=5hW6Ma3D2xbV/7dhbGsyRRPsyt1yTs9SsV9t55/WuNc=;
	h=To:Subject:From:Message-Id:Date; b=t20zgfHGiViCUpekKSAEFKfcBOkl5bFCyShkDZcQ+HWxIcJtyRvsEK/IOfyik0m1AWGg+wZQNB1pR7JwWomTehymzVxxrZnWTv4KL61PegcPmCYzA3Fy7ImtmsuqrVaPM1ooKUDKbz68rtxSxGlafM6ZHjkJJbvqKCBPrjzaQ9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCtRobMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCtRobMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1362C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781718993;
	bh=5hW6Ma3D2xbV/7dhbGsyRRPsyt1yTs9SsV9t55/WuNc=;
	h=To:Subject:From:Date:From;
	b=XCtRobMQL+sMkwXwsbZgHbxN/JmejPpjBs9lstNapEctCKQio2WojG9IOdWrvSS87
	 14OmZ76DuBT4GV02CuLmUz2RRs4LkLlZwqzSa1IZNGdnKgHRUvkYdp97IubFMrXaFv
	 P3XEh6AcZue4fA0jI78z/v02JBw6JIytcPfc2N98QLDtzsNDHL/DE327UvDC56XyZH
	 fqh1oQYGxo4qn4xGXoaGT05mWy4fxuqMw4LzaVKyp05XzOoNsSkL3QaSpEBLxgEpXA
	 Dq+rMoIS/C+jXzl5Ul86+XwlbPae18naswu9iuTaQgwrb6r6flCdeyGwdHPN72Hmhf
	 g7DhWvXO7WHGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D63CD98F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 17:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171899372.10624.15900845147475360272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387bb1ecb5ab8f461e1e17902100b625b8bc3be141c54feb2679f62e4567127f
Date: Wed, 17 Jun 2026 17:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781718993
