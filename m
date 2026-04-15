Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DF639BFE8
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776237454; cv=none; b=lRkxz47nAAysRxtfHAUPhpfQ1Sw+xT6gAoVQCEJDMk7zKeFsaagC+VMtWCYI7+ZdOyzZ+S9CfoT77+r8ETRmQORJdH0PSWbwpv9btiUjSVzsdXtRT9mEz4DT0Fnrysx7jtbXgN6gprir/n2mNr+mSTYtlJEawqKFROE8YPybk20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776237454; c=relaxed/simple;
	bh=LQOAIzWJ/klnhRIDUArGr2MkD3CpAmSSz0MyrZiIYZE=;
	h=To:Subject:From:Message-Id:Date; b=X0HmbuqrGQcB3rxohoTp7DOs/5INmFrHvhCVylmjHDMymMn7jSGXCubDBe4CnwKhD4fsW5SLDAtWqzSIh0+QQ/YnASecxJp+317vDvEgf4uX4rVA446nfWLmcsJCfVcXK4mVOpC+yqM/8KmMFb/2pQqmRnbJhT3GaPW42F/Tqp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6g2C8R4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6g2C8R4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF76EC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776237453;
	bh=LQOAIzWJ/klnhRIDUArGr2MkD3CpAmSSz0MyrZiIYZE=;
	h=To:Subject:From:Date:From;
	b=D6g2C8R4TZEed+yKJqPuGkgeFw8+26g0XJqEq/3+woXlx+o46f699qvKVHSygXPZQ
	 56rKnNvReqDWisuFGRLZ2+c0vVr1VsQoJv1PvnEUjgfFtP1FGJK4OrnYHERCwrGUSE
	 typ7w0Zk3ZKCzWSGU+HYsFDm4u/roFNw+PZCvVKF/p9kvNP9NUaoT/vqTxWs2UJdGN
	 /SMHKee5HRXltgMh2VRVgaTblCPUaxMmq+cNrSocQiPSqe8FhFmh01fp5xUDYVWmZ3
	 pBdbXvBffkuqItv1fMJfr6zPOgLxYxJmWI55/37SFoBEJxDvpQ8nvrBX8Slys85WN1
	 /HJCcz7FpNg9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC261FA0C3C
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623745368.18055.16395222526633182408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a8470c2fe30e34bdb6222a2ed3d952017075c145faca5fbafbea544ab34347b
Date: Wed, 15 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776237453
