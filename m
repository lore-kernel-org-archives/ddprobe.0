Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B882DF3D1
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757485195; cv=none; b=Y/Nb5CSelEPybNyHE9PBn9IEPuHcpLvOTrm516eSltzlxd6U6wnrn0SlzWeF6TK4Cv2CIMwauR7mLBc1d4bj9Dil3XPBKGOQ9Ygco2DyCsmLZ+bFaP0cTE95PkIoIYX5ZOulEgdbWqeLvy0erS3rpLAAcn5MtWmjZc+zLYshiVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757485195; c=relaxed/simple;
	bh=uT08MEZCEs07Zd+UOej7dNkA/8pdfB3sCELdBvvtw2g=;
	h=To:Subject:From:Message-Id:Date; b=YFel69Ieqi/VJegSxCj4lIu806124pg6EOV6ysMLMGyo3Jm4kDE/6IA1so8x7InkS8XB5OebVo/HxWuJuwD5kYKLSy1KjElxMgmbYmd/P+NfTQZ4H1ZEOEfWWuMnE5qqEjp83aopPNnR/wuuC8Fx6DkKVC+fZXvY4JkuB7kfm/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRcq8BMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRcq8BMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED2DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757485193;
	bh=uT08MEZCEs07Zd+UOej7dNkA/8pdfB3sCELdBvvtw2g=;
	h=To:Subject:From:Date:From;
	b=ZRcq8BMWvgX4yLMWg2nIktv6pXOPf7S/fwptrmdrQmpLmiFejMRWhU6y+7K0JzYFb
	 nkI8lT7osKaPB8+8Asw5M4XINMpKoSzpiAghVQNKwD/nycQadzQY5NeJIyjQzmZX7B
	 Klx06QrjlMIDJAebbmHz5yI+6EpNM2yeHxjjxM4+W7+3I2RFGJLitJ2+6MHZ6nhEh4
	 eCn7rdMsH3bQclhDTN98E2JekrjVQy6bRsySgY9rg8aw0cWq3ZtChihf/iHoAWc7RO
	 zHHFM8yCFPh8RGRgsaP/T4U6hOhTd/KYr3tvjMZv66brEuvxOhy8DxNMf0MhxOkb/6
	 D/84sbGlNojQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F641CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748519357.25686.2526433486993381118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c279a866f7f26bcf76c817a2baef057fdd373f76c6c6e6d3daeaa08b70e692cd
Date: Wed, 10 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757485193
