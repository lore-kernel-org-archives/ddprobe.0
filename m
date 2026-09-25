Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9331A3B2D00
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790355034; cv=none; b=SGoULBtAF+dv8JXaEusjC0FNa8a+yD9gYLRepFG87qp5cWB01b1pTTCnu8FRc28Q5EFYBPtPOTqzB4K5c6pfG5THXaD/H04nX6OQXBO8hLRK3w4ajvyKcSju9aCn+YpOR+wzaPAkMN8jzpuzUvoYhkiMR2wlv1IgmZcIgj8Nh+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790355034; c=relaxed/simple;
	bh=WXg2FHpB11S0Uq8N7X4Yx5/2OU03TU/DNedjMUgN+BM=;
	h=To:Subject:From:Message-Id:Date; b=V5lqKHNdOSfWFdtYcEgeCPWS5lGNmu/o//k0oMiR+Y0RWvsokK4pZ8jqs9d7+VfV1cSIbwMYbq2FsvqiFEv8bSTcMAY/FaTn9IZvX3O+YZ6h9EphFy/bXVubVQTXgvN54Psefl3XwpaZsgS5HwMeJ1Fq6ygjKnFFdzrsQL2ljMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYLOZJ7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYLOZJ7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8ACFC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790355033;
	bh=WXg2FHpB11S0Uq8N7X4Yx5/2OU03TU/DNedjMUgN+BM=;
	h=To:Subject:From:Date:From;
	b=aYLOZJ7aO/fWXMrF3tqhDQgRo09RjlFAw4iPupXVAt+jDjhO5FW2BgRmI5iX6YJWi
	 8WYJM71t9P3U30cwmM49E1qUV6QLm7wI0f8GfkycqTtQgQqCfISc7c+WGj83vcND2I
	 5HdjWRuSLvxwBKdNxUgzrZmGVHPWz5J1MnUkAlvwflZ5+wZb+KI9+T3xu+Ei3R4Wr1
	 ZfHR5ozgJlQKLAsZ1N5Vpry6DrJ1E604c8FmR2t+fi+H7ggWAnvht+vyfEXdEU894w
	 8nPwi3rSza2L1ay/1fRw/LMgpxWeGI/oJMAP9yG/b0BoQXCuuai9MWX0sSTGhNoC5v
	 StFoJwkxLIaoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE533C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035503370.13806.17634823677180678291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b1ade1223ba946af0bd9589795dd9de0b8f16da4cc492935c47737da675eb9
Date: Fri, 25 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790355033
