Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2AB035EDDA
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768481634; cv=none; b=aVlD2SlK9Iw/1pa89GuLd3Gm2Jx5uYG49rcz6+VryhGOgUPidtZXo/rypbEhqqq6GLBosPIR04/T1ynH6MSbF8SdXAAYdxbaZnsj9lwjeMmkEao7K0lqN20HHmN+qwrar7B0CCZwBVYew6S3sUw/oKJCJpEeDjd5NY6VP1apMiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768481634; c=relaxed/simple;
	bh=2/MdMl0fehGtI5q7fPWqBTiQeHugzfH1JJs4itY9VK4=;
	h=To:Subject:From:Message-Id:Date; b=OsxYgFtAyG27ss/lMLHyXUYotEA2GPw58wNFzkERSnXOa4CJolNJO1994Jx43IXyOK8nd7b2vu65nf3yCRmZzUvSO9zzLqrF8Av8SO/zAHwdtRCCvwP0k7MwEPQDIrFYStWH8jkzkhrbB5mf9lKzEHUOE1XcQjX6m+VSuBBy4UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVp5IySS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVp5IySS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7E4C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768481633;
	bh=2/MdMl0fehGtI5q7fPWqBTiQeHugzfH1JJs4itY9VK4=;
	h=To:Subject:From:Date:From;
	b=gVp5IySSTpxukcpGUFQDJvxwyYNCix9Rodc/CohAyiomNE0UqyKAZQtNQvM4jd2QM
	 0yqXngFidDd2BsclqXUEdEh6P7gYJN/SJ6NpI9nfug957+fsuD70dVhApvvxI+dQlZ
	 NeBKQ8eThU0DeFkwPDsvnliEO6TA/51ZTEIfnI28QfLWxSizcX6odckifd+UG+Zng1
	 wpRkCyEJXp9/imFypKTIluCZnc/mwewQYxkHYoOX17aszXB8hx7XgfBHYILtFe3X2v
	 cMTmNu59LoumWryS3wXu98uOkg+2wh+qDgNkXNKdA87jpnWUZFSgkO4/hmO8WR1+SG
	 JpdB9txEVUHVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913C1D44C42
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848163357.22311.6191797310761972694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be78b67106b1eb99b90a7bb230c5ca1ebe2e2c4af020d3e0f37ee03a9bd71e24
Date: Thu, 15 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768481633
