Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46659DF72
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792152634; cv=none; b=cYeV6ABoqaYYZpOcKXKpLIL5I7XqsrQzyJkkedM86YDo8xjfDa0awqSFeBSiPxxtwfF5AqtcTRTTogtiSumZIJi2w7bFXHfH20sP6bZ731T5mmdIk0BvaCEPvv45D4udUkk+meB7vN7Xu5eHcSRn7UixfvGYGfOQT70p7hS73vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792152634; c=relaxed/simple;
	bh=W9JiUiWQCNLmAG4NHPElAZJqRf/jheJ2wMsYoJEY1H8=;
	h=To:Subject:From:Message-Id:Date; b=RYjKeVJUorB0HBgfZvCX9dYqvhZNZ548i14pMxaBX/ppks6Tda9UTtNShHEb5fU2KMTdIRjGk65PvS3Qgm2uiNANnZp9Hz7vPJIWOZc8iyRj3wBRP5zDEAhBdXk29cR2HSxNsILNx//Y3xLNalAy8QOLgbGQwgpAZOQ8d1zR1vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcufeIlK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcufeIlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFBCC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792152633;
	bh=W9JiUiWQCNLmAG4NHPElAZJqRf/jheJ2wMsYoJEY1H8=;
	h=To:Subject:From:Date:From;
	b=XcufeIlKo40DeRaTOhGsufZY3TTLUKnRCud+yHSEBjUvza/y0qivKNXSFcu6yYKwt
	 GA4IBeR3okt7Lxz8Ltcvwa87LlAxaDEa9F/s1TglIwx5pIFZZ0Cs0USbMip7Orlfpe
	 yNFuwJ0jRCKAn5z74+oF6bvEebu/0U2teLfptLjIq/yrISvYrCCJlrDuSPg6ZLVG2k
	 AOLZEenh1Q38ZLr2J7oEfw4bVyVcinHQx6XPR9hynG1da5tctoUHMrDdGMUyCmzbDs
	 Zg8avcFHzEL0fa1DIsYqcMH1C/22t8Lxk0Xkq3g3oiuYmdLJ6H1mWDdcde9n3LcBsd
	 DJ2/JfngFrrVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1D6CCA464
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215263368.18232.8017032182360377609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3e49eb68d94b420ca615bcb7d64b05b56227f493abd87cca42dd64888ba2ff
Date: Fri, 16 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792152633
