Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A081397
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788942034; cv=none; b=k8Oj2cqmepB2/ElQPpyWLBloqxls/CtTFcx8RKj6jq+qDzIjHWAqEFwaJlJlR6Kt4+iztuSgmFlF/bSfJhFk/Atr6h/weCIRHbV0lFvuyiuNH03pXaJ+6QYibgD2foU7oL+4TCwAHoip3RI8ybgdhHy4/jYNl1JlpFwhAkfETIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788942034; c=relaxed/simple;
	bh=vqIJwE0yxKDKIQuEh9BEIJndSindDDNNRvefNB0ahZw=;
	h=To:Subject:From:Message-Id:Date; b=chwOfGrLe1bqoOTySfFWdPwx2cbnhUHFGb+NVwLWx4bJZnB2hiG00JT0MWqBhbBqVzdd3etdSMWcHGS9QuBFqVqyGbmcreQ/fuk7mnvHtYu/Gchzff1ezFL3nuH1+oRHbBCEdVjXHLoK6HMCmCh9Q3DcOaPuEg98MQKCEDD72bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3i75jje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3i75jje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90E2C2BCFB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788942033;
	bh=vqIJwE0yxKDKIQuEh9BEIJndSindDDNNRvefNB0ahZw=;
	h=To:Subject:From:Date:From;
	b=e3i75jjeb06FcFnS0KaEhcpf4N/jMcw3zddBA9ku0zguUOaDDAyow9RLw4SBAGTxL
	 Xx7J1deiBUGtP+aqRTBCt1Hw/OKpOYY6W1Hyp82m9BHTOMSLCSGyXk0vv/MCDM+oYA
	 Jp9Q4PRffmUT0x0ukkushqzGTSRtWSPq8Gat4AC00UCgUin2BqpMPuh36lcIrORFQq
	 dUZOIXRwjn3p61fTQQy8M46EBDFxGsiFwfPjplnvjjTRhxSl7mVoEHgYSqize75rK/
	 Ev1WJDGOYsctrn02upy1v9y7jpTL6yF21Nfn5gB7GhSx5/M6gkbjoR9CHsMixJJTLS
	 WCqOnQBcJgYrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C4CC79FAD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894203368.938.10178412697141667562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f13b1c2d4795decfefb8640bf71cd8516f68e91cfff76aa71545b218d4c7ad45
Date: Wed, 09 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788942033
