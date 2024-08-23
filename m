Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B004A08
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724393754; cv=none; b=i0nrCWrGez41AP247d6gZ6pQHGPZwHJYzeX4kZJUkNU5Z2Q4jTkOcMpNcX0i/BxRx1OGnBDCC8tb4QtWcboAoboFZpBRVIcyNrSBrPmFpJBx3uu1D0LPLvsAla1TtU35/YWovHmbPi2MSG8Uv5aPjDhnPYBSNFUqxRGE56bFNzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724393754; c=relaxed/simple;
	bh=76eW+CmxQsUmFxnToD/n5KOBMNE94+psn4Fe01D3d1U=;
	h=To:Subject:From:Message-Id:Date; b=SRDQCEhDt7KIaXkRCTbgPIwiyWT7Vb2qvCuOLLCTiziDBXmGjGSHgy5sg9yIf/0CcwUvQvMvXBRfUka/BmajS7C1Gg76KXDtCeS2ODQPAjmmaQR87ikmmPnLkQo1fjhgsjel/1CKuzoMrYsZVEqc/bAK5JHL0ndkQYt1Wnw23yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXuzng9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXuzng9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EB5C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724393753;
	bh=76eW+CmxQsUmFxnToD/n5KOBMNE94+psn4Fe01D3d1U=;
	h=To:Subject:From:Date:From;
	b=tXuzng9QlT47B6I0XAq1NSQBmZbGevUo4d2Ts979nR37sxp4WXEWLTNDrqkgRznSG
	 ioZMSj1vOBXlMwPij6lc3mcNzh3EDfMuyStVa1WzY6u+tXKIHkli3YKklVZpfkwBeg
	 UG68i2gHC4s9fwBBwUKMBfLOHNMvjaQh7c3oHLMT5SLg8o94STV1U6km0M0vulAVlM
	 f8wmYgEMUz47jAGLi6OTU8dKzzJCGvWzQCSymlTXgL58y8QbVxJhpk/yZE5YI/IUKO
	 Wece7mYSiBwG8u1/JXLjtXe5sEW9IcMgVsHmr+xoqob6RMjhxEX747vcVhx9XFp/Va
	 5Xfz7eAYCglJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5DA2C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172439375360.730.16785072447634024587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 571dd4e04797cbc12f944957822d9898a8dd1374f6010a7d6e4860d3380d1e24
Date: Fri, 23 Aug 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724393753
