Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F6A3A1E6F
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766808834; cv=none; b=ROvp14bPT2FB4NdxM4gyEsBsNXEsnOheoyS5SBl2d5yWcx2BAo4Gqo+HsJ7InGKIvkzKdflC6P35zMB8zzRxd+Gt83MmZMcV+zBD7IAzU8fhJ4saSve67FTb7A9wyQm+gICnZMi5KseBxg3aKFsX9nmr9f2gX0fGe+M7uau0+WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766808834; c=relaxed/simple;
	bh=tvJRfOlT2zOUjAy7ClJ1SM20XaDmIq+vwvZN338CEVM=;
	h=To:Subject:From:Message-Id:Date; b=h4BjgTCJcBcFO2tA5U44ZKI1thIIw1yHzofl3SO2LWTC29W51uZQaeL5H8znHvwkf6fcACtC+fNvKzQzrTacbWDW0j6Avp6jekV/mtN+ZrMRepxGa+eoFfSG7+zH5D6/3NWI9qadsArmRSFG7EgbRcUbOjC9QexmL2VetCbzlEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRaHsddb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRaHsddb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFFEC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766808833;
	bh=tvJRfOlT2zOUjAy7ClJ1SM20XaDmIq+vwvZN338CEVM=;
	h=To:Subject:From:Date:From;
	b=mRaHsddb6dDhZMqPbcAV/gfuYL50L8+A0zysHGgCMjNnW8cCiAgk34h1E1MSa0Zz8
	 /RRtQcEVkZtGNDTxoPVE2gxoB68+6kXNhvwWCk6p6o1eYLIvs4nuK5EYasaLTna/H4
	 UY6CBri7inga5AeIzuaNszw1F9M16Y2SaNY2a2CjCVcvbx5fgwMThYeQLfZwu9Mg8x
	 56Nja68QAX4bxI/a/1cYpIQWmWUN9AorWVjUSg6yy3T4l9fSGXcdbbFLXd5N86VZSp
	 jY45VxGJsyE2A2SnE6FFEL9CrylD/0/iqm1KeoschX2dBxYBGY4RTrHUU1NBlvgQ0G
	 TbZNhwwYW15kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94821E6B279
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680883358.27593.17729736229911186465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2dc72f1c34faabdc14c2bbb338af8dd04b5b6cbb60143bffa1c6f99e376869
Date: Sat, 27 Dec 2025 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766808833
