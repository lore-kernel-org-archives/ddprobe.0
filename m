Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5351F85643
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 12:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713530423; cv=none; b=UA1RuSP1nkjiXxygvbQG8Y2c0Kzk8uX5dO7yLhl38xRHFlfXjko6nibp5+aZADJDm9K0REUVVp1yAXnI2TnQhg+j3OhPTO85uWVoBhNFQQ2uF8wdQurAukz0fJ/KIq1DnQkv1KIBnuZVjQ5sIs75d1KEYrVAqGu6G/W6ko2DmD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713530423; c=relaxed/simple;
	bh=XgznsSo1JNyPkKkL2kRrTRe9ovtGg5qfcvBTmpO3vUg=;
	h=To:Subject:From:Message-Id:Date; b=q4I1ribMaop45CcMQ6nyB0V8GBrWl1MOp0o1Hum2t7nKf1Ph8vZTRzWeFm1AqTHvnNNg6w/5U10BzT8kENo15pCFeQiR/7h7Jq3JRfObbUrRBwH7zz1xr2xZ/4BZsvD8B9TXKrFPKlR0hFVgPzZQFZRozKHSyQN1wU8a4QaXesE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fp39ksor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fp39ksor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D499FC3277B
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 12:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713530422;
	bh=XgznsSo1JNyPkKkL2kRrTRe9ovtGg5qfcvBTmpO3vUg=;
	h=To:Subject:From:Date:From;
	b=Fp39ksorTjnIk7kK/Np+zvQCFpAl18C/gELo5LdQCGW0AdkcSff5Lzikg578EZ3Nt
	 dcFDMtBj3grnrnndLpfwGcl3g3WryIW3+lJvWs07RieDeNML6XARvoSVOgjqSP+pFJ
	 3DsybzUyJ8q9tXh0N8a3HOHQk4cJiCl5MVsRdwE0H+Q53zM4ujfwzBo8sCX5WrrPrs
	 pE13alEmbNsBzIieQzFPtQ0bSeaXGqvFLZ1ZZwN6sF9jfHSlyNskH2nJHeYcq75Lc0
	 i9Cl9fPmacQcpzcaoSgEzLFwU99RSlyACq4jm7KEQR+xeaJQcGowa5wnWCi8T53goX
	 MLILhYk6ou7AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BC0C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 12:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171353042278.29913.6183726048938376558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3cd41d274edbe201df16597f68063948f873d89259d71d55f6eba095f6363e6
Date: Fri, 19 Apr 2024 12:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713530422
