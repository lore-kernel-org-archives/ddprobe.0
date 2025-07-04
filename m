Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F1617CA1B
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751599794; cv=none; b=eBugEBA2tBTAkMkWFBvZv1HzId7n4JHxT4XWy7qYkbrXGsmIKaUwiG+sduXCmCgU/SqTmz8kFXOrKmbN9tlg1K47HOqF13N8q4Mt08YBzEvKrB0yNf2stM4xNzaOmH0ls94Ib5CCv4wjOW5grQdnv05tjqTjbfRzYQuv4mj5gss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751599794; c=relaxed/simple;
	bh=HJZw2sWpYhF4xt65ebcn5w5SPwYDeWzLwb9GDxIWj8Y=;
	h=To:Subject:From:Message-Id:Date; b=U5W3UI4rdSTyS1yMq/fqBO+28gsDgpOUmUPl01OFxBy8cWJCZGfZaLivEuYnG3HHCwy9e5CRHyO9uQWcXjiL6VyiQbsqbVGMhnpOyQFW5McO4XlXgkntC1LIlPIVawjPNVuUXULSz5x8Qzpyz9YPhCvN9nI25ZwILDYSswFoCRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdBc/KRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdBc/KRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2420C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751599793;
	bh=HJZw2sWpYhF4xt65ebcn5w5SPwYDeWzLwb9GDxIWj8Y=;
	h=To:Subject:From:Date:From;
	b=tdBc/KRt3LSCCYEtRHjKFbZLMQgcetS+DyMBdRH217QByWEJjql9ScKS07+vR8T1y
	 7oplkjjSTdpxaAiImc4N88mqpAR6jt/Yzi0/QgUJBf+Soz1laFTwJIqySxr/cA94M0
	 FcnPrVkiopqDmZ9ITpFghkVL73SR4YCpFoCT8XwCUpv30+Q+glqI7dJZaigmlekulU
	 P4XT7faWvuEyYffMEwZi7FkRvJAdmDkqTMMYF1y+lPM838Od4nJeCwPXzkf8UiaHIk
	 RKEQUjqXvUbxNNjlXwANPsDgrW2AvM+x1tZQxvHLEt7f6pUB8Q3Gk7GdFzd2ATxZp0
	 yWkPIprqOGyeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF3C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159979357.29389.17348559297290174612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f7b42cd4943965a0a7efd621cd8a40051ff0b48f7f0914f5212fb8fbcce5d5
Date: Fri, 04 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751599793
