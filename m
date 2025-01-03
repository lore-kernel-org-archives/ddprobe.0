Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C39C18A950
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735895754; cv=none; b=Iv6egQwUPVgDmmiUu+cb9gEme8tTzen9SpsXYGfjRt5S1Hozl6yFyHMT3bx/o/EZoB+tbJRtPdS1WTbfgmjixOI+H1RmlDM4kxr1zCNGkLL8lDistPqqQ2WLRuStF62GECUyaY0fshxAzkNPpIdEcLVVDwOctk+2Q4rDmX6oHu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735895754; c=relaxed/simple;
	bh=Ik+X9MXNPim2iZSnQ3xcTjb56dVRfFfkTn2NZenW7Pg=;
	h=To:Subject:From:Message-Id:Date; b=kCE8nV94BM3Kd+pznCSR3lBKi1172n/zg049kpWNS62Dz1sQsiQeDJloZ3n+FfAwL5dnDX4tMpovQd9x+BTxsUeE9tsH7SUyQTVq5Q4J7mx+Vpn0SqyaMNcAyoKVisKqzQcBEDeNfQMVfTn8x9mxsuJCWKouwbiFO++Sui/4nME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHRinxUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHRinxUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD66FC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735895753;
	bh=Ik+X9MXNPim2iZSnQ3xcTjb56dVRfFfkTn2NZenW7Pg=;
	h=To:Subject:From:Date:From;
	b=nHRinxUsdGFooezLHZTIhxELfrR1ohD8cLeJ+fYXuLvSFRuxrXeZWpldX1xB75OLf
	 4/yvgNSfY7LSpZFFWKfDLDtjlF1K27fms5aEZne1OzxQHZ79cfs6Yf5MgHWlc0x0gE
	 73qSBVFrEGUHHhRT9pi4wGhk/nQO1vrBeWbBlQsx833ztYECha0nFNbY/+ns+DzVrQ
	 LAfdHshgH4+md7DhlRyix78utIcTdL2RxSwIYvfZrh2Sv2XgFilW9Eo6JUEr29CqbL
	 DB+nCmgQpeZT6DUHFN/8yBJpyOYmZwV6iLP9qKO78UAxUP6NGqrLj8l4XS6PTOORnm
	 0RISgzz4Mo/fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E64E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173589575367.3223.7525452939979188555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687bb4dcef80c5d914be9dae949df43ac29f86cea659489e28576ded29a5fbcb
Date: Fri, 03 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735895753
