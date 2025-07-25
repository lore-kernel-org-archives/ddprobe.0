Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E8616B3B7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753409395; cv=none; b=jADR0nihgGXCNGahLGmdpmqHMJbKqOSwpXjCRctv0Sx65FfMo0gNj1ty0/aSMamoCPCCnWbT6xmEySXBhCuhR3Or1Q4/fPcbjzrsBgl6AP5KUx7CSPBFYdAnZwbQ8E8JH7ENekIzonyCLjz5L8ottAeuvjmIliIlRJbdltgPhxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753409395; c=relaxed/simple;
	bh=VRUZXZkp8RyeSvKJyfqCVQrJwodhtuKnOG5Ef7ZjaPw=;
	h=To:Subject:From:Message-Id:Date; b=EAgM7szfi9qSjxeVBiji/Wo0fEsdpOJEsgEBSOkkTo/Oh+Na1CReFvDwx4zQ3X1pLiRHkMazdMtbeZF7lx/iq5pekbxoPz/nXoqLA3KGxhYLj2MaSe/VJb3jcrAoyx2LV+Rfsc2r9HN1RjIS4k7kuNcUoHkUgTgvX929Tum/2DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/sVNtUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/sVNtUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A169CC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753409393;
	bh=VRUZXZkp8RyeSvKJyfqCVQrJwodhtuKnOG5Ef7ZjaPw=;
	h=To:Subject:From:Date:From;
	b=A/sVNtUla2GaQnl+utzLJ/Of7SQNZ/klj7D7cZd0+rqQrfwcO/hXoIUnD5MzXikyG
	 0Vs2HXK9TelEA1Gzdg0rA7TzJASw9lmc6AjlpwTJXFZakOznUNwrGTp8CoC8d/tvwq
	 1RWy7Hxq0k0LbptwnQsZa0mX3bCxc1VS31uMjE3S8LsgqoPmGB7qqIL0Oy8majBZGM
	 tVgaBNH3NWmBTM3PdDOut7y2VknKaKTFVo2W/AyxOltvYgHOlfbEtlNyGumCs1R7qg
	 mX58nHDUugGb1ifydiDGyxI35lk6/K6lvUYqTQUjgt11b6hA3sdb70jEbLCTEVJslv
	 6Qb6kr2Q41ntA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA58C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340939357.24118.12953093163281013804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c30c146bce8ffff2b3e8f2ef2712d43be38b9db9aa234fc9f4c202b52ae418
Date: Fri, 25 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753409393
