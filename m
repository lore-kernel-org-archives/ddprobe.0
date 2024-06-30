Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573C33716D
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719771863; cv=none; b=DxskTWWWP0pF+k3EnK/LJTBj2L0HnOwLC1ovZt4OjBx+I2tUbUynBTiIGUndSJrk5vns9aZKou5UpQXglpkARWUp4GRxS8pfBrKe6b1Q/CPd4w/nl6sRiNk8oMGgD1AEWtRMJkkOmeZiejcCVjTEpxDXhygPQq1kU6zbu3FMEJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719771863; c=relaxed/simple;
	bh=alduR0Vy9fCCXBswflJwvzB0aHRzxXpyEpHH9uO3ccc=;
	h=To:Subject:From:Message-Id:Date; b=f68ndYe83uJHyxb9SxCcbIdnzgnsgOYzgfcvbf62n3N4eClgu+4p3p7t40B70mbB3i3sjZWKKN9iA2h5/XtEgiAQDWs6vUpFyrF8Y/rhzaS8+p1s8/Zt25hMAmogy1RrB41PzyYY2kMkgLXhOeusKc5C9JdUuiNo97zBCrimYww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdw34mqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdw34mqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E572AC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719771862;
	bh=alduR0Vy9fCCXBswflJwvzB0aHRzxXpyEpHH9uO3ccc=;
	h=To:Subject:From:Date:From;
	b=kdw34mqQQQ8ktSCteNtCVWChbjPlc1YORPE+YK9hOLIW1VBWXHnu2TNWk4l9DI/SX
	 nXI1PtDhGercGDZQXw+INXB/lTV+LAwrhE7o15FBcmGtu1CEVY899KjnGquGpHqfPd
	 0ro99GFUAOBNg9sWrs42ESxckyGwQo9arMS9+J3JwKLqVn3AjoKCornQ1yHPPFrOpj
	 WXAH5pfdTFZHyP85F1tHPK6NFQHnOIVj6QaTkHTXqu9U8E3W591WQtiN/0XkK/7mF4
	 W4FvP9BAuUeIoWbojBTAS6iTvRvoyNnexQXHd3Q0czlKL7TOceIsejf9iyvnCd82kS
	 a4gftx1cpOM+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D39DBC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977186282.13521.9510274921971605159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc53a4c8d54bc376147752284f3826f97635aba379d56e3058d9eb4183a380ae
Date: Sun, 30 Jun 2024 18:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719771862
