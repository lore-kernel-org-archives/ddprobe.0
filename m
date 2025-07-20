Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3213A134CF
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753043394; cv=none; b=HmDW+x13N22XvmxGmGEDi3h00sg1rYkHGgCJ+WtfmWKQHLhk2q897Se8gk+TyTTuv+OvqbAOVVbQhc/OjU+wTfk90tzzsyuiy9v3d1rDgxlZQaX69t+O/gTzPbnIMYBAqlVsDSGLeaJzGqwIT7l7hdLNmQw/jedYSbCRnW5D/iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753043394; c=relaxed/simple;
	bh=m4c3OCGOCWEz1pvrjbzK0Xr/TCSqtRirzaCXORU+75s=;
	h=To:Subject:From:Message-Id:Date; b=aPqCfdGnLL9PhNUANuUPaxwVIIdBuzldHh+IOpsKocjLG+CBXzHsnpOjHiByU7jNkJGY3YTnVGSINypZLT0jyJxbW26F1bPKnTjMAT+a6T0I9uN9/piJI0BybLS1bytjL8wOkCgJFTASZsILt5CWbRSMXiFGPyT2C6m4YscPcZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fptT6xy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fptT6xy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8472C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753043393;
	bh=m4c3OCGOCWEz1pvrjbzK0Xr/TCSqtRirzaCXORU+75s=;
	h=To:Subject:From:Date:From;
	b=fptT6xy3E4FOgR5tEvm5srwzTf0CJXNZTQdbBRDVfMnd7KOYa2CBWSp1qmeE9mxL0
	 knGA1n6j1eUZUQJlmFIOeA4Pc2W+fzXhRRxyfTFp7uzjErpYnSMLQ3vT+2oXAxnTP9
	 KeWULxZj6k9Ooggcs3TXmQ8K5wTi3qplRCjfyVuwyegm6UK5MzjSd5fq7xV4soYlu9
	 mFr7L85bMzSBxmMxsfP6outblnFMg0xvLzaVmTcP6LQLCbTxOp9iVBQJ+8QHsYbRzX
	 Ib72E++OwpblVSPZqpQIKDHxHZltNEIIlYV9nYxAmRpfB8izBzyNRgAmQkhehnofZc
	 eZTNDGjYVTxAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9316EC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304339358.8871.10701942951712469036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c488f1aec4894d2d1e31120684e87f59376050ca0b9d9ceef89a19dda2647be0
Date: Sun, 20 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753043393
