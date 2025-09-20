Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28633748F
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758374395; cv=none; b=tF7ZUdPBwGMoj3fQtXwCtCPJarDix2DkfTMHnWkRpMelEVzwDc3t69RpI6mRJ+d2AkPwxdGZnFQPMAPthEFsD+mW/ds5phXtgJwyjWSXWkLTf86ebeFyRZfx/H+uiqN8AxixALuTNdDIIKOx7AP8/hmDJXk93J3Mmk1lkhsHgdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758374395; c=relaxed/simple;
	bh=8ZFkjV3/m409p34shHpLC/SPc4uVlNMInNUVIf4IWe0=;
	h=To:Subject:From:Message-Id:Date; b=MvohNibFRIulz2ruRTeO6sngPCoKkcdfThbSMpZR8kRIzgh89nks7kZJoq9tOx7UWT4bT7yVJrhwWF0nXWkD3nJ9TkWys4BAFOAmqRa8eTCd6VaRD3rJ/lTG9ZdO0bIHCHxN5uecuLV7d4cTJJDSYmIQLr3OCqIsKYUCA52DT0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCt3DUB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCt3DUB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D3BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758374393;
	bh=8ZFkjV3/m409p34shHpLC/SPc4uVlNMInNUVIf4IWe0=;
	h=To:Subject:From:Date:From;
	b=MCt3DUB8lTnlkQp3vlIpdcTjjklVZzZBiZetjeFf0L9mPKXi8XU6T9eNmA6aoNB4F
	 71XznRyPNGcoGmEnn7mI5n4Z65biVfy7eXh2pgDCGgGqGU/+ddg4VbPOR5CV6KajCz
	 rJjI1vzUG3hherE5jRVxy1wGJbGlu+WqJolBQtKOLBopYOn3kMwgwI4cbrrPT2On/h
	 LUfl1eByl0SUq1DEOsJJGOjW0n368ILcRhcxxVlyeACHZcFHT3LrwjpEFSrcQ0FmNI
	 hFs7wzkXoRUnkWCGCU8G5wzWjw+jMfA2kGpraxf7os6RLAHSwCUNt1lypXDPIVqkPn
	 clJ6mIFP0xVdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9109CCAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837439357.25252.2945417767729318353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205e158b4c277494535abbdc5a41db24780801f268793df011ca52b67041d5d1
Date: Sat, 20 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758374393
