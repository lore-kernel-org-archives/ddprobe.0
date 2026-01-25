Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33726A92E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769308434; cv=none; b=CDiBDjDoj/2wU+4dQV342VDvpbIHLndKhxxIAiuM+LdqE80K2ND2eokd6YxchD+cF+RY90etspSYuesl8Go1UGB6OpivveD6eaBetUjRaiVRg7F7M9/A7CiREENuCMrn9mf//gr7YGBvJjGTske2v98f9wyktSWTUXiulcwcz4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769308434; c=relaxed/simple;
	bh=pRtpbFibKq6+Li73hHfkDPnH/cpOzHS4ieJO/6O27ro=;
	h=To:Subject:From:Message-Id:Date; b=WBVvD5v7PZdXFCXR3wcMpNDKGVspKK+t3633S122fPe7icCGNfslm3ZvBHCFrzZhvsFhLtDPydWI2d80DiSYpLPPQO0DLDcnPruLfn0VF28pji8A7vHIImuWYQR8H9U0yVe1/RyjxsgKqgyz81wVm9yX/v+r66Sb/CFixGNbzks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHAVcxx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHAVcxx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6A2C116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769308433;
	bh=pRtpbFibKq6+Li73hHfkDPnH/cpOzHS4ieJO/6O27ro=;
	h=To:Subject:From:Date:From;
	b=AHAVcxx62z+OnVvNH82RrZK0YjAz5/X4VtZ9AIEMo8a7RsOikV7XKQLUP4ajfvZ0C
	 yymFbtO/XAt2JqHOAtM6XcZK9hAkbtqwQKYWTTXFf4VOGZM0Nw2uoyPm4lSuCYNDHQ
	 oX41Gncjv1WFkfiTjHjjHZwQtktDz7JhlUWf9/3y+yQkLsPeUqNlNqN0sinfTcig8D
	 qUuL+SH5LNAP7987/G85qlTP6AM9ElzVCGWGG+/C7bMPOYhXJSiM11D8kTt+WVDGGH
	 fqQNMWPmrxy0Zd/Kw/TozJDQ6sQS8sYAwBFYTb4yKuSZWAT/61ELeRx3E88+GeqVvt
	 yh50tOy/OsZTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F27E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930843357.9880.7397791400476080078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c87d777051b0cd6603595650deaa35a9342bfa5b696eec69be0e3605576932db
Date: Sun, 25 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769308433
