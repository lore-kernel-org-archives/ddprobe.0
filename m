Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6D3310629
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766507034; cv=none; b=FvOi+GSZGh+R71aBIHW+qdrhdYfqzkqfAVXxy1+ILUQp3Z7O1uXf913JGQpSX1cyHAUDkVzDAAp6qcqgnRCOU/iL7M1lhUWU4G2Nz1YHYT/08eNy0mv89qTbxCdpOPJwT1x9Mlk4538+BnRtBchvbqGS05D8p+kofr8oSwGSctA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766507034; c=relaxed/simple;
	bh=N+/SC0dRVSjBJxXQvsvD1pli7Vojh8MyF3WV6Bjkvrs=;
	h=To:Subject:From:Message-Id:Date; b=J40EiqVY+7xKFkv9Ex47taPQqwGfNeLYbuEOpONqXwYWoQ5bMDxlbUK1ff3a+6p6T2TOvSVE421SFFTQ95VavrAwwGB1Yb5KYTLb7oGH0xAunzwQJGj/FkhwdjIDWO4oBjEFqKtcEKn4gxZAYzccPgTGMnKDBaoNYhYK2nrCnKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRZgr3AE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRZgr3AE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F361C116D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766507033;
	bh=N+/SC0dRVSjBJxXQvsvD1pli7Vojh8MyF3WV6Bjkvrs=;
	h=To:Subject:From:Date:From;
	b=kRZgr3AErPfGaptCIBHUmVMMo3u/VZAQIrxKD5h4c5PIQ7LSaNAVa6lxKIOfdvHjs
	 j5VjGcHuUl5SBUx3/g6qW3TGxclUPX9j5KRXJ/FfE5h/0qAYa1VC2w2TLvCPyLW9Ja
	 JfpuiCujoHooi9DvU40btp+orfcCOlWt+vShL0tvmDxRqpAiyXTkxPr5iLVMi5SE/8
	 oa/wOELltXPcC0qMwUI1bVQHEOybyPbhbvhSBeP3bAMO2SGcujr09pggtkLN01KpZ4
	 7qL442w9hTAx8ORz5Qf0uJ17sGwx0QW3XAxzClACsnLfMf6+uYq8OSacnEQQ1TB7rg
	 5K89kVAWMnBfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F982E6F09F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650703358.19422.12237428322373509325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8076cc49c2fd74dd0ccbb954ad8626b8c2ba53fb9874008fc7ca4787e9fb7515
Date: Tue, 23 Dec 2025 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766507033
