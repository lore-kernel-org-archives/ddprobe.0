Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59750F9CB
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 01:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718846363; cv=none; b=iINmFbECSmNSB3Q44vliH+ahIvIDDaFTYczBdzt0CcP1CL6V9MDghzkFB0zvoKjWhMIhsVr5pS6eUOGCvs86/upm3nEkEBD5r6jSIBA7IHtNjL4pdqqqr9GQToB9v/edps+mszOdNRofG/fyPdLtYZP8SXCyWjT0p8fBAA2CdQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718846363; c=relaxed/simple;
	bh=QgUlVjqfG7YUvxQUiQPUW3n8Uts0gP2HRmre1FJ2a2A=;
	h=To:Subject:From:Message-Id:Date; b=EMf8CG7CIO6+IjLJauKVV4o/1+xJz+gGV0NkLuMBhPiQlyZjdeKGFovHYwGPiyI49D5iXxcFsSiTqP+qnAdIiLRu6BU2LD17Sd6T0B2uFP607q7BGaFy//WAgTFzyear7cc0vWpF3ZMlUxg5AtXtl96TnYdqBeCuwa7u0FyFCI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiwFRB9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiwFRB9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A53C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 01:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718846362;
	bh=QgUlVjqfG7YUvxQUiQPUW3n8Uts0gP2HRmre1FJ2a2A=;
	h=To:Subject:From:Date:From;
	b=ZiwFRB9Trr6tRCK25vlQLyoBoqBoqqCCBmyVb4OkKomBicBoh/scMkIcl1yiLJm4s
	 kLVIAFConKVsC+5qYSNAi7jRHmRq+O5usqyPMuS2PQIrRQ7bE2IXCI56mCBNAH7rLU
	 kc1PCyksWsPKGFY1icX1L9CItGLXzeHcNhix00Egcl9oacfOnyRwfCuVtGUuI7jGME
	 XmTjK4Ia12N24yn4lEeuBNaAq62WD9koVb+chUpz0s4vREFEOqXPPrIeXxIWkDUY1H
	 DVKGUZUbkiABBJUOBw5FCC8bYSqnmAdFnnXpMsyv9DS4SbgkItyKUVUCdOSCPIrX1J
	 UYfO833oP6qwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB665C2BA1A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 01:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884636282.20808.10414200253088172927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab60313e7c48410a11b6574719ab73d9b961893662c38c9a25e5ded721e52741
Date: Thu, 20 Jun 2024 01:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718846362
