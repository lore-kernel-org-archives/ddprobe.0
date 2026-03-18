Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B483DA5D9
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773843294; cv=none; b=cqIjLYqMReSYWFM61CYz35rTOKK34MbV7GVR10uy5DY0eMndjeDXKx27YevNHPiR+nt5ZfrJ07onSa00mTBZGqYNtnYIvcafs0JSpHoGaq0/ckLcTjl+bfvZfm+4zznTl7eqJBJ9AJNseCtXdi/0yju8K69j9TGq7Vhhjoag8gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773843294; c=relaxed/simple;
	bh=qBYwBxV8Ac+ExoCFP1Slf2YIDmMDSQ6t+/9HqHVuqBA=;
	h=To:Subject:From:Message-Id:Date; b=abakIPXmqtXoQ2I3OAZhUTRqwgUrIs2zqy49cC6bln6pViwbTzC9fLwnmXGFj1m5Jr0M1tVZR8CiL2u2SRVk6LE3snot7gDMK3DHOPR/SN8WoO9RY35j9Kjrb42v9yv3nEPUB+EUqyF//uC9+bQX0pyKhSj9vYRbC6vSHoUfcp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEB7DR6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEB7DR6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F992C19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773843293;
	bh=qBYwBxV8Ac+ExoCFP1Slf2YIDmMDSQ6t+/9HqHVuqBA=;
	h=To:Subject:From:Date:From;
	b=lEB7DR6MzMxofx8u9N66YX3YTk3jh4peq5NiqNysfgWMnHSfNhmIfQXN4jz2qR+Wh
	 DvK2+zWCHJkEstStIoQ6CmQTeM7SGMG1RDKv4U+KC2Rkx8g3lJoztOKPS/mQez8e4z
	 a3E7DKB842QMeQP0BV2YgBvRw5cgVZpcR9YwRYshePlImSEGfToooCtivGWAxoEiaw
	 1xnEZVXIfeLPg6bOk4pfNj1Ox+vjDdrngswBcAyoixrNOhhaAoC9pL2rxc+q1Y4fqs
	 eeRX3VIvj6NCgSpG1xOxzDpmDpJ1cp4jkPJYEfxT9TZnkiunH/A8zoKfsmYzS+1XzY
	 blyHFmbgOLcBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900DF103E18B
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384329358.4416.16920186658984419953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a427e1a74dfd92f45b5214e2faaf7bbe22b21e8f7dba065e8f8ea9c746a4fa
Date: Wed, 18 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773843293
