Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1088B378D97
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768832034; cv=none; b=p8z17lSHNTsvDF3MJXamXLmYoDgPDUi5b/9gWnph/nds6jyAgwqq5ST9TJgkWuTDwqbhgUX7epHpoGUgHrigEIv4+4BaM1OSA8kRufC39antWnnQLauRW+AKJdxu+JNR6Qy17Ns4wA9ahhxBJ+MYTPQfQYyKfvt5FJ0H0WmH7pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768832034; c=relaxed/simple;
	bh=Cf2mMGPHWa6g5mP6ttcwkYOMoo9uTTjoLMn/kGX/sUA=;
	h=To:Subject:From:Message-Id:Date; b=sN69/pyNNOI9QCvZFqvnmDz+lglNsGKurazuUB2ejviT9PNEVeeF6Ed8haOnviFneQ0hVas8XLYcFezJuDCo92EaHtBFqFC3c0IZMIrhzAigJjC1XqPeQ3j5vioWnHI7qlK8FJl9gYnAe6rVB9oDHVJwZoT/bdVbIED5iD51eCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRflIsG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRflIsG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEE1C19424
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768832033;
	bh=Cf2mMGPHWa6g5mP6ttcwkYOMoo9uTTjoLMn/kGX/sUA=;
	h=To:Subject:From:Date:From;
	b=fRflIsG1bBAdxUbobG1UeFag3Nyy8Z/RpFmsqzqC0Ljdc+OiEd6UCJQT+DvVf8r1S
	 EJVSAYkwZ1OI5jMXg4XEH7X9x/qYDuaQEDgKlpO4cUBRq6bV5FylHQxuNSpzFXw+hA
	 KZA06ZnfUMC6JTJNWUC1pYRpLhXhlreyYuKPeR757kxCrYwGe90kvNOKEHCPwzkKxy
	 tbFHTbPgOq1mOAzdWAAMtXQQjh6MUm2YwDeFnXZKBbmPJjkS80NQuW9PwzgG8pp/36
	 WWQUZBNKnUOwuh/NKNVwR85Cc7DOYeDuFxXOPXvnrr+lJUswRGlrITkgFQaXMrStcO
	 OnQwowSmQWmLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902CAD29C2D
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883203358.17421.3407152594746043084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03dcf24cbca27763bf5c1eb77cb952d7107f17e07751e7b4e942eebbe2b76916
Date: Mon, 19 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768832033
