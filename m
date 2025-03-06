Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5295271750
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 02:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741229935; cv=none; b=Zwa9T2gyj3icFeaGYyuJklp12WpDy03gjOXRBI53XZx+dFh1tXMwEQGEaAQnfMp0rmuYDU34gFtaiI1rN9dppYSf8jw/chzas/LjxCO651cDBe9q4iGxLAQGLs53dc5Fp5nCMiMI0wy452eGhn3uhwPtjqsHkp8VksG8pHogegw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741229935; c=relaxed/simple;
	bh=kflWJxO9OVIcEr7IRX+JKGS7ZEbtAgNKpP1NkbJuRtw=;
	h=To:Subject:From:Message-Id:Date; b=ax0vYisO1RsMvRegNwQmcXosJlbL3KY6Z40YAtXjGbu4N42Er5rvR0q+yELqIFxHsApqvnbOMtf75MGh2Y98XjjKubi9YdJ+eYcfOMDZogollnEMMVo8bknXOgT5ejxUcPV99UDF4FgWKLUDOOAmKdIVdzRVH3yiKhsRC2UEAYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRW0KiBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRW0KiBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70EDC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 02:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741229933;
	bh=kflWJxO9OVIcEr7IRX+JKGS7ZEbtAgNKpP1NkbJuRtw=;
	h=To:Subject:From:Date:From;
	b=cRW0KiByPLpV68V3TnM5TW/e3uFDsmrFKGGG7dzBK77F7UbVyPDYrUOLGrsmhy2Gl
	 znE7K0jZfQbyRedjSkOzUDc84rxfj7lh9wscdCOsiUu2wjjgXowF3CFIeNZT39aCzj
	 Z5f0UjtN36xgCqLcBfid7tswpb7ixAZ6wc8wdLFk9FUO3rKskmP/cIQfGouXv/V4Mh
	 plwUhBZi/by/Wr3rquRSVstZa3PEAr5KkR+vuAH50dYqcio/rYvDUZE3Yly9kgAI7p
	 spfeKthKgEJ7UEdatJ/6N5G9CusBDUqizRceQxO8hnAS4nEBBQz3FdAD8T3tfh2TMQ
	 HyKSrJxXiuORg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF10C19F32
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 02:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174122993361.9326.6050821550275502790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d04e55221c40d44dbfd3cbb921aa77a8857afe06157620e48b4eb032f1860c38
Date: Thu, 06 Mar 2025 02:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741229933
