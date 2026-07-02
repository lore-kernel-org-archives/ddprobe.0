Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C930335564
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783025314; cv=none; b=AfmEVOAHA4vH7pWwRbMN1UHu6CeFakLovacZRQn/s14f/0KaVz7XB4deUR5nJA9hkT3YX51ZXV0KDsm92oC96gHivw2cYtAqovMkWmyWhj7yOqFQTapT4FOukXVHTYkmJXAtIwMdne7QzhNkURoNomHEXwHojCPVWeTLnCOlXgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783025314; c=relaxed/simple;
	bh=M6B/I4xnJBjCZe4TcicaR52u6eQQWrDhEdh7QzIAUGQ=;
	h=To:Subject:From:Message-Id:Date; b=cr2BdNJM7Ppl5Sz05hFBhtGbPr5WJZwIRJA9iBSpHpzSQ3FaYmpXSWOToxl5y29NwCBb84LCQtMXu2QvE3cs7p2rYinhoX+IgysHdfWDExyOIboB+Tm7GToJO//n53+tTTxn5AE88SxD/QuEzYWqd+Vdz0kvAGxTBj1xBBf5J9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbTsZ1bU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbTsZ1bU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE5DC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783025313;
	bh=M6B/I4xnJBjCZe4TcicaR52u6eQQWrDhEdh7QzIAUGQ=;
	h=To:Subject:From:Date:From;
	b=BbTsZ1bUlxLj6kjDTDuynTW1qQNuVahdvQSB9XRvnT9rg+eR8fEyH87fYvg5NLR8X
	 Yq0fGAZ6mBwOKVEelIf3D0pb6CdxAPITF0J8vWEIXLgTqxk0nKnAB26LDF3PeVJlAl
	 j4JcyPvGOsbRiq1vqe6jzsy++Wr3Ydxh2BQDVh6XylPm0aQDB3UZ2RrTpu28P76V0V
	 WsjQTgLgmmP/wWT02k6l8Y2xkO9HVMa9q5Saju7QlfuCw5VbF9PREznhp/2hFAaxID
	 GbBVTU46kmiw9MsZfeZgeD867mD38jYZs5Dbwo2YACyDjEKlXLXJ06SP12imvHsUFX
	 IHa4x4pVZQG6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DAFC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302531368.14188.17604154142277445569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7b4437cf24a0e31d867883a5ddae68d39103f828ffb5e4749b7ad1a99c8d70
Date: Thu, 02 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783025313
