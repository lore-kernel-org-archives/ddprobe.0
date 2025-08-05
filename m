Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3800D25B693
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754435995; cv=none; b=W4Cu425ilX7XTMR1VcShBDd9mtPJxxbOJQ6jZNTHIumONOtxpE2rF1XWqhNiuTNC1vrcbqnDMgpAGA5CzNhFPemfwGUNgDH+swY9Mgukvy9s5ntBYgYgFb8lWJZtAARQxflwPwHXttdBxPubPxUObflZOa+bLTMrQIqjtfaAjbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754435995; c=relaxed/simple;
	bh=ry2bPbR1H7Y+xl2WXPblyl9GIcRbw76TlPgDr8l6FlU=;
	h=To:Subject:From:Message-Id:Date; b=BL/5q19Wfyz2kLwHqnmNe3I2NYBrKLWq+VtF5Oft9gyKFQa9HhFxYwXSnCoMOafcIfPAiVL8a4aLPt7dPoiDxOE8ssROBDFtEo18vzHUNcL7Jsq2HTTBwvMJ/W2XANNjAa1TposbThO//nCjmPkTXXnhCuoO83BgrGHgnbXQtCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTKNLyY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTKNLyY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7712C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754435993;
	bh=ry2bPbR1H7Y+xl2WXPblyl9GIcRbw76TlPgDr8l6FlU=;
	h=To:Subject:From:Date:From;
	b=tTKNLyY8wosDkKCatf0tXugylYZEpMDpdTY8WeIdc9zp5DJLn8FOMZnPhvxmz4Sv6
	 P0tY6yBbORKeyR87PJkehzmmD0L6GPHQm+Nh220SG/iC3K/b9ybR6kYAq8rxUplwo5
	 LfJ96TdHExaPqb+K2X1P5PrLfQo/CG053Bf4EZKz2Qr4PevEzC54TG8ZNvLld2ZcBP
	 Q6XUC/gwdDPP2FQeqF3jxhqAXkYCF0A9Gut6Posgb7kM4P7Baow1sJSvfRRwbv4Tv1
	 T0ZH83FtTXwLZkB4+6dFwDBoGLgWtCT/NRRyGopN+Fj7wq2oSj4+GMID86pEM//lRE
	 EUAJsWzKosZ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CBEC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443599357.12741.17873237509624861330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57dc1329549e471724b8df13c5494eda1eca32e26aaa2845a3c296b8342a0fc2
Date: Tue, 05 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754435993
