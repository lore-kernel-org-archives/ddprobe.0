Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9D231280A
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762249194; cv=none; b=F9kEhaHVNO3CbC1kO5dgkBTjIcfKiAfK20IbkwODdIld8QxWCN+2rGaGo48lPY1FYuLcnQYLnBhAsJZTNASIdwUUQKyp8OqSxl1Gs061oxV9ViSvEg6FYcl61jlPbDp9mXL2l0p8qHlsefMyJhZYBeVlLruOUZo8/jvL0YLvSVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762249194; c=relaxed/simple;
	bh=FXXr7X5rTkrcSq4zU78provH0QVnbkFlk0fUm2n1YIg=;
	h=To:Subject:From:Message-Id:Date; b=T9yrxzsNhVxBL+aRyxnm0/FpMkyYH2rCrDmFCHsQh15YuSrmHh6N6l4DiQhhD61Ifi/QpKMGcEQ3VlwK7vuNVo7lbv8+8F4BvErS2EATZZE270Qtdd+YqqDL/tO1u+xf3Brpg8SdkgE9SWeDx7BRSPGPpDfy+03i2IkjoyXOEsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5Jp5nf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5Jp5nf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4F7C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762249193;
	bh=FXXr7X5rTkrcSq4zU78provH0QVnbkFlk0fUm2n1YIg=;
	h=To:Subject:From:Date:From;
	b=Y5Jp5nf7mHXcXm7qKdeKmP5CIvzxH5OVzjt3gMrJXkqAhb68xLfROvnvmDfCOFtIf
	 1cE811h+nj2ZAuIY6XFAM1C6uJ7x6Rzl1D+Uxuk/aH7sq55L2Hu5cXWO+DHSd32JtJ
	 HB9nAeCqeiNDpml9emvp9nwEF4D6aiBfefWWt6MvXkh9M+TPbaJXRlwXmuoYQtWtft
	 4DlarACv9/80U7f9k0UXuzalvXL9yjk4fgjuHS2/1zVVdPELjmPb5cX1G7+2aozI4a
	 FrlAH3+ox50iFVIwaTmeGHRi7ebfC+chB1Eu8fxuISKuPuku0pXCUwPsJMJ0pA+iV/
	 KimmKRJgvdTEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996FECCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224919361.23979.15187298856195888453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e3bf4337edff51c4e7fb4995d74cb352400aed661a0e834819d94997677c48
Date: Tue, 04 Nov 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762249193
