Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3821429A9C3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787061034; cv=none; b=PON6DlqvH60gMBpdehLxhhY4qLMneCKEA45eWnOdSgKJS/AizM+aKoldFSzVdv94G5e0XxEezGdhnu3HNcy+9sYqyJ0YwvN1Dh9fklwhg8/maP1Sb5tGJW/bWrBvd4cRjNW5B28mz4MVk6kGAs+E2mnkzpRuRbgklztvZ0sEyGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787061034; c=relaxed/simple;
	bh=gfYmJppX1lyloknsDy1OFes8ULiEWUb5Vmyfw2c5Qnw=;
	h=To:Subject:From:Message-Id:Date; b=Cx2ZhQVzQC67T1g69fYyCjPevGngj6MfMdPvzAKd8ax6lurgl9IpvgG22vM2Tr2h7t4y9LnpbzwJVr3hKuMIpoq57JMBzmjfHEfCabGURADbc7px24ia5tSQtqSfmIlf5PMi8uZveU2VGL/RYfWn4INxoX4rEJycPvjGQ6Ro3Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIqguunI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIqguunI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15D2C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787061033;
	bh=gfYmJppX1lyloknsDy1OFes8ULiEWUb5Vmyfw2c5Qnw=;
	h=To:Subject:From:Date:From;
	b=RIqguunI13MtDf4lIkJxqw40kbroBRAkX5i5PeLOwyDHio4Viv39fiK7tbGTH0PbX
	 FKD2lbWCu4KqmElKwUYGDgYyZUFft9aT7nDBfp5X8NNdfMTmdtFOVMreiA5b5HTs3h
	 WNoEG7GJgPTJn11LKc9zqdapasyEX4Hx2xJTOxfjma7JKF94DG32J8LgvAFxE6DVIJ
	 d2s/NfEbtg4OQGwBr6a8DpoAIlm6bfsNzu//S49/GL86LDZVZIpksA5oX6cRXdSw9o
	 CjWlltPonNM9S86lBtgGkBj1PX0oQjQCid+DO9PnVqGBsp3NwG8wV4iAZ2YjVJsT1q
	 zBw0L6khML4Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE6CC5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706103369.1900.3275715010424386867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1328b172edf60f18b65bb9d68122897f8c33c58258edbb3bffaa661244d91708
Date: Tue, 18 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787061033
