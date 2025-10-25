Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1153BB4A
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761421194; cv=none; b=gnqnC7m8FXO+GiYoQsgHeOLa/ny3bx2dxdaC0d7Jqns/B9mrocnBvkPlJuJKofx08PGtSKRhx7AF2PNTzlbWzMMq3WcyMwTyqMwhqeQLKZIywiOzrclzoUdeJbeQAsZLqUpwToC7aygTy1DRrZlGH4o4ae3TUYR2emyuagS4iv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761421194; c=relaxed/simple;
	bh=5W02+QUk3dR3y5Tzz77vq5ML3AcjanJ5ek9MfKYDrEE=;
	h=To:Subject:From:Message-Id:Date; b=Ws+Q4WFwT4/JDhgHJ7nwtpeWLMR/y6ui3/0pksmi4XeWKQCoKVhOYra6lOb3GQXhm6+ps37/IJdLqA1wCE3VGuqS6Vbl1Xx9tKVZuB0iSTIrVNw5oX8wIEGk7kcWmGI5u3cVDl/TH54aElqoyeMIQ5Z8e1J+uwmsnt6lZZQx9A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TU476bE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TU476bE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98CCC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761421193;
	bh=5W02+QUk3dR3y5Tzz77vq5ML3AcjanJ5ek9MfKYDrEE=;
	h=To:Subject:From:Date:From;
	b=TU476bE3Hf55cZJ1AjbM/YlZg8QiGgfmsTqBk0IT8jOxzAIfbx8qzlmbErhxWJSg9
	 Uq92ITwKFv3UKXT3lXBl/e6u/5X+bHhyDBXmb1KbkrhsSGYkB3bmOuvmuZ6UZDdzul
	 nTHFn4xUpDbslQjN3wyEL4EYiS2vjpZomt+ESRW27c03ovm8FX9SMzoc1JoCjM7eFW
	 4Cg8hlRCpjSeADtguRs4V224PNUNVPoB2Wo1yRqO3lN8Jdy5rRWQAjpmjlHOF7YxjX
	 F4Tp61LlDuQ9pN/Mu9Te4TC+c/EY6355L4QRVsqjPqQGj1XIcGP1cJMVMW2SUWinLk
	 y3GacClzcqLSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9526CCCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142119358.31905.1358969767112707575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ef50f75df79d39702d7e548458c0a76f5ababaa875230feb61593d0453f527
Date: Sat, 25 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761421193
