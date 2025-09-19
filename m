Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184282C11C9
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758264595; cv=none; b=I4N6IBk2juT9O0Ij/F9BnKOayBofFVoGqQ14uKCK6gTmlg1Gp56s4ELUO77FKW6RCTrfS/LTXXtdUJh6I6gmDVABmihIZMhqwOCDGIXIIlyEnrGMCCnjMn2lAjs2N6+vDg9aO36u2a18FvayPBA4TMG1DFE7S14bhVDKQkspLno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758264595; c=relaxed/simple;
	bh=UBlN5WvDFwkqleheLAiZ48glCyjZBbdDJeq5VzKAZRU=;
	h=To:Subject:From:Message-Id:Date; b=C8hvweN16NNFMBpeb2IlJMItVE7tv0AN2RCrB3dNXBcI6ym9WO2upr4iAUYNpRF5Z4OlL/aW/45dPQYC2ablzR6NZV2e4o88s89bAJyXK69MP0COaCf8HLgaHW3K9LWVcn0JYn9Qw11sAtLcCgXS/EX9vfVk/TUlTD+mx0FvzMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxdfqSg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxdfqSg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF701C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758264593;
	bh=UBlN5WvDFwkqleheLAiZ48glCyjZBbdDJeq5VzKAZRU=;
	h=To:Subject:From:Date:From;
	b=OxdfqSg+URByj7xa2rFU6++8jnQ2p4j/t48Xj9fcX6ZDMpE+3vbhca+WifJ0vEamU
	 m/vRgzUzTxfOts1t7kPfDyofDDy77sC27iG1pn43Ukh2zYEwPfBmPjwL2CT28woIGZ
	 isgigzk0ee7iCL6tSVMCkjf5712u6sLq05ameIxwoH8GAqaoc1wpHG16nzBXrOSHsr
	 QhSHeHokH9rYjips8tX7Jo56LGjkE4k8w/wLl3mTCBf7yVi6hnmDU4jhgtAwjaX2cA
	 tDzXYkOdlrK0REbPRwImq16dQy2IZlu87Orlvi9L1t++kIt0+9ckuvdzkYr/V2J2k8
	 p7R4+OIa9V3uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98552CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826459361.9425.17936084027008062314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8a15709d6b64f4980342c250c65aac2cdd2157e6c8fca7094cc4caa84005f1
Date: Fri, 19 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758264593
