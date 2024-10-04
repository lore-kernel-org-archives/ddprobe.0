Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF81231CA2
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728080154; cv=none; b=Pp12Jb5pFj+5GXKIHz9304UM67P0i7W/cQ2/iJDvToTh2CJj+R/Q1Ztr401bR0TVoDQ35gp13wFLiP1a/O/oCUNMOUZOaLqpCSbNt/0ogob05Dh7aPdHpTSj15l6Q08ZgXKCr4EPxAMgIMQcOB7rOu+HTwcGmckSS0diScDP3nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728080154; c=relaxed/simple;
	bh=ZvLsx/LL+zIQIvFlBJrIj7Hg3ZiFx/R9moTq0bb1dqo=;
	h=To:Subject:From:Message-Id:Date; b=amWQCEW9YbZcnlT2TK0+NTCTpAxDYC0IQ022kf5hWj030L4ae2jTXBBxsAJjXmMo9CLJBtklldHSluKYdo8HtJewU4K7rAJUCdx3olht4n/Wza1VFuk76tHTWK3vCd+//2+reOjzuWJJiimmk3f8KyJvCaJfqNgkyzRH332YrWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqMkGHCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqMkGHCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72E3C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728080153;
	bh=ZvLsx/LL+zIQIvFlBJrIj7Hg3ZiFx/R9moTq0bb1dqo=;
	h=To:Subject:From:Date:From;
	b=FqMkGHCBZWrktPCFf2rOgK0oKk+t+SB7nDf41AZskVT1wLjNFmH5Mv7X2N1vshrOq
	 GwaOBEiCLSTcJ9slc6pLeyFMdVfKZUF7If9m9Knk4N/xcIPTogNUU6ehuvfJZBzENG
	 dyvbp70QbJL8GYWA89jE98flQB42ZeUmtTqWzM4EmOb3UUyh0MzTc55odJEvhFM1+9
	 xwqVE8kJ+uPa4P32nTwocYW79PXOwaYq7/0MVDA8bBKByyRBTpljRid+6GmPFL8gFB
	 TlWqK9UG/JKgQG6X1vZzvIok45gBs0ehwrM59BRbAYL/sjojBF+RSeq1ccvmbmMJMh
	 0XrLbGWBB4b+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973C9CF8860
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172808015360.18954.1717214063983303963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a68740fe3b77db61ced831053aaaaf267f0f09373ae8890f510bcf6c00b243e
Date: Fri, 04 Oct 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728080153
