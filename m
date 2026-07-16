Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4865427732
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784208514; cv=none; b=pUVxVTZZ8i0uD1qnbmY1t+FBf7rwamSTT07qXz8ZMtW/xnF83Gp5IfT79x7z8bhvKARzfU8Hb+xa2EUy/yPOFAVpPnk4eQUtDrIItW5v42BC9CDLaR2v/phLny3jJEG9sKl6Lm//Je0cxCJfsz2bE3+R2TGx4rvI4BJRPqnrzmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784208514; c=relaxed/simple;
	bh=aGfbdmd4PCoUhnnjQKak0BBQBgDG6bKq2pZ2GwYLLJE=;
	h=To:Subject:From:Message-Id:Date; b=jyeJBhlCIxmYSqV/nrcf9K/4ad34xmh1Sw4O13BBqFuy6tbkXBJQ+FW/jSmtxRPrQcf5e0fgSAFbGTVaBLOF69DF7K7SP5pCWVvVAiGHNWI31aK0cCSJkY2H/IJxplRHQtRdXIevzNY77Gu3QDro69g8XCqxxM0ZhlWGJUvj0Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdVFfj+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdVFfj+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82E2C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784208513;
	bh=aGfbdmd4PCoUhnnjQKak0BBQBgDG6bKq2pZ2GwYLLJE=;
	h=To:Subject:From:Date:From;
	b=TdVFfj+P+5o4UuFuTd6JXyMpi+3ISYhVcjalXAUuTAReyRuz2WtO39rdVOP1SEAEE
	 qzXKVvWo+QRfIYWa5pCdRwxhrPBaPkzCdUUoPGdfdh5+k5uv33cyniOnD6566ZYmGl
	 T3rlN5QHlS647HDxxAK4x0QB1V1FBaJoowpCUsD6fP1yJoWezQtQXhxcEsNq5b+Ozr
	 sHkLHQ7m9vNH5IlMC5pDV0DhOOlibwFNYErUqEazJTuwNaGb7sb+xJptjU+uGhUIUf
	 LWa+5+4znuOG8D4u74ovQgMl7DgojfX+Gk+F5mSq2AeyBZ7y0lJ6dAQfhFP9i/cO84
	 TI3/N4nRbEXzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77E5C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420851367.17501.8543731087249302885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa681276ffb42cafc16a688f19c0c087f45aeca78db44fb4cb6d6f9490eebc6f
Date: Thu, 16 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784208513
