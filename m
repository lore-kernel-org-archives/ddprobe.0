Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2F8202F7E
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763404315; cv=none; b=pYlbEXTJp+rG3jE1fWDm7Zf6wybhu26xR/+3zDTFl4RH2prnYs3R7eIuz/04ylkzL4rOc52RGe+2/XFOd+b10wgTKWYEyPWjURUdeDjzaUXwDSmJGCr0FYLpKYN2nQZSGH0SueKs2nWlMx+zOj9OGwnjz5xoXORGImT436QNYyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763404315; c=relaxed/simple;
	bh=jc/WNdVwGGg6Kw7JzraO1c2IEciTYOJnURmUHYYDaFk=;
	h=To:Subject:From:Message-Id:Date; b=OLvJapFpipPEizuHSjIBz5xTzPZ2W1427WAjmpvdzZWgFHLJGqSt7n/s1LYDMsbftgcjhN+jhtKy+O9iZOKWa2kmZj8iM6KwPGuWCO/XHRQZ61c5XetL0T1VallHvfBP6hEZpdxlziR64bIIUN+lIg5YOu92Swegi+B19RYinrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ualNnuy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ualNnuy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C642BC113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763404313;
	bh=jc/WNdVwGGg6Kw7JzraO1c2IEciTYOJnURmUHYYDaFk=;
	h=To:Subject:From:Date:From;
	b=ualNnuy/tiIn9Maclmy+UIjx5mNhrM0ZCTfgLkQHwLz1r6JGRPJvrMVx02cfREeOG
	 Ect0azf78YvMu5e/X14+fCcyCfeqlk0zvOR2mFXwYU6l0JhRT0LqPKsYly9uqgoxxX
	 4lSj9nW0fvbIofIH96zLlajA5k7ER0LayS/dptI5ZfGUBaFQzdgKE+P3jCZ4RTZ7j/
	 shz2l2iAZj7w/vX5pB1guaceQo3Z50xm3Aj2hzCpjm6mkpwuvYFGQcdnk87GpjQjte
	 BVuO007v8ZGD4KBr/dtPgeP4Rpr7sC3Nk4+30LCvvJHVW2cplRKe+N3EvOA/uTbcvp
	 YAyU71wi9987Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FAFCE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340431358.6615.9185072299288289773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfde3b4f3454085269948d95e633b745276e0b52e8915b3cae6191d8b6615614
Date: Mon, 17 Nov 2025 18:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763404313
