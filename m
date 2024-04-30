Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5555256
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 05:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714454543; cv=none; b=kLuvykSXOOMkEDJcrS24qO/8LoQfUyc315kYd0S5DJf17gGAp38HHsBVAZvyFmUb1EBb0/8zVNedJijh4Wl5Ytni66C2WoEUIjSmrV6kfgFDE2Pz0+5M63BH+M7L6OJ62YQa8qwC99ITmWP0HIYJKzkajMSgth/z9csLR5HYv8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714454543; c=relaxed/simple;
	bh=sPzxvcDPlIjSOeWTIZ0euLGaa/6FjvYylHGMVMx1GfA=;
	h=To:Subject:From:Message-Id:Date; b=Vio2GphiAxNKmhHhJaqFWdRMLptn+KXJgmGaO4/hnNrgIbj5IFE2fqV0DxJlnRDh5TiUwX5Bp2e/YwZuJ1hj6biS8i+Y0nBzR8qr/SpkDWQg2ZVSnACfu32gi7OKXca2V+sPKf9wSe897eYNeGKc696JMiEpVD5ZXw/GEL5jQwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCrHq7Eu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCrHq7Eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED62C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714454542;
	bh=sPzxvcDPlIjSOeWTIZ0euLGaa/6FjvYylHGMVMx1GfA=;
	h=To:Subject:From:Date:From;
	b=YCrHq7Euh4BobD5pl2B1SQLupuagmLrzP2GJWn4YOh6m4P2s8X/NIPSKzIDAAWERK
	 ICtuLIz1ZvYgENMAXsf8f+W9qW+ztks5fIFrqsxQ7bR6kAw+hwhkL8rusR1jFEEihj
	 5QNAchMYH+A4f0DpiGsM4uFY2NzZn0YswaJ8lzwfFaynEbnNWDX9qU43YVk6dCHAXW
	 nu20EWRxHZjB6Lr4MUKjRv7L8G7U2LLzZCg9jcJ39OnSjEeMtFLJK2dXibv9GtTCn5
	 AY8tT2yS21PfcRept1t7EzupgFscqzZOJWAyw9XVL5/iVCfK32C9v/FsSJHZ2pibdJ
	 hYDQPM2UTqZ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEAEC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 05:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171445454276.14040.4213955256520931044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28bcbef69d70be0155b2dfe44ca745f7a59c5018ee8192853bc5a1fa11dec1a6
Date: Tue, 30 Apr 2024 05:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714454542
