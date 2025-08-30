Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262C316DC28
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756514394; cv=none; b=hkTNg5S25Ej/BXAOaQU4/zxI8B3JgKE/YfWmt1tBfW+IgFGEGtrJOb/f6b6qFk+8SnFNOHiDwrf2tQ+6LMgzkKVGFr3yUvvy8u3GHFBRvsDg4qdH4lNpQbRJmg2HbnHPOPg342DbDFANwXs5w8zt/wujtQvCgTjTi6KBBLlSyCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756514394; c=relaxed/simple;
	bh=Wi5dMmZkT5LjwSQ5PU5oCSDt8qD9ja0OlMU5oIny3hc=;
	h=To:Subject:From:Message-Id:Date; b=phi75WH1+2CBHEfRMPnsqFFFCDcKNkWe9qztCfXDmau4l9MAzMQJ7PuORN34dRqZfqYnjQB9ATUS9Quvb0vRCk1O0FJoz9+sEqWeTWX36Laz/PrVs3aj6ppsu8rbswV2exsgLEWywWgvpAL04O210xVX+0gzyvBgMXik83s8asE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6xrdWbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6xrdWbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7495C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756514393;
	bh=Wi5dMmZkT5LjwSQ5PU5oCSDt8qD9ja0OlMU5oIny3hc=;
	h=To:Subject:From:Date:From;
	b=m6xrdWbQeKaUfw/2cDcpHCnDRkjxJ5PfCpvv9Gi9Jn9MPWS2Lg4oUnxf5ZlObk+9P
	 ZDDikqH4RWtGs24CRmMJE2qeshrWDLiE9f94cPmB5CfFy55w5fn5GlVGbld3x03+Ao
	 ilBwUFzVEzvj17rLih+0w/xEjKPnHggj8ovVvZqCFUqgWZsqmKMN00SVa11KVTBL5A
	 CGgK0OWruN9JdIzaEHECRZXQvBLS9Zc7emF6AA8uMBLolBU780bnDjYOe3u1eMceJt
	 yeQhjP7yvnNknYILfteZx3RcRaE4YrfgeSBe2Rv6/dpi/5/su77crPp8eKUg7IkDrt
	 q1nupHxDNnH4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970F9CA0FF9
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651439358.17916.10803331970527765947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7445b545ccd0a448e33fc74b11d05fddbbb6e4871e3831ecb3d10ccdc60e96
Date: Sat, 30 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756514393
