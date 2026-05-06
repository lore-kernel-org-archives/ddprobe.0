Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BB1329C6B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778106454; cv=none; b=b9oV7qLXFL5Wme5FEb85qMK9QklPwBC2B16HFwKQYIeLAeg/QQVzfBBFMIeLLXVEcT1WZOagks4ZuOR+83MZukdgffXm2TxVpwGDCdWE/iXOK9XVSZk4av8JHl7kw/NuVOLWb9lwGltpwGGSapRsplqjIS+AmsYILW6COhvl/yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778106454; c=relaxed/simple;
	bh=kpN6cnupJi3mWuei1qoPT/fHDhZXL8YuACG7CnfNBvA=;
	h=To:Subject:From:Message-Id:Date; b=dK9KMGAXfA4Uwqp7zHaOdv/g5Q/WaPOdpI9pzPrDSwe/hkwTr2pL7Z4a75zsQlHV6zy4BakV+FLGqO6L85RSN8gkFsbfXCxqe8u2Sqdd7lU2pfaip4Vj7oeZ8NoZfmb2SSePajcsJmQ8Y/oblitr72Y5DFzb3vi6tXDArBVFLzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2uPbn7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2uPbn7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0871C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778106453;
	bh=kpN6cnupJi3mWuei1qoPT/fHDhZXL8YuACG7CnfNBvA=;
	h=To:Subject:From:Date:From;
	b=R2uPbn7vSpayw0OAek4xbqDsSWmxkKhvDuS0VwwO5nqvmWul9nkjnmwvkyGAfYLNX
	 S0awX6LzPFWWm31xadOFGehOXd2/0lJ+6jtVBF31QmNb/aIztnfPWqqSOMbG9RMQZg
	 CE/SD3E9tGQLykkOoxERqo/l06q/phM4c4ik12YLZ+QgZgKFK97J/dPJkoYonZt9VV
	 0dNLJCPwXH3VJt/0h8KhoxaNojAOwIq4YNvBqlHsN4FPk1J4aMOtI98k470HiMXxwp
	 RrqGC9+5XJfc/aojEcCOwniq3Mccu7DOAvG6+AOAZzi71DmGSDph8ATM7xtlpS+A/U
	 67OU/e+fpn9hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29BBCD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810645369.3543.17218277850002613789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98cd05a89ea69429c9035d2980367843a223b6d56d112bcfd5bd429bfc040b2a
Date: Wed, 06 May 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778106453
