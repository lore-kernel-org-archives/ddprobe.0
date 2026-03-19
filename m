Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1523AEF2D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773910493; cv=none; b=UzCdufUtgKQJr6CMFRW+P1vG5yPzWFRXw7Z52QWCLr53g6VS/vZg5TioufT80z8ZK1jIBpcsQkdcc7fcnzqqRcm0bd8Nj80f3aQSCXr2kJNPjXeZX2LTWVDLAgTmdML44L+3KaHGaP0W4mr4wcXRA1dhUrZ3Gwh0TSottWAp3PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773910493; c=relaxed/simple;
	bh=BQ/VFfMDAZ3Kw+ObxIW3o5HXtVXeQKCstQPu2neQpdQ=;
	h=To:Subject:From:Message-Id:Date; b=kej4fiTGIXfHFNMsGfw4M6U031XqJaus1itAAUhRU+ZfEm4gKSuAqfrxRQ+opc2ztEAcONlMiceTvyBx1k9FvZaKkQItlT08OMLtElaGQP6bfnndsik8nIwwqR32A1Ql1Tg96sQJ0y2Vv+5FJB4j2h+ALOGC7/2yCafM5CwCbJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdCeW3x+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdCeW3x+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A992DC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773910493;
	bh=BQ/VFfMDAZ3Kw+ObxIW3o5HXtVXeQKCstQPu2neQpdQ=;
	h=To:Subject:From:Date:From;
	b=hdCeW3x+hRtm658n5FS8+bwZYwFideUB+RtRlOnxQfyW7i+EIVtVytw/G6kjQ6xyO
	 U/5IPreQrkXRF1AkbxVoN1SVfHt06aYAVgScNEzWzKDMylyEELZUK34XWstbTWzTJd
	 9zszh81+V037FWSXuyHms/q91ImxVg52Q+up0Wui6rADTCVixftrq5onyOSmyjpcFg
	 jN3Ojr/dYz95qOdBxoP5Do4V/Xlh+aZKov6AiqFX5WhprwHqGYvgaL/3qPdYibDOuN
	 16/sSpULC8eY5mxatwQlK/3/G7Eqecq1yafMCAiv0tStCppTxx4ZU/RCRioufYZF/N
	 LnQdXPvg7L4Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E40107527C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391049361.21413.6894871534207807834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948e4f5bfade1b7bbfef6e7b8e1058164329de094c84ed36410e26f461162f18
Date: Thu, 19 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773910493
