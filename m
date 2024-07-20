Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB6BC132
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 05:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721454955; cv=none; b=RnBZ8Wzkk4gLYNS6GlykGOlFrm3x9DGqDgWB+OXRiflSUR2jJz9DRhbZS42sa5xUw6RnykPoY0YRliIpWQrYBaf5nkbDFVhzmcyHAmW2oFLsjzVUX3MaYdxOT1Zm0ixSTVQoyyGW1fXg0ps1TRbCTH+lSspH2P0nBkC2Odapcnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721454955; c=relaxed/simple;
	bh=jyrTy6yTsLcawxw9u9i90eSzO1I75fDFTCvWHXRineY=;
	h=To:Subject:From:Message-Id:Date; b=YuN99wC+tN+MSaJ+ccYm1XxolkwAzpqr87LLcuZOxSJBYRNju9HZtexfRKsL9TBV2u02KoNQEwahRlX2BnuFRseqMTT8vNxeD8P/5TTql+HNNsSkKdekXHoy6s0eboFOg39nvD/ycU9N36uaNgkreazAZcmIxdbUWQZCDuwXVVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwYhnDQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwYhnDQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E84C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721454954;
	bh=jyrTy6yTsLcawxw9u9i90eSzO1I75fDFTCvWHXRineY=;
	h=To:Subject:From:Date:From;
	b=IwYhnDQ2v4VmoeiJ7ynsDrWPtCU/0uMvcJF+d/Hd0PZbtBTKqLYk7ZZhPJ6TETdiO
	 DjbfSZs3nX0wJ1ASrF0glykzdyWYM/TqZotyYDrmUn9hs01DUJoTqVrVsQrbVVoPLh
	 /w0xXvIpONO/+mQCd11TUHzQSisDk/GkWTc3cBCiCFyuRCK8inxCSv0+2d5nZW14zP
	 Z2d750GbrOZp0nLnzZskAwFafUpWTHdjeknJFCzqA1eI5d9x0SBLdMImbCIZv3B/uG
	 b19GfV6ert4yFyxhro/Z8INg+d/CXzgwdNTVkZEv3wnwxvL1k1i9PFchDWkoBdN/6F
	 HxnxaYf9S3yag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3ABFC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172145495364.14104.5185380459398074979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cce1b5bb3bc42c83d73d0764aa353ba78ac5dea46145ca2243b473f760b321
Date: Sat, 20 Jul 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721454953
