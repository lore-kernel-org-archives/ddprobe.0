Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445688C1E
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735365354; cv=none; b=CcwRrSo3D3AJ5mMcro3NmORIPS+m0Tq1aAwcUdHkxYsfdCcrRBP1sL/B0Q2ySE1k+wEUsigOwf6TGU/EtPIMDhuKtDT/9gCtsiv0l/L0LTCib5Lc7knJH8/QycwGrOtC0GKM2U3iVBX8bcy6/HrGM1/SThvtoxDLfdi0NghE7jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735365354; c=relaxed/simple;
	bh=lhRcnj4CN9zaeiQqUfvkAA4DDQokQV0GOFU1BCzMcWw=;
	h=To:Subject:From:Message-Id:Date; b=iSU0yxRztWjQ2u8aztibQTRsVyCFsXdg/IQ6PxkAnp2Yn++fMB1JdB7f5L/aTJNZexxL+PTAkp5QiGiRHk5sskiPohoKygYEuppulmnBeoyVMg+uPRN5dObEXXUpnypzBxFQf/B3gc64pvE5PNLv9wUq5pIAqUGA1329ricyQsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXIdIXuZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXIdIXuZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0B5C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735365353;
	bh=lhRcnj4CN9zaeiQqUfvkAA4DDQokQV0GOFU1BCzMcWw=;
	h=To:Subject:From:Date:From;
	b=dXIdIXuZq6JvRSrlU7UUv6vHuQyFTMODvRKNi/+YeE+vN7vv+eL9EgCCMAyr1n9KM
	 ILz0R8iIg2y9tHMCPs6hatXi3MPltWe8YauPX+xEPDVonLNMd+pi7e6ERuyM0b3Gk2
	 A3oxneqsuk39guqvHkv+OkAMfPAMCP9YpMMjmv0keJRvr5+qBZjRoLyrHWcCjLTXza
	 DlIeoUedX0kqcKd3DNnVQMXR9OZNQYXmxmDcxeuq1N1Aj23mlyHEThUYEDl10EI3Uj
	 ieMYntetxSHOpUCoxqNDEm+TCZCOcm0x059UWYK/48UGVyjEPUcFXYnVEH49MRWJ1w
	 Lwu20NnCwghmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9981DE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173536535361.3918.5602526687113193286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac29048c2f9eb4afed5c482303bd609bdee7151ff837b11d11997eb9e64aa51a
Date: Sat, 28 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735365353
