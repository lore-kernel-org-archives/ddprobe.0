Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E18B3FC2
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764492774; cv=none; b=NIm+srIG8IuFbs7u/uLGD8Yj1cCqwdgUGXhlDYbjjgqkLBUQXtO4wgeeITk4W514REqp9xrFUw2dQIc9jnw2QnLEC3+ca1LxsBGsYR+uccXlUMdmC8EHecLAIqS+x5bGt6/wPoiHf7D7X1FCtZ4jnM2q86WHcCBHWTWyfRHTP9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764492774; c=relaxed/simple;
	bh=nBNy8Q0aaQA0m68jOEN/B21IE+yJOHbRU94CODSJxu8=;
	h=To:Subject:From:Message-Id:Date; b=YaYui66UVsqTeJONH7ExMlkNnuoW6u9Y/mr817Lf9TKN4sdbMt+m7i3Z0lB/vsNygb4hv0gDDAocN95Ddhb4ESM8XRHKyP6+DsKPRMy/rCMjLF90e7mHM2mUGY/GWKcELHsNCR58BdnVnKVF09hhZw5Q5Z+01VkJgSdNhMTx9YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7UCqHvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7UCqHvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A7EC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764492773;
	bh=nBNy8Q0aaQA0m68jOEN/B21IE+yJOHbRU94CODSJxu8=;
	h=To:Subject:From:Date:From;
	b=m7UCqHvkM79cMOjTbge1QUudpRaykyBJEYxglsyXqyKyqMWB82eqzbevNFhK4ymlQ
	 Q370KLRbzIjngDI4AOSWvpJE1RvUe2pGfu5fHQr8XDpqdvAp4lHTGZkPxbDrmg/7Ot
	 aVEpZ0anVcH3MvptjgxPc7P/RreHksZIPbQVY5wAcP2GKa2eCED+1IB7BLFePUZHBB
	 ehx9+yqIIC14MAt676gpa2z2M88Porb4gPbi+z2ajMFX56ONEvNvnWCsPQvPd17cNU
	 HD5asxWAHIXHIMeMjaEftFZrmBhQY/F3GonKYnIWJHsJzun4IihGOuxmB9IvKVtDHa
	 DK+cSe2jZ2W6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A03CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449277358.4690.3046281973431323136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc868044445b127c341a6d5d6bcc4cfd2a4e14c26f0918b4355860b3b415e2c4
Date: Sun, 30 Nov 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764492773
