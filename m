Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2122E62D4
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762348794; cv=none; b=eSSDXzGlkfE43ZzYumOazhrHGMEFxA8QRpjRzfyMxzOi8ibEqOFKN1Pll0ObaQwVHuJVMbW9FypA0OKd8IO65UsZxUZSsbAeF2Uul2mRD/JBgk21rE9VCybAqFT0GTIfCTRTxKjBr+dPVGFClBy8IDeBeH2ePxZC2CCl/11KvAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762348794; c=relaxed/simple;
	bh=o5yVsjZZk3NqVM0qoL4WUpx3UlvITBPax0rj6Hmlizo=;
	h=To:Subject:From:Message-Id:Date; b=KM41cMsNfDxcYQG3KmZpS6WWrAvmIGyhJLJzXhLJ3Xl1WEt8pEdpRubLn/8lwGYHa3pT4ZIfzJrPfG+hJzuVxoXVebQvszoMqiAqoShazMFqS2p+jSfRerq8yIrF3Q13q5/e0pIuGNwZCHVtBHfOPZLrOMmU1JN8iPQ67WC+z18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cw7KgNG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cw7KgNG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E445C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762348793;
	bh=o5yVsjZZk3NqVM0qoL4WUpx3UlvITBPax0rj6Hmlizo=;
	h=To:Subject:From:Date:From;
	b=cw7KgNG+nKNDi4FV9tXwFhUUCRKRzszv0O6YEkU4C9AigF8k+THEIo2HIUGY0+2Ml
	 WZodEQbtMCnwDAiV7Av66UJg74jmYyfJANiqA6rhTuPQeKN6PhJKgEu/OcM4oDI889
	 8mVoQvfLjCAlGVwwqvUYfAwP9yBU5SymIvVLncv7hclfQJO3xlxQpC124DF5WHn79u
	 nu+0Sg+WaXU+v+j9vJ7LvX+P81jKU9d57CQFeON9/gZVhhCOnWhKIFsSiAym8GKfyC
	 9GSNLMUfvpeyXpHh1tt52OYjAeLmSppsHEncL2cWZOHiWbbfPGfENIf1nYpCqppgl5
	 nE+xaRPwfZCxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CA8CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234879358.18237.7937180138529566466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f6b501e79f4f2e888d1224f3ee4b6c89928ce0b21fa80aac34ee3ec3f5cf65
Date: Wed, 05 Nov 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762348793
