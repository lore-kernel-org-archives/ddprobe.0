Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4673529A2
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748230194; cv=none; b=jMfBirzYESxdLrtmlcEPQrNoiIxp/IC+xK57Pd4/n6Zre9zt4Ay3BCN2UPOGntOHK3xffUKcP54h2C8JA99PcKtA3rb+eW++5DtUMy1xed0EVm/MgwLhDCfLVd0qU7KkY8KZ1eIYAnEVDZ2ubB8Sf00A8eC1Du/NF41A9Sw3yJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748230194; c=relaxed/simple;
	bh=EbvdSzfqrvX96bSarVLnUGcdxqRX0EcB/NHpZUmJuIc=;
	h=To:Subject:From:Message-Id:Date; b=S0x1mkD23JBdG2AtXKHd9UTpPCsGF1qTS710NZ31gTQ8iTybhGiSuAfP+1TGJwkc4w/7J4FeoLR3qtcpYNkwSLJmel3p424NlYNgJbWHXCRHfTJ6lo5Bj+VXcVs+Ul0ZRfjz1ojHT+d9USxNZGfAgVsh8MoFEPZ650OiLZ7liSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jr0uCyXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jr0uCyXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6718C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748230193;
	bh=EbvdSzfqrvX96bSarVLnUGcdxqRX0EcB/NHpZUmJuIc=;
	h=To:Subject:From:Date:From;
	b=jr0uCyXFWTcMYRuCA/AHTKXuEvP1eix52jbsLVKn5/RKOtmY1vm5pWiILf2M0uh5i
	 WfdqnmfQdTh1pRxv7vvcJKjmFu7980iejtmUVadfC//cdsX9zrn5oYvhIIGZZswxjF
	 NCfiT49bWLHFdZ/8CteIzamzSrC3tsmBsHtgIqhSL9RqDaoCtAEkVvN0fSdj2rhAHS
	 vodITwqw+8aEoqwWOVzlicA4e1PxoN2MTu9X9pqMz/c3sc3WEopHPUUETUW23bMeMT
	 nnWCV0n3GFbgN0bL2ug7HImukhCe1zzwNlNueXiBE5OB7NLQ6/4Wh1ln3ja1CHUcP6
	 8sq+jZ1I9yhcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DC4C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823019357.6405.3206509754057224625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a13dafb6cbe8773aae37352f965ebff3ba4403b49e229812e5e073ff0b791fe
Date: Mon, 26 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748230193
