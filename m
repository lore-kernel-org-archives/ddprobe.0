Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F48E2FDC27
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782516514; cv=none; b=kDuW+F6n3otaM9O5Wdt2NQjTB5VYeWoairdhvp/WzuTzrQSExwxLPw9ju4BCKWk5RO4fFThyuBGVE5muUv/433dFIDxSqP9StuzKku6DCHHWHDq9IYmq5iX9XnEtFgA+UraufATcoZ2CdhsUKf4qi3oLXEhyd1qoQ65d5chJjyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782516514; c=relaxed/simple;
	bh=Ds64CswBbKJlJS739QbJcvzLhcGGLxEmY7jhTmQw/RQ=;
	h=To:Subject:From:Message-Id:Date; b=ZoNjsqpH4KYWkIl0kcwR86SjYfiElmP7yfpB5CHHrvGr8k7Jg1Xh6gZ2l0vgeFuvzMUD2OG8l45ej5kdgeAM39wpgBYQeQQuTPTGgDDUIIdi2Ywb6zoUKrckd8KyLVXhVIQ3Dw0H/xXFelPAD6j01SpTLmAboQPhRlVo1ZFQcuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGeMlYU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGeMlYU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FADC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782516513;
	bh=Ds64CswBbKJlJS739QbJcvzLhcGGLxEmY7jhTmQw/RQ=;
	h=To:Subject:From:Date:From;
	b=EGeMlYU+XzD33aDig++zY3TNnoMMnOzVaYLTZB0frKunnX6zebx+Yj37ANSSuAfRt
	 tIHMl+f4f1v1ZARAtAKTORqPPFdQHPWpnjWWDegAEr2gccOOXCc+PFB3HsoooeFW4F
	 XvL1Akbz9KdGEnUgxmLHkAtAn280RNeNbvhteMmZY+xMTPjWH7wD1zSRwH4J1KIXuZ
	 /QnM/Oqv91QbRMwS88XbESU2tGua0yR8sSHVFm36XfqjZ1DvoyycudQUV1e2BEbub4
	 dR4qfSXGA93vg6j4ZKrXgwObfyk2VuHQIPk6JYVD3J7AiW4oYsytqxyfcQLqaOPKNV
	 dzF7qyURqUkCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE327C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251651370.1665.7570241668376374198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc29f8ee602ee49e8bb7b18e8b1ae05d9503ec9a59e4f4e7913d8907bfd2d3f2
Date: Fri, 26 Jun 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782516513
