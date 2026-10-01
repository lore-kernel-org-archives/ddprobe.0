Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B041C48033E
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790856035; cv=none; b=RnG3aOXPkbY3TTTcEXEi79x2EES/7CNTwzg6yC0f0LWpFX972fdZDTrPrATY6VhIojeVnSVR78jo3gG2UsVsSs+5/wvUzGRthcg+8pKTmpZpp1+uBXHlJOT4FqMp5hO9JjwPgZs62ZzTp33ZdQWKttuG9voxcuHC67U6elxmgeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790856035; c=relaxed/simple;
	bh=ITcDuBtZzbPPdYZK0CRt1xL4Y4Ke9sJ+gFLt5oDXMWs=;
	h=To:Subject:From:Message-Id:Date; b=FTRq6t6F+zTOPIM4p4ltGrYmZhVtB9LnBRIuHQ5UndKyOHCRNpXzYJUvsXSSPYnnAhj5tYrvV5U0tyvmnhxKUzODXUWfAnyip2pwVkU8h9zLRM8OLKcVfLn45teaGpyXCUHBqhIFIbjfbDnHuJpcvcyb3e8Gw1uGiiWdIm8OV24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJZrpa9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJZrpa9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAB56C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790856034;
	bh=ITcDuBtZzbPPdYZK0CRt1xL4Y4Ke9sJ+gFLt5oDXMWs=;
	h=To:Subject:From:Date:From;
	b=gJZrpa9u5xaauLdIDVpdxMCB0HzHi3L45v8ElFCxb5vSryJYX6ljsaABtLeZQJBo3
	 hMLgKoo0H8SwSke7xNEdFHoneKKkjH/hhUWKKAzSjEDYMqjtqnShQp7Ta3IaEwTi/c
	 xjSAU7uTGNlUIeGVyxeiMt5ROY8wybIzrliC5iIwHWkJ2Hu364/WJasgQ4Hyd3wfiM
	 RzaCPWY4n4BarK99RU4dryHkDw2UsxjUr/B0nf9SRvl+MqelH9swg80GMMXfLW0Uot
	 OeQ78/0Qrc0G9UG85M3YiqX6xCHrN4T3gYgBfNbyoEo/m51PfKWQ0J6f+1HcdBYgbT
	 0nxWZIRAIgOaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0D5CA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085603369.27428.16669452351039335226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4faa336cbd2126c34e1037f040d645df3f1e455879bc6ffc04c196bb711a2a
Date: Thu, 01 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790856033
