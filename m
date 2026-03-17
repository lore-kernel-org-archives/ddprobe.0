Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA943E9F93
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773760494; cv=none; b=M4AHtvrQn8Z9coWaSbsMvLeEtputbGbZlRfFIEjMF64BDqijZCFdDCGC8KQvmLFuP/ffVpO5T18miv/FoxPZ5dWpmXtu6KZBMA21mRls1Q/hyyqyVLQPCv/iBuVbFPdlmFm0Zg8vF09If9EUl2/Cy8xUvl3csCxYI6y6fXRgyjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773760494; c=relaxed/simple;
	bh=GgmH7+kskl9/ltc750iWt87dKbrwFI1OfCKsQSPcUTQ=;
	h=To:Subject:From:Message-Id:Date; b=MEUl8j+2XbOdHKA0UuXV+joyiHa2HHKXfrXTsgPSnXHNfn1Iv8skfqoj4xMf6jBU7XukXZ+AhWSS8KaoVQX5yQFbRl2AEPpGmW1KVGKRfvGE6jqCzpB7JeE9tf4HO9D7UETisWyaoK/66dexLGVVOTOW38RFa3sXLPISDjPeGZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siWOhL9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siWOhL9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1064C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773760493;
	bh=GgmH7+kskl9/ltc750iWt87dKbrwFI1OfCKsQSPcUTQ=;
	h=To:Subject:From:Date:From;
	b=siWOhL9fSdCsUHp8TPYecJzhbFb12Zee6Q7fRYMeUuL3t4igQxituty5LufDj/9A6
	 FZEpkgQQcsyaev9wz8OjAN/G8/9/hetDgsTlTQhg/VnUNZA/sqWXCF2e2VBRMsK+dm
	 K01Kliz3jhyGxzmpW1FHr7YezMWCVY18ftefEJD3j5YN+4/Z6DbejIZwXrDXbg+BsQ
	 TX+juXZXDLSgocE2Ki7x5mTu3HWYM1sDmqYEWohBlH7i++lipFurzv/N++fWievIC9
	 2cEPUbm/+MlMtofpau3MIfbGavrwa/7BvQdHwZ8JdzJD/lwvLBqL++kt2KbmcVsI+s
	 m9edyvMZ75ewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F4FED9E3
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376049359.1130.2308204720141570558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47684d3eee9d4bc30bad1f028a0e0c3970437c2862b2aa17aa05f1e65a2d97c6
Date: Tue, 17 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773760493
