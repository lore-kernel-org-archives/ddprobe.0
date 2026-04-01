Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384443264E3
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775055334; cv=none; b=dYjI59utnDa19jOl6wdCLsppPNeoL7bYapNcIs1KuZ/GTrgWmYInzDtU5hoI5vDzHJL00o+6tgsLc+WzAolDB2EvsyCDRPal9myzbffXn7c4TVx/4ecIvGJkzDXdXYlZjgNAHupw+9b2DZ7KrjN0838HjsnaiM4LzdI4jqS2Gzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775055334; c=relaxed/simple;
	bh=ScDg9oC4vIIAlVWhW4nWhTeYPU9k0/yJ639nr8kt9Pk=;
	h=To:Subject:From:Message-Id:Date; b=cq+2KP2qR882LCJDVsZcphbGH2wlqENwCw5RU4EJr+PrxxkkkfzWQZ56HE9oDZsP1q2hLPMn3EamLtMy2s8GQVRZaOr3e8kyLw7EzGN4woUomz0Y2iiKwoB1+LT+wVx1oStkpM3QOX7uYpz525Q5oLuDxMEC0PLUhB7V1TdV2u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTwwegdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTwwegdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4F2C19421
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775055333;
	bh=ScDg9oC4vIIAlVWhW4nWhTeYPU9k0/yJ639nr8kt9Pk=;
	h=To:Subject:From:Date:From;
	b=XTwwegdHMyxxpsL/vwCEZdXmp3eyzarMczKhYdRy8S1ACiX5cC/fCIw90Vp8763c/
	 D9BztrRZh9wGRn9c3O2FThfUdk5A1VWw1h6a8NA95Zvq/VKKepTJsYjhRZEJWD7U0n
	 WR2nWgMrIq1PnBatGJtczp+W4KjtW0ZDwJC6WRRKWTjUsRsfRqi/qRR84xu+N7Cyc0
	 hoP74E5kXq29Vt+OBIF7YYMnSiOKDVezeUuNrkhf89YOgsno0aWd7bP0UaohG70LsF
	 ZgM9pmHmyGlLGxO9Y9egeVGAvbp+DhYsyTYh/pCYd3GU2UAHDFoXFIRbcm9Tpdd/8p
	 AxialZjudspug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8AC10F6FB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505533369.27042.16549625749924689492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc07fb0ac86be0b54bb8b8f4d75dd49525985748d49efdc1011347bcce00b30
Date: Wed, 01 Apr 2026 14:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775055333
