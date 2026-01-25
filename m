Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1054C1E520C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769318634; cv=none; b=LhxV9Jjif6PqtfYnGEMbPHNGLydmMtg/+AfBX8jd7M9P+5Hs7fC51FtlrjzH7jAx8kPoxTX3DvSS4PC3sdcS503RCT+7wq8Jg7qFItRZiG5vfmMq7GVjbe+bWsAQ6k9fRLleRpFj8JZVqatsX9mLuyVyfzOHZtDGiyIZUfJtCCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769318634; c=relaxed/simple;
	bh=Js1wAuvp2uT6YKnOKo8PapkAuM9bssFOI97pu1DyZXc=;
	h=To:Subject:From:Message-Id:Date; b=XyDXxNBKeiOw5jBaGwDe/TbrbiDmcO7tCXJL+9mpO9of7azeNqyBj0vXbbLG1X+ZvYbzobR7iaqd7P2FwXFPJ5YH14gOMxRPA3hSE9MhDWdaCLZD07kM0o81BxfThEdgLnsU9nQ4qfJfxuGDE9lHKtTDRe83S1h+TX1CYRqzT6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2GP658a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2GP658a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA036C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769318633;
	bh=Js1wAuvp2uT6YKnOKo8PapkAuM9bssFOI97pu1DyZXc=;
	h=To:Subject:From:Date:From;
	b=e2GP658a76bprUZyPO7B18dSMEVGIoVcuXUWH1VZsTXcL/GF/pBpXaA/HdOShzcDv
	 ki47pCnbBsoNdhHIziQGWsVdJfVNBcv7szPWVAksMcu6vaXyaZLl8g3oepm7iz13o3
	 bbgs7ORFkK0QazvyIFNQdKQ3yWmWAOcWGiOBkNF3ySy3r5n1hCE8z7aS3+ErSaxXCn
	 nLlcfDOZaPn+AQRr3/KNks/VRUJKlbf52XCDSa6yw0YMH40o6LQ0/rYcFeKgH9cw0s
	 akG9rcd9ixP/4Q0dPlPuja5DoBjFd9/qUDLXouba4Wb/rj5z67V0bq4UtbA5SfkYdj
	 MSy0J/vh22pAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9706FE63C85
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931863358.18714.16434687394938806401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6259dd724a358093f9ec34dcedb947fb846290066bf2fa22270a540d57a831cb
Date: Sun, 25 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769318633
