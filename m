Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D97F4E7
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 20:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716408803; cv=none; b=A7eXtr7nvA2kYZODNtwBQkNeqJtXwtcG88RIpchiBQ1IGQRlYlM8sriSfKFiWVFwS3jsjtMnVX+VqKSrVj27r1JlJR1gHew8POgP/kxEeBjmmjIsGDzvcuYw8Dl/2NGLiz5dA3yDN004xBcWFR8dZVbncscK4Dc3fsRINlyYMjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716408803; c=relaxed/simple;
	bh=RVDBFFd5DoxVPFFAXWp7mbg8QnzXF3GXrsIa/B/v+kI=;
	h=To:Subject:From:Message-Id:Date; b=B4yZbppMHBTmbw0BH/cGo+2jUD1lM4g+QrYVIAyrSBllRisoUqHFIRaKC42A6/2wp0carJM2bTBXxENpziO22HehAJA1aPSkx/WTaZVQRcwWane5sXyEiqlJdcz00XQKag4YYG5MlxTML/aAWFJQnkPTFSbd6hiXcF8IuJSUmSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVO5Gsns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVO5Gsns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D755CC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 20:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716408802;
	bh=RVDBFFd5DoxVPFFAXWp7mbg8QnzXF3GXrsIa/B/v+kI=;
	h=To:Subject:From:Date:From;
	b=CVO5GsnsJPdeuxajWiYL07F7gMgffMN5yyaOnEqUG3MbAYgWlfoE+sUh1oKotlGTg
	 nSN8MpqYS6YLW2c/yLgiVeqeJvuDkMmp2HFbPVDHj08Pw+ameFu4Ky5MGlHc2FOukz
	 dQVvYgsACT1Js36VKOEwOgu4FFAk55i0R7WWEZY2eZKQsrNErDj2SsCGi4sYCsSFSW
	 f8EGAOHYdCJy3jxwo7smmCK+mTid0el93P8g1Jhz4XLe+/Kn4kJ9P7TGLaCJFdki1E
	 iSDIOKxfCEZEWHPiiRtmm0iqTxUVCRfwIK+crrEMCjpQYpkDYqFvqbVySmsQuwSERd
	 m9PEz3G5vSCyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A40C25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 20:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171640880278.27084.2662398529600243470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9462b72ba8d50f3c5bdb8b9758d26681a80581b221bd3a2bd81a99aa9a714829
Date: Wed, 22 May 2024 20:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716408802
