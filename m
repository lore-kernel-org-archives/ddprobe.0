Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E7214265
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 16:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717949243; cv=none; b=Pij1/Crvf1SjatQAtH/CCGDy8I+lM25mBFPs80W85RYP9NBoWWi08V2JDJA9gbrVTDI1M67CmXLk2CUC7CJVRNUBdk2sKWTYE+PCvutfXqNAzAq2YTbxg+HiMnS2U03zBAqpwEKAV4Yy1GQF1GI3bvu0DeSOFSrDUYtfPf+gUSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717949243; c=relaxed/simple;
	bh=VE/lzefQ815p5pyuLp3Gk4zfvAKYFiWG7Dv0beMfEG4=;
	h=To:Subject:From:Message-Id:Date; b=POnToN2XGA4rmF5vi424FVPAyD5o95PHNpkS4BkRfIGJ/S75+E/aqyMSm0o/3ydiJbj3OGpp8H+6n2t/+ELDwZQCnW4zxu6mUuZtSOSQPMk6WajcBTukpGISGA6Dn8f4N4E5u9VfCg0JALf1HQUW3EGNzdkxze3ogELOB+OVisE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ic8pgU0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ic8pgU0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08E6C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 16:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717949242;
	bh=VE/lzefQ815p5pyuLp3Gk4zfvAKYFiWG7Dv0beMfEG4=;
	h=To:Subject:From:Date:From;
	b=Ic8pgU0JnSF6xNHZ/DI/kqwh4MyHosIVomqcDG2XvTolTglV8bByJAhW8ZDwvW7qH
	 gTkTD+T8Xwimo0XCBEWzIuzwFxMjpsFJ/LvS1M5LbQRhj/qpbLzPeS5XZXeNRyGhad
	 S+abKbHClxtObTiW0mwpxszkrFNykU/49qTMat1UjQjDhReH5VkGcP6bCnQ+NqQhIj
	 DfpY9cL4QGteLi0eBlcreIJWpnrnr9zDMOitmoDygHfa8b4j+qECT4/x58jPNOroNJ
	 1tPuElxcXA7KW85Cpvjj3C6Mg6xCoicgcxUjWZV5lCZjyIsVnS1Hmgtr17/osrlfO3
	 TCWkAYlhN5Cng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA29AC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 16:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171794924281.401.1333527665869749201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc2912cfbbf08387b0a3848bef8c6136d44ddc4defb933c2e377f3f295d11088
Date: Sun, 09 Jun 2024 16:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717949242
