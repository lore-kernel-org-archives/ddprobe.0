Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EEC282F1F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777405654; cv=none; b=E961L8go8qqScQ+4wASeFiZGBXfvrean1exUNWhCCNLqbsZ6CkEXak+2BNlIg+V2N/0ZTMmGrEeoQ/fZzeVmbBp6SKec/ybGrSQ9m+16L5vgC12CakM9DCjMG6ayQP6gH89x/9e1M7Lytlw0Y9VmNXa/GZP3G2hJqNUV6qcHcNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777405654; c=relaxed/simple;
	bh=E5JI+QO3CG4FoDth0y3RFnm+3e0VrDM7uRqID4yHGDw=;
	h=To:Subject:From:Message-Id:Date; b=lqaoKVeCGH42LJ6AevaaNVp5nDayVSOjjhubiRH1diO50rl9FIDQ/Gvb0nTmh5pJvZ/69du5As+EGUavjrcpnEEe+CxTlFKNCnlTjrF9xZ0e0qE4rwMcCtlPlfYxx7dnosOBKNHHGZNgcjmMX8oTnIC0mAQ7E4fOoJnQzcdKoY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWU0kD6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWU0kD6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B927FC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777405653;
	bh=E5JI+QO3CG4FoDth0y3RFnm+3e0VrDM7uRqID4yHGDw=;
	h=To:Subject:From:Date:From;
	b=tWU0kD6xotHiwq2Ukqjm+v2Oa9ldbgTbo2jnczchytj1UAsP3G7zGYHzo5c7kjBck
	 1HRWRWg4I+Nk2x1HZX02L4sIQS4aNZ8VUD39j8WbYWdMOGIwPACwHrW5NX7DRnMGUc
	 Zga3CrWkEd/B49mTrVSD3Rbfulbzc1IWSYTC7Gl0OIzRYYOY602ogGV61A7EHjNgID
	 1z5NTmNAEOxDohUQ9qZF8cK1uzzokTfJqS8QAyXuN7loubBEf5v/imW1ASbaZxyw8f
	 BqWnHXtzjN5AyiFmF9Yuhp4Kalr2OqRZkLbqKTzKulh+Kecj5oLvprZhzft+57YCVN
	 3NFrt6LzxX+/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EA5FF886D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740565368.12242.15846265281671036628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f59c836f864c6ee24c646d05b99fe2a77600960eb642cdfe4f63a6e3ca81a2
Date: Tue, 28 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777405653
