Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692E4208C4
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719688463; cv=none; b=TTnBKppMdMEWZiraMJdTvd69X3UZgEfuGMCIKfT6vNLtMmYagaWVRuyhB1d/tLtyhrc3mnPzHgV7oOn8poJuv3eyAYP+hp1zp5MuF0ajKDY8eaSxnBc52cqXOCDHNDNx4yJOOO4fXtZtL0aEv6FwbiRXCQ5sNZhAa9qKKNYnKWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719688463; c=relaxed/simple;
	bh=xb34PkwDDz4SodMG315R4qmLppQ72X5ogxbwpf1rb8M=;
	h=To:Subject:From:Message-Id:Date; b=hR5sKhpGB7urSm4x/3ubQMeqIezigfCy+Sj/SXgG6wIfXVUZBrC0CRTpsi/6nIlRJBuzlN1uVz6UdanQS2K9PnvtaSvXyqTOlOb25z3MDBrXPj+gNVOowbeKYPzVKgoMLrx0fyUpVbI+acMcPunvo+vGtZ0o8bq73OUiyFS9PCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meGcA+ne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meGcA+ne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8671C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719688462;
	bh=xb34PkwDDz4SodMG315R4qmLppQ72X5ogxbwpf1rb8M=;
	h=To:Subject:From:Date:From;
	b=meGcA+neWNqVXFFE30vmW/vP8APe51Y2QkxEiK50NZj+ufo8Faxrcw1utyIfp53wg
	 fAUY0F9MpkxfVlabvMPb73YpPpk5aetMTEhUKYYMbZn08zzeI2YRR2A5sToyJrPqCP
	 IPgeQTr+oP9orNpwff4JmlrMEgkMz9tuYSkieySLuv/4nbjKVTMsFcQEPGpzjHE4AC
	 FVLL3gCMUE0oqeWxX+5hWgNwCKnChaRRjhfki1wAR40x+US/qRgtZHnDgnB5FTHXzy
	 YVBHoM7YFn6uTw3b2ooBIYTHA8XEaNrh/4oQ9QTvZL9dqsEtCZM2tTqvYqtLVR35h9
	 WM3GROKoOH3Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D27C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968846278.9234.9670287222127783561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae30544efbd833d3f89a17d314d9cdd56583ea4861ea4f742c4b1d9f0941c3ac
Date: Sat, 29 Jun 2024 19:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719688462
