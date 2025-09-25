Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1306D32128D
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758836395; cv=none; b=NeNqQ19nD6yM/ucG5l/vzCF1OqPRlbLClkKBAEUSP0UPeK9JKqiJ3lJ1utQ2IjNFVxgjiyhFwG/ICFmzH1R4/uRicqADy7fVz/Tx73ErrSPKjgx9J9ElBpkRtw2ywqtVpKIf+KSxTiFsPMh6RPXsD1uOo7BsIdh/r5FEj9BKvEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758836395; c=relaxed/simple;
	bh=1+EjiwS4/XWgzIL/iM3c/dc9uxqyXNQDiRcqGvGHZ5g=;
	h=To:Subject:From:Message-Id:Date; b=u0U+5tLQ6mAvpchA8WRCMBFCDMfVWbiu6T94wRg5VtlZ00l3/zLZME6LeAXhe+zU/cbBZFxUlbm2Hy+9QsI5q8L7fZ7gn+xWyBSF4Px4XRR77wgpVhUrAgPf0FBZXfKLs0FNbrQ7Yl4cM+wKo3gHNjfIThwGApBfyKeXAadCz1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkxGYpM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkxGYpM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0686C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758836393;
	bh=1+EjiwS4/XWgzIL/iM3c/dc9uxqyXNQDiRcqGvGHZ5g=;
	h=To:Subject:From:Date:From;
	b=qkxGYpM15eHCHmtg1I+fMAvN2zQKk6WJ3xx8POiQu9WAw2DU4TVUBfeRqzx3AgrFE
	 KYDBFZxj6bI4L/ZzqcE9Bbq8wZtiNnKeJur3h+TRGPyneXz13+BYZhGrDXGKIe07/u
	 CZMydlzz/takIdwTJUIYX+O8UM5PgMWKfnkxEgYPfrF3f6gOOrkE+NtfQ6I/bQ3QAS
	 ftkczhNTec4umkgr4Ccrb5ZBa29YXfDnNm4B77UEksWPboTFu5wfxUjJa4d1K+B833
	 4wy7TSR/DoM4MEzHyHVWVePSdoPOVc+Kz8clu1ZoIP3Sl1aLIH+5bDZ18sZXTRTAx7
	 Hfn48f0kO6nFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF03CAC5B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883639357.9936.8018652494461171590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60559d4c54a19e312b8473e33409efa02b8d4e8deea78ba0e9443396323d903a
Date: Thu, 25 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758836393
