Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217EB2904
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755306595; cv=none; b=KdjnHpy7qzAekDPVM9Dv2D/8fRfgN7yKV0hzTglrqmhPwuJ2rK638XtXVoG2h/y7GigO5R+WX1AqzfYL232srROoMJggMs7Dib6wXR3OYZbwIU64vuV9VbFD4/5kosNjqQ61TDiQgS+zLWDFy0tPvO2bwV3c+xhxg0mEdTTZER8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755306595; c=relaxed/simple;
	bh=TmGTWi8FzvtwOV8H6zDuMlAfdBCuuGe8Vmt48QSkT/E=;
	h=To:Subject:From:Message-Id:Date; b=VwUR3umhQSnB05HAyu4PjZ61S9IABPeSAD83GcDpMZouo7R1MlWFCkxMkt0eK1IqJ7IxeNMRQl1Dycl8RJosVAw8rzuUrftFgknZOnuRSybFGoaw6G/kmvmm/VxBbpnslPY6Ih6a7ddphtObpXasBV0kRaDb01P3A5DeL17GZt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdvOScn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdvOScn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD7AC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755306593;
	bh=TmGTWi8FzvtwOV8H6zDuMlAfdBCuuGe8Vmt48QSkT/E=;
	h=To:Subject:From:Date:From;
	b=PdvOScn1KQSv6fHcvPczSFai9dC2PNmDYmuzWdlrq0qi64nfvLx16XVWoXMLySLE3
	 9VgQOkYWHyb7kl3cxK/vbOfZqamfPQdHFrT7gn2cCz9MJCfBMcTOheTTSu/MXlurTT
	 KL63rR3T1KgnK7+ooH79SBDlXh8QlSzRsv3sp7+Z7+/K8Ynrk5XKKeO8+a2Cl20hHC
	 XMDQvf5gvHkdTgJ2BY+c48Xo8ry9XW5peFzd9mSC1MN5hAF8HU0WlLApvp2JnQ0KY9
	 pFcPYN/sGRBGw8FmlPv2+2AK5oetaraQSCMwuCCqonmCJSYMERnFd7oiXw3rcyiK7q
	 vikxw3ERyNK3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB9CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530659357.15674.13398531849412399347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 065f8ecfbc214a0109710c515e3d0d596cf7b3f024cc13753396b2edec37d334
Date: Sat, 16 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755306593
