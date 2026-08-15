Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E70D230BE9
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786823434; cv=none; b=HijsRFUMv2688QdCVxJ3+0p5x/au8fw7dWZDh9Ksy8NR0Inkg4FWIIxEGNelKHP5dX74QbSkExHl1+aMIB2BN+hqmhHgL0jhcsfFeTHLal7TgLH5qOcnvcTtfTbvrE4a0l414/VBi3kg59bGi962x4xUINPkIjMPlWZns1ntgQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786823434; c=relaxed/simple;
	bh=R/UdrNtzvNWgOEsJzafqcEZIg60hJ1cfFrGem1PTx+c=;
	h=To:Subject:From:Message-Id:Date; b=BNI4DnlCI+wGevYrO6pl5IHfXeG9lVDSUfgy1Wt/Fx2LbtmrYNIc9GUtmpZwH9k5j4qye6Hk0tToUiUPr4V15j4DLVORRvHmNmdXUrEokru/zUYiFgm83GoW5AiiRrXgmlphAIf85n3C44G74aIv36pPc4Ecr6LvhqAS9H37J0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D02KaCz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D02KaCz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DB7C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786823433;
	bh=R/UdrNtzvNWgOEsJzafqcEZIg60hJ1cfFrGem1PTx+c=;
	h=To:Subject:From:Date:From;
	b=D02KaCz5NQQHjiVKbenvlpalNpc2bf7xJl23hFfZgBmnZMB8oq3+axFh6pBAt4zM+
	 pkVURah1usRhsxvA7+oR9A2L1FVZtAYtBmTg462tqX7PK90XsRXb7BKIQQ562g2MPt
	 h9hDyoSP4Hfjeo9fU2WH7kJG8TyL3WGqr5fulutV2VfRsx0SbG9OMplv3OfUzJUFJA
	 2xafAremJOUlDvbfvIwM+cZd/JP9yjG6C5vIA/TwwOksRmP1wRCTHn7nF1U3ilGLsx
	 C0LUjR+n+TcEzb6dr1m+/rnm2X55eor1tyPhtot4zZ82XqtOCOExp3QtdUmdxzl9j1
	 usa2zXo9MeADQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB42C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682343369.8464.15582099512766578375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ae36fcbef433eeccf6191f2be21597051fbb4c6f8b42473b56f491fbe7b883
Date: Sat, 15 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786823433
