Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1400833290D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769426634; cv=none; b=ZF+oTyQLf8cgk7N9X5YhEoBxbJSIhU8FyzNOpwX9tT0v3sd6MEqtp6zjre2WiRNn1kKuzRYwd5QNPtF2GGuH31F77/+20rg2eNwI3S0diHiLT02IkSor+923qoULwdv4QAJMD1mUf6ESweFBP7v9UKXAeEehC2JxWMtytB6X22Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769426634; c=relaxed/simple;
	bh=QuW/ZjCgdkfsZxyhoK+VJU1Mxg63rD6Ur2/mlv0nu54=;
	h=To:Subject:From:Message-Id:Date; b=YHNwemY5xwt2FVKQrk2ENPgwh2ccJoUOfoqj4SRdJTilpYEEwKSoF/7BMTyPfT/X847e69m/27vwqGn//D0X4XAYqXbOLwfaZ3SvnLUKJYPg8RXBoP+dnueoDoej+dcB+VwkILulG3DDCgmIOFrRhFd2wpbIZCtzMVVzI+kKdPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2tlsY6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2tlsY6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBDDC19422
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769426633;
	bh=QuW/ZjCgdkfsZxyhoK+VJU1Mxg63rD6Ur2/mlv0nu54=;
	h=To:Subject:From:Date:From;
	b=E2tlsY6dI87gAxJhPhTjUTv7Pd3ui6u/hz6y+VEb2hBg7H1dWGvjt3JPA6pSxCD7+
	 SAdzT2jk4eh0UAHoJojuJcPCLynRbjZ6mYShtvQNwcMECR4+DBnujnvBKuKqoSfiVe
	 Pmi97f9VoX2lJy+7gFWT2ahF7K5Av2CQMaOaEKjzQC/3DeuaSmEQXnXuTdhWB4De/Y
	 eFsQ3WGpfAlvl2F430R0dQEAHsZ27UBfEzMnmZVtGOLrqjEKW9Z+ihrgQuRVk8yZKL
	 h9M+zPhfKYGGB3wLRhE+jVgZgQI7VYzpSKyCKJ5P7evQ7/MRxw0y5iDKENOyz8FsbQ
	 UBMLfPec3MC3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902FBCF65E2
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942663358.24670.17965947747295010324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d4ff4eaa0320546ab8a62224fb69c65b8193eca4959737ad37da2ed7ad35d1
Date: Mon, 26 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769426633
