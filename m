Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7D0EAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722612954; cv=none; b=rIcXuXflj66Ziy/KjxHC2BfSwK67p9FHXneZ7fLm9rWUfG37ysQoK74n4nJnxJy2jntMnvDW4atsDU+/sf2KogSl6DsMJNREjxMLklx0+XFe2cqMTmcoxSiAI8uS/or3JF8Gc9IO3bhF0zor1OwPIgJCr9C/EWgspofwyUtXiyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722612954; c=relaxed/simple;
	bh=bTqTXcS6gA4LTcBNGGkEFPg49YS9TRW75GsOWNKCWfY=;
	h=To:Subject:From:Message-Id:Date; b=r1KFMcY3lPmgBP0JU0XVcxfA9To/zQgTZ0SxnLLfXSHAXZ+kF4VQdqDK5iNZW/FFjYfKAW/DL7IP3ZuA2lQbOtEytY3nHFw0jOy9LSwdgdi4NMJnN6EA1hnrNsOZkYCx0xNBClbo3S9H4Vi3SqZWfgr2yRXhBfJrWBsJC2xB0+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVdEC0Ip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVdEC0Ip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B5AC4AF0A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722612953;
	bh=bTqTXcS6gA4LTcBNGGkEFPg49YS9TRW75GsOWNKCWfY=;
	h=To:Subject:From:Date:From;
	b=FVdEC0IpFqZIaLtx15vA8ncEJ8z7zFrAdbdcJzXRsdUB75avfcWIp4ewr9DcvfgxY
	 RvUlOUVIVBx5eg2gFbbp7ZSO8C5f9n20+6YatnDTbe5gnKdHYJUorJdPLsHrzOJTRT
	 +KbXVqwzh3hTytdvKqMkMYgCthA1ae++8sZzarZAI8Ei/+gkrYboApMe3KmkONZToj
	 FFPlSKeRrzWwG+u+GrLePnkPrjZgZeZAkil0riRzQRp+7aQWInArVVZv0uEiqWUQkt
	 9gLS0m5UjGNV2AC+XYVOQgNPRmkGBil/9U2gebvthdtCPjQLbVteJf5s2OxM6Ss+SJ
	 JndTrum/daVIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9934EC52D6F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172261295361.18023.7537117858108678485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d187cf559f921c80c0e752f48c0831c7d3a82cf2253d524ff663500c1c0d96c
Date: Fri, 02 Aug 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722612953
