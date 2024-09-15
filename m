Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47901E55B
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726395354; cv=none; b=n93dUDd8wmzoCehYwgmyLarddc3Ky4Y8PxHnmt4uOnuNoLqwR+xpKK6fdXhJ4JdnlIiax7OxEP/MRnRhJKEZJWd63d43PxFRwm7RX71oIJBHhdfu0yyiV4xrNPKKGMMSm3lDAc8FsR5DgRLvITB12kj147pnLYs1nUdpOwM/Ke4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726395354; c=relaxed/simple;
	bh=fCsXU5KiwQv5+XluQrHqsvW1HBUuNalDTNr4RmPV6MI=;
	h=To:Subject:From:Message-Id:Date; b=bWB076W4bBYVueROHOj89SxqGQA6IvAqV7Vh4ky6O1jwb05DECbrhfkkgVGJ7H/OI9rHxWWR4RmhVdKlu2O2zEFgFm8TN5KQ17ws3Ap2AriFEVL/SB43FvDXh2cFsb4teeutjrMrv+ZffLmK1seocYQ8R1eiQd9wVtSPjUtoH50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=comWKtaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="comWKtaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C73C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726395353;
	bh=fCsXU5KiwQv5+XluQrHqsvW1HBUuNalDTNr4RmPV6MI=;
	h=To:Subject:From:Date:From;
	b=comWKtaW8URGRyIOfUVfQ2LW+NMpGSRkPq9mIEnuo4032YJ7bZpy1c46WgxrNIfbL
	 fH11wMOTptfQH8s7sbnr6hzPWhxg0cisd2f73trxsrYbQWFFy9uLijoLQmTsv1/FdY
	 sQLxorgROBOP1sZTXjnMGbXtGoihTbe3+gGhCVt0UI0dFC4wcZzM4i6ZYGEfOlT4ib
	 hrAknHjVtDhTl0FndiWLGL7fhokCiIkdsXTKCxjwmOM0guzN248PZkXSLA8o/cxTF3
	 t2OGicU8fNVN9e9kJE5ryOTNeEXXJVOx0fDz9p+beoxaejEQlbgu2LjBuTwG8Ac9OD
	 IvRNoW19pVbMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA69C35FE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172639535361.19429.2305134362873945344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d22f39aef02c0ca8f16e016937152f37cf5a65316952a1e6c7ed017b722642
Date: Sun, 15 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726395353
