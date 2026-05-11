Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12393DC4B6
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778496634; cv=none; b=dykl8H8AzS+o3t/qFaxF3CMTNRb1VGvp5Y/bXb3AnE/wJa7cz21rgdIGBJhqaIlYkimmSwPtKKnaCutn7oBmIu2/LSeJSqMUA5y+rVX1Y6qAXpHgnR8RYYJvTMK+X5ntIVldp7DQvuSJAMBVt/4SepjUu7AeDj6O9ZNlEfbhoQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778496634; c=relaxed/simple;
	bh=1yQTBPaewZ3tfdV8N8Pd/llcZwX9GWVeiHJgWtjkMQc=;
	h=To:Subject:From:Message-Id:Date; b=tJ1voD6jUHfI+knyqJO2M4T3c2GjnQ5lOgVNV1Ull0W+gFeh6B3PirCi0djhvduLgBVfrhm+BVpThP21vsdNxfv8XsDa360YXrKyqKaD3xqmQAPc9qrc75wLlAiPIXmqkqbvVSruIlqnZiDMgVrZZv0ATD6s6HKODUV5I503V+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9W2ubar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9W2ubar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD58FC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778496633;
	bh=1yQTBPaewZ3tfdV8N8Pd/llcZwX9GWVeiHJgWtjkMQc=;
	h=To:Subject:From:Date:From;
	b=P9W2ubar+HzIXdbvUQUw4kWt5+ha0+PgRdR7iWCvX3Jy5bCqho0v8vcLU94PkbIxa
	 R3e/230+VGrxCDn/lnpUsPBS08qvWEr7vZHtEqTJ9C88SiCj/XILCRjDNJzKa7Jkwp
	 ZZRLMuKMG1e6KsvkJcMQx90KUjGxyANDJlyLBzOUiDyfsTaE8jmJKSkYFNgmf4Nx6/
	 XJR5BpXfolPj8MmCir6s77fwHm7tVVRbhk/f7hxcQeLAFtbcaBYZsUzbXn4Pw4eK+V
	 sluIupzhUg+rLht5r7bgNbQwqPSdTqiWjyPy+Kt1dGa/t4B85uU0vrHVVdfYkDoa5L
	 Y/H+stsMeKnCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC037CD37B9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849663369.8718.7194129483554096357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79d3f98cc363274d4b1f52cb09abc62e4af85df0fc57433e6629d7a9df3eb19
Date: Mon, 11 May 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778496633
