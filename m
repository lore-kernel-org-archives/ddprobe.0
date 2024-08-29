Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AFF1B5ED1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724951154; cv=none; b=ri9PnX3/klXp950pLD1DMjsQoeTgrrJBeWHabqSUFg2Fj8+ZWfoeexEq8YyFpfQik+dq4mgs1ofr7QW6OddNs1hrjNTiMlpwOOx/Zva1DiqXRhfqOqeYRDfA2y8OZIrJp/uJMDnVGB8z+RYcMxOUXEr6ePW9bQbrVlq3V2z5sAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724951154; c=relaxed/simple;
	bh=XRGRmuRowPXXkq5hk8IEf3l0bkHWQGLWbcvbqcf3XdI=;
	h=To:Subject:From:Message-Id:Date; b=Gcu61uBbsSHH1m7Rxzld4a1PSYKZGJfNQ0EkW9Tmzo1uFiUnm0gmSemvBeJ1YY2BduwrldYUEXPDoNRyrCOwxKP5pSkbbhMyQRYXx88f/5RW4x5Ahlq55SS6a1HsxiljLGqCldRIsSDAtCbed9HY64+8mH0Xewr59uGV3UH6/e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVySQTpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVySQTpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6768C4CEC2
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724951153;
	bh=XRGRmuRowPXXkq5hk8IEf3l0bkHWQGLWbcvbqcf3XdI=;
	h=To:Subject:From:Date:From;
	b=QVySQTpwlU1GSW+clULqo8jh3XI+Op4meBrcD0KPVvI2yZkPDL2HA9Pgo16/CMWF1
	 P3X48TZK021BVuGbcJZf327x167jahFjkX1xn2Yv3smlnwDTfpvHh9W8c9rMYgvwCN
	 EOJJSmHnGekwgIVGVcRqbCC/gHthKdMllgsfgdSfKcWgUsoShqSAU6dmgxNBiggicf
	 RbgUFpFrYyCCIfXznsdAF4OwsLQyazoXsnjU66N2HvaTYOS/dzZZcVAZtcVwoU71DE
	 V920qcGbpZ/cbCw3dLsH4a/7S5zIHNgjopoqkeqwnGCAMse409LhsbBxdBGS08+UHn
	 m6clMjbcJBUpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE81C87FC3
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172495115363.11349.16464756800850679000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ff3e27c78cfd5449c84d62938cf66e9dc56ce774041a86b7ddf1a0846424aa
Date: Thu, 29 Aug 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724951153
