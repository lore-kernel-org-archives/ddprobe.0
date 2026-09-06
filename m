Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E90C33F5A8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788671434; cv=none; b=dNMvaRWx4FYga38XJCv/yAR0rRWfseBqPgZUS3HJ32tqQNZPM2oDv7QCCI+xqdrcI6gu4V3EUl2mQMIXGPVHfhvLMKVD1801OtS33KbKHSDk4c8Hp7ooH7YAMk25/YBR5lU2E0BBOLYN9s/YWb1J/TXRt+07mJybuPs8hnO84dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788671434; c=relaxed/simple;
	bh=0kJFMNnXRMv0K5op8iDrhUh/KomTiJ63HXFyDLVfBQQ=;
	h=To:Subject:From:Message-Id:Date; b=Vr5uAk7rVt21AYUYlAoxomYbb8KdskQJBQvMkD1CMmVEyqDxpf0d4x7kKRfXdiZeL9nkJa+EiM9j43Z7OKi1SKfAM2xgFcf3/Q4Rzh9w2Zn+5jscLnNTDkNu23d5mGpTtcLs9CD5CnOq9wpu2CqkEXXlzLeu1Bk6Xu8WwOKm7Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dt3J/yju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dt3J/yju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A25C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788671433;
	bh=0kJFMNnXRMv0K5op8iDrhUh/KomTiJ63HXFyDLVfBQQ=;
	h=To:Subject:From:Date:From;
	b=dt3J/yjuyw0vZc6QtKtAZ3V48n0f0LegpKxB+LS+NQjOlvVITyzKe+Ng+8gj7dUIt
	 unjSpZ3IF+hNfh7dHWUWebtyyxqKceS3lTOEQo/xFGqjH/gsuOBhf/DNSYSlwlWMFc
	 zutAGaJFXrpCuyeSxKfisPKDUec0FmToTXab6xSYeqmomwCd75KDHDvB3oTjc73WWk
	 KdO3jD8oV7o2Bv+bvtdw/FJHsElU8UifdSPfPnfCtpI7GwOO+F2g58dIPovaIF+PoF
	 bwVaLBtfZYo/LPBZ1j5Wb+hGvlX2sB5inFnUrcmtHyVDWPeM36vDhbsUfmvBUpWGQp
	 riRxAX+37AWvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10A5C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867143369.14227.14142458215046073031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 284f3f85db26c6b17c8d857d6f06fd6ff3a1f61ab9074a1cebe390442bb6d5e8
Date: Sun, 06 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788671433
