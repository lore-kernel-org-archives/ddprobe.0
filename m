Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E95517BD8
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790874034; cv=none; b=iRgUsZf+sQvquYdKVtAL0SXKYrmktiMpMD1Krn8e4Sqk5bf5+y4gOTyZJs9p8jFH/GKLJ9iuYG04zbZdVgajB/DjbaAO7o9HwAd8PcidgV8VmTdRcLZAclwhI+tWf8fkfNj5i6bsmyjm3JVovFDozi1sqNJEDpZhl3UkcEsuLFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790874034; c=relaxed/simple;
	bh=cfZEGBG7r2+piecAT0939r8IXtv89IUykdjckmyWnSM=;
	h=To:Subject:From:Message-Id:Date; b=dFZdGR+wSjMLLfaueN8VN6hIw57Jb2G05knqz8kwXx9lTrrlZHa//4TPnthetzyX7S5TThxYz8DRsTXBbfx/yIhnng3y2cmgmaVM0IQGcdD4Z1HKGG3zZB4J0ftGiw7VWYpVArGU4ILvUqgwu/WBhCXMe7Z50gIeit0CEapXebM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DK2PVnEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DK2PVnEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41E2C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790874033;
	bh=cfZEGBG7r2+piecAT0939r8IXtv89IUykdjckmyWnSM=;
	h=To:Subject:From:Date:From;
	b=DK2PVnEYI7uue4H6Q4j/CYOZgl08mOyU6qIDukGIgGvmYhG+pjFYgpIO87XPdZj2o
	 FoDv4UqSguILNAARUh5Qb0SX6xo7Y7ovdru9QyZffhGa/9jPwubOk5xIytUWsmfNJb
	 YCfo3zgHewqgE6goRKz+SCKoU/07Pk/hD2LPJ2sl8sFUlVWtmnZEApNNS6eOQB92Xc
	 Wh9546jpGSxenr9Jm6Zj9Jn08gBn0znbLNWxGoO2Nrn+Ib01TScPeAq5GJ4Gf8iJSa
	 TqWDBdJSoqZHSpq3P8Y7iFAwp7EybGAGGfxyu8wlwXBMoIz3BghBrT0r5I6tYxSKuJ
	 g7Ys1QwXkGOeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA264CA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087403372.22632.6377781957638203781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79440bfacd0c8b40f23032dcd0210f8f3df8f255bc75996037c8e8ad2bc3da17
Date: Thu, 01 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790874033
