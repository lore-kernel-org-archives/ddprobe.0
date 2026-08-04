Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605D443BDD5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785835234; cv=none; b=oXQsc3PlByFLm/CbHhz1EA8Yw+duqY7f51ND8Z5zL4z1b+Z+XGXKl/GnM+MOG2n7tvjcnEFYM7+6A3ElBKMZvsQQQW2XAYQFH4xOuLP4/IYC+51eor1mmbyI5PC8w1TOWqsA0lF3FWIpct77C+Fe5hQvCoxceidxzvFQAKBCAwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785835234; c=relaxed/simple;
	bh=v6qkp+TUIIoujzkp2pJpECjIH/TEiqyDaeJF8jT7opY=;
	h=To:Subject:From:Message-Id:Date; b=PBpnxPIQ1miTfcfn1XuZ+UCkoUOU5bY0Ssb56NVfEPhr1wUtcdnHU79A6qComRJF2GJepxucupdW5OY0PpSisVy/Ojr/SSxCAepdTputq4Cv9Ncv7PL3Lgcki/Hv3rm2FD6Rmg/M9pgi+bac+5hX6P+BZ0QTQB+HWv0TxgEb6BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qm353Kdq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qm353Kdq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0ADCC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785835233;
	bh=v6qkp+TUIIoujzkp2pJpECjIH/TEiqyDaeJF8jT7opY=;
	h=To:Subject:From:Date:From;
	b=qm353KdqqtLZHk4XF5rzt4W3J9PZS909+GbGyh9eDwg/PDp/l81ATpKcNnYTnSmpC
	 WRpObwH/UVXqu4/Ox5dAcyXlSCMwTtdDl2qbG8fdWuIMbT9t+ZrmJw1zvdksEDt72Z
	 pSoALesg1yQseQN2kUmx8RCWiz94SEvnCtX5bPC8omi0vBFkQVtfyahLhqBZNFM5vH
	 zx40Df/kd+XDc1wvKm0yvRGycD/c9rI9nY8U8jjXHE4fzBOzxwvxhPoaKTKtorA4Vp
	 h1v9Fg/2W3KTJ/ELWQSq42WJAv4O92n+YyuBUD2DLBz47PxMOYxVkSvtyn+JjCScsl
	 S0Cto1IpD6dKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA777C55172
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583523373.2599.4287034021661025605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319a62680ec90a5c802380e74b9ac1180da16c75da705d353aeb023076cf6325
Date: Tue, 04 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785835233
