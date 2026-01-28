Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE3424EAB1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769588634; cv=none; b=ePurKZ+PXWKhDOsisB1Wm0mgVsX+MsfC8djZpE+l7Z0Ec4RD88QjQdaS6t49hBUHBuRUu6u4yUN58yUlfRAqiHqbx+7vZceRf9gALib/aSmVdHHOsIRjGXw1T/YzMAfTEk+5L6uGrg1N5786hgmcnshFwogOWQJYRl0sYtekCQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769588634; c=relaxed/simple;
	bh=ofqeMFWSl0EeQP98my9x6CnqD+2C3GzO3tgtCRIBQwg=;
	h=To:Subject:From:Message-Id:Date; b=Z+6q4kgY3yfpSFZBWeGgww+5cA36g1hxmQdlGkBQ43UjUGkQd7/6iXzBCCwmQPF8v+wa0d2djB9b0JDI76cAbtB7/J8sNkwsOyLWY2tnCB/Zjl/qW2gJIgpuvvO5ftkqmaXGu+0eGovdbNlDMJ/BsNngJhLu0FqQenDmm/2WQPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUD/b2Tw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUD/b2Tw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FACC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769588633;
	bh=ofqeMFWSl0EeQP98my9x6CnqD+2C3GzO3tgtCRIBQwg=;
	h=To:Subject:From:Date:From;
	b=dUD/b2Tw8vP8+if+QMgeNTC9rmex3bjrQMvWfZZFZe2eP9kKl6yjtIzUSe9/bC05n
	 NQMnO6HtJM+0HcnuNeHYffiA5fWdMsN5teNWm/u2bqGSg4vmCM+xqZJhdxFqCsrrUS
	 xyVSUzBMzBLxJKDs8GL85yGYE3YrFJj2Tx+VVyYKS/RYLcJlI4bvcklW0U2rSfuCY7
	 1uwLhMrpMhGeerwUofSFEgxRxv1eAlM1/qx5rYoD1ToT0Rvw9L7H67J2w/JLVLX9U8
	 SbC5LIoCLk+LChpHtHCHZRGfR9q/hZe7GmotKGJKScsTspPGlI1HbPURgve2QvcoaM
	 4Gh2uTzN+pGaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912AED35692
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958863358.15640.15063950869250780364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3dba6b7edffc03280aa50d7912cec5dc4a9522cd825b2999a2a80b5f42e881b
Date: Wed, 28 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769588633
