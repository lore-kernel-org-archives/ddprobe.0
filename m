Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42A03C33
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755142193; cv=none; b=JlIkh78zaMp9GxcMi1R9eYTierYIc0xkzl2fDhu0bnqBCrdaVssJP/P0b4m9K/030BXUbMwFrVgWlsA4GVHpTHeeqzj/3IprlxtLT+0lBMI0i6J2cMKoY+1DRfe2Mgelq4wP/HpWG5G2pClR2pduoojJOUJ/2InBZBixh4PrS9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755142193; c=relaxed/simple;
	bh=KgTaGoRcwBdQCzjeCFhjVmK9V+oQM0jvZRioYvf3rmQ=;
	h=To:Subject:From:Message-Id:Date; b=E1Y/wbDhZdv/7r1Xcjsoj978SjHQBydztTmr5H2RMy55xO57WoC1XUohrmlcY3Kmv2j7orOFEmRxgHw4GA2SJa9t/s5PFB7xDA73A0l/Xu4VqqVaKV1mRVgGKhkjk34YMwVTzESri2gY8UaGGkdUWVCnm40a1gOJLj60UF8x9mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCcYN0Gu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCcYN0Gu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D663C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755142193;
	bh=KgTaGoRcwBdQCzjeCFhjVmK9V+oQM0jvZRioYvf3rmQ=;
	h=To:Subject:From:Date:From;
	b=SCcYN0Gu7EZ15CZKNJ+rbGSoM2e/EkKe0IhssGEy07+g4XPX47lW/BX69EtXjd5Gq
	 ulEKRnKXCRL4GANglW5INJDo3wcgjnNMglTZzTf3rYxdi79BwE4+9QBsDwgsaveTGe
	 Y74xsJhIx8F/U5xLByyPzzqFlLTfWmkgnlfQs7N+H4HdnvS9Hh4944YtCw7dz6YNrF
	 2tVKx7fLr8HGikbZzCNeh27IMgQlk7T0UtVqGEMvc8p+wTBCHY9A0dg0xwsrR56zir
	 Kv+RRPOYcPtzneZY+RCLXHBSdi3YMlxArdrnYS3C9Rp/eKFzfVfAakPwrE11T7ZhzO
	 /coFUKCAn+1jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB01CA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514219357.13782.17021935636421566616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceca61fb88a94493abecd77aadd309104ed315948ffd74ce7ef07b11e7a37b38
Date: Thu, 14 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755142193
