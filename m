Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEDC190462
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782575314; cv=none; b=sy1QDWiDWi+1GfwMJUyX/ZW4gNTPzCfyrCRSsl4AIumPhAgNUe4Fn80jH4a+dfWU64EIYrHNb1PnAdNWSTY3TX9IyPAc2DbzrbnPjPyyoYDMx6XCATCOaQ6a1lSFE18/0Ti8Cb+W/mWRpkXnnC1QKCPwMoveM8wJNIHFciBtdTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782575314; c=relaxed/simple;
	bh=R7vLCy33TS3tR9TEn42cXWRelL+dXVqtXHxJ8vWnSUg=;
	h=To:Subject:From:Message-Id:Date; b=fLpdz0nWCfDi7qy+r9unyal9PPo3DMojpL6HTzn7MOla3TS3GM0eu1DQ6LPC7cq4Ok/zU33CYjHH/8gn+XHilYWmOMfEb4RHaBW/npn0Pzt0vf3GB73W92Duq23VsKn553dI60Kfh0NVUrT+axphStajvW2OyW3WXB4x3ugzTt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPpAmQFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPpAmQFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5381C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782575313;
	bh=R7vLCy33TS3tR9TEn42cXWRelL+dXVqtXHxJ8vWnSUg=;
	h=To:Subject:From:Date:From;
	b=uPpAmQFJq49HAVl+vZ4M0YIk6Mil70xoTvws4gcSiev54RM2lAcCtSdwNfnUexQi1
	 iHchigayhFHE2ERILkWnlUz8SmDPGLHbaO1YNJa6ynOUGSfa9YgyVcdUb40JNOo4jU
	 kD/PapvjZ2QB6T5RDLs5hYuzp3HY2xAFt3yWuMQEcJK3nroB1wJr4wScESMIdgaztO
	 DJGh/ScXnUfQsRai7z8EEJ3h/n9ZuUe+Qmg6kBealugXMpUzxxtzu2Tav4zkaIfT2l
	 jkPtvD8WRJM9RhSL4tN4sc7GWu1Ox2/9SPo9jPjzEaFRsYr26WNFOOgsAWlCvUriuc
	 anaJS6vEQ6kDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA71FC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257531368.19404.9342400973322419494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15cf36ccf42cf6c9323fb914c122459d8b150e65ddf4d7206ff6fb3c31bbfce1
Date: Sat, 27 Jun 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782575313
