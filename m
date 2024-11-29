Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280F315530F
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732924554; cv=none; b=h8w5BsnLdswjsJ3Brt3eJ40j2NH6X+qsPcq9P2zTDGcTUD3GWKBYUPlm1jF8yHe0Dfau7+GmKviqkLZzIwjyfMl8ttDu4ou+D3sVCuveEukcoIq171Zw7S/ZsXJAtdshFWbZOEo6KxpAsC1vIBmkJwlsxv4BW3/K/UrirFI/dDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732924554; c=relaxed/simple;
	bh=R0VnQQchYi5E6YbBpwmNEIvarbSo8tdaIWtnBW4/KtE=;
	h=To:Subject:From:Message-Id:Date; b=DcQvJbkIxNMNR5Vj3oGChdL4BRicE5b7T6hWgAyTh3cgJLrahTEnmJ5th9nsY2ss8lIYBaKS7Qpyp2VzEK6M/mFRqSTPiCZJeyFqgpHFYnpC3N4yWK7hEbMSiQjhzzAO+lEtcr1ZgwaauDaJc2NSMCwaqsjVzB69k4ZJ5rpBygg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rL+X1kft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rL+X1kft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B987AC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732924553;
	bh=R0VnQQchYi5E6YbBpwmNEIvarbSo8tdaIWtnBW4/KtE=;
	h=To:Subject:From:Date:From;
	b=rL+X1kftcF9iq0bTSXy8XZrIrVh7ueygMTCg2XX5QWkFScRHJ4LHruBo0yOiluFwQ
	 ZTTHEocZCvr7hmvt0Wph9rOTJWIgctvLjhK7g5J2pEqorosgt+k6DKSEpDOuYtUQpI
	 dqIZ+J/VVlUcr2QsQk2J7bXvudJs9I13cWPnRoj+TXWQ6HZRC6O+wESNPlIUbfh4T5
	 uC3T6kFMFG2s8QDmuu04BUBKsqhsvI73B38vnGTvDbp5muk0tTwYNzZLT5Jcpik6kV
	 ih61kKXOZbuzcHGTenK6w12Oi5ElFUe7vYcPsgTATZQ8chQBzOft4YI9OtR6jQ7Ljj
	 HtKJC09Ly+YHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CEBD735E6
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173292455361.21177.15308756647179014111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb09904c5b0898fb3783cee0a8eabe5bad81c5bbdaead62b88fc03069e26f695
Date: Fri, 29 Nov 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732924553
