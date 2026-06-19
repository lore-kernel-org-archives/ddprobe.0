Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465843002DF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781892994; cv=none; b=KoBM0FTLxiuQUyztp0pS6KM01byqWBBkr2Dqf3xJBimGV1N/AoRwY5oiYoLlWJicQ0ZRdH17anPARw++t/Uly4sxB3uR+0L7NDwrNUA0QpgLnjY6sxXJL4wOcCspSmDOZ/Iej/OH9iWTAE0ipXZA09UCCvJfo/Ecay3dEiK/T+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781892994; c=relaxed/simple;
	bh=TL5p/N97NoII2EWmO5QsVA4iP5/E+nfzhovQ4eph1Wk=;
	h=To:Subject:From:Message-Id:Date; b=gDg31ntd0HZKLyjE6ZuxS9Z1i1FIzko4s+Sm5zgHRgk7866fnEz/uzrNbZdd/sLuUFS77KUQAVsYEi/w7adGIn+Gvbx/s7INtFfV9m7zK9GIWroDNhHCXx02t44Buiv5oofA35jgSD8K36JSzGubulMRmwLLobz2JHBLQPy8/CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPO7BMtb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPO7BMtb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D064DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781892993;
	bh=TL5p/N97NoII2EWmO5QsVA4iP5/E+nfzhovQ4eph1Wk=;
	h=To:Subject:From:Date:From;
	b=bPO7BMtbrcrnpChYodB/K2lxMdm5g+Ku674F0g7ZWaIFAxWBtsd15BOwKdr6nP6k8
	 jWG1SqBumZyWpd2YrvU1KR+Pbi6EDaOOtMaU3+n+JcWUroOxu2J+HW1/VpsrkBq9m4
	 PcgmsvmngORpbKGjbtfWxjwpqApJdylC5YXxZQew240lID+JeM7AT/Sw8Oe/kK8a5D
	 hvW4BXGGakKywo8rwFKbbA9Y1vjAg27JxAuOrO/UOEcgeit4JNUdrKVODC+eQY/XIY
	 OXm4BHC/P7JvkMWyJwBmgbcuw4EGXT9lT/PwY2I8ENisNPjToLSTi6tAOmbkL1yRYM
	 j31P3gyhgAOJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDE4CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189299369.8603.2344459542388238051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0058792eb6fee9ae0226d9d0647261a314c0d143318c9bbc637de042e4908e3
Date: Fri, 19 Jun 2026 18:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781892993
