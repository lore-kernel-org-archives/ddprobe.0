Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3044020E70F
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748514594; cv=none; b=ccXbWHSHJ9K89ddLRx/ruskNqsHPPvq5LuHFb8gBBIsPKECS7q1T5y/qc1wGMtw/C7dxWlAHcIfwYS9UN04JVkFCB9xGLN1cxh9cvB9iv8hFQyFzGS09Mck3HmIgWV1zTIyrM5+iKgPdDXo2inr5U9C7wFehm6VdlfSjr2nQjRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748514594; c=relaxed/simple;
	bh=LnTEHf2Ho9NhiDtj5tcLNf2yhoXiMbsnLAISow4DCGk=;
	h=To:Subject:From:Message-Id:Date; b=WL+a9au/E2aXxwhNNwoTOWEZsUbD4P9doPzHdn20qFXGprl/48JQbEdOBxx6XpI+yyLwQjjhkLbTd5BaWaiMWUQ2zoqB71Z7sl8dgYdNjfiKKrurnLGPo2aZAZuvWrbouNtOAWsUUJhy5Kz04akwfnPGKlFiD+wk5dFGcloxzzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHHJHY3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHHJHY3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB8DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748514593;
	bh=LnTEHf2Ho9NhiDtj5tcLNf2yhoXiMbsnLAISow4DCGk=;
	h=To:Subject:From:Date:From;
	b=aHHJHY3H+UsPURiGUGiNBf7RS0rFjZ2nekTUSsb57whD0lPaYnDypGt1a7Y69a/+1
	 E7VfDwvz0Ffnyf4GdxxKUwhZSjB+vLiVDtzI0Ha7hAW13m2xouY4yHrjn8HRk5GEGB
	 2mcksr6VybiGwevN2VwXqkJlNCCvR/U/aazobX5i/Oods52KCnUl4FlDULOJhSq2i/
	 jzZoqhKGVNK0+5l4cds2ih7df1f15OvUuS93FbxB9Mu+wfngxjatBTmFZ8PA3Otu6K
	 2nFcfDrU2J+npSnIc4L+LmUObKie+dvKusX4rmnd2PmimP/6qS32HVkoI1sDcUgTTt
	 7PxVHg1BxdQWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9022AC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851459358.4596.10336227528097663766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d439c65c630dd02dc63c6e9cae19e2ba50c0fbd7e6f8790a7fe171411778f29
Date: Thu, 29 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748514593
