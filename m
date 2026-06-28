Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 793455474E
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782642514; cv=none; b=tvoc5fwpoEMYFNe3e5L8xgspqzLUvuj7q/FroRa5pTbVRQl5qeu9OD+wi0KiKUn4uUfRXF5ZaedVDg7j2NLuxhds1PQxMHrBgxKzv5t5D88QfwiRRW9GkBCd0acY+V8vDSv4U3Hut0MWtSv49/pygcLP8YMA2L60pA8fDHpbcns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782642514; c=relaxed/simple;
	bh=7N8Ta9Mm4mjcxm+ZUXnsHh9cntzJFTUcwfC96G1NT2s=;
	h=To:Subject:From:Message-Id:Date; b=chQC0O2x0vzdMoRSzgbx8GD+R0N3kkQYM4tH7CmgAha+YG5eMbGfG2HxuFf1L9rlJYMQX1H2Mqi/pvk8KFPEkKojkZfK/ktypmCCZvZv3hAXMdJFy1tISxkFvMIRqkLzbuNsG96UaeU/sJKeDlBOT7rj4vx1VtzpdzW0ucf3Iyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGCg56Ba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGCg56Ba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8672C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782642513;
	bh=7N8Ta9Mm4mjcxm+ZUXnsHh9cntzJFTUcwfC96G1NT2s=;
	h=To:Subject:From:Date:From;
	b=jGCg56BaP36FxnfZ7MS9O1CCqSWZkI5/OlKNb8r8FNoHMT6HsU0YpcuzPAdGajeWT
	 NNSueCOzmNR0J0CtLPgRrqJkl1qNoq7QEYlED5adGyfLuVtn0+KHcLh+enREXB9qoy
	 GGE+zVujW+Tj08vd97az4lHH2/4rsxB+0r0U1BejZv8aGk6cNcf203KRoaDea096sO
	 gISkjgjThuKl6pTHW95Nt4W9lPIyYZUlVIs3ZuGps9QOZhUJliZp44z/ofgWNjKgSZ
	 2nVe4uu9szdLWIH0sMFsAGXKEWORnyxaLuYBHsSBL9J/p/IWkCtGEbV17JUrMtDyXD
	 3imapYKKV06fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CBAC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264251374.22519.7475329628982692060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350eaeccb41d105b952e397a129e4eb2e6873e2ec40a0e8717d4de7f6a072d69
Date: Sun, 28 Jun 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782642513
