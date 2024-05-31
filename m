Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB8E7C6C9
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 06:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717135463; cv=none; b=La4LEhv6OJOyggFwFa6ACl8jS7tGhqPslFrmUumodM1k56kEDz8BWx8LdhsWn+tWYf10dBIxdvHhA79yAWTknrhfmiWk/X2rFdh5mi78F6Zogrsr5rwWa3eS9Sp5J7I5a8FjJfCe+BsHa8NWs9d0u4K1KuZ1c9AqfLUuGMfYsf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717135463; c=relaxed/simple;
	bh=IWZPhkWDS7aDjrzTC3CP7xIquer4kde3rIVeJMelphw=;
	h=To:Subject:From:Message-Id:Date; b=O7a2ty326U50Tt+FlzHyZ3WNzgFTR6oIf0i22X4l64Epl/ZiobwPiQx3+2MOwA/lpndRrFx9T1Qkx22rA7KyRHZwMbyStFeE4rFLnOZdvxF7kP9Xz98fkzxpUXqsCJsQcBBMMuiqGYU2nJxsMdkTzLbqBhxZsP+rNuebeCMIWcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/rYhjhO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/rYhjhO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8E0C4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 06:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717135462;
	bh=IWZPhkWDS7aDjrzTC3CP7xIquer4kde3rIVeJMelphw=;
	h=To:Subject:From:Date:From;
	b=M/rYhjhOkyINQS5/hO56prn0TsAciLQTTaP3nMobF7XbfGJ2vJoZ4QuwfJgTND79+
	 SiV5IPhBoBiiPfJAzUHtdvOPNDqUle7ZiOD73veNojNssUedpl5tbZhvfTSCbTek/+
	 J2WiZYmGrD3GQ2KUzoye+Y1Zv6p1uEeWS8nfPYje8MzZ/Xa5uBTOBqR2nCmmpAR2dQ
	 RZSIbTInld7pNF9Bfwykv6fBvT5/uVqWLZ/XVuPNocSVp2xlfJfIvw350CTG1m5PBy
	 vNkpKQeOtOPwP2ok4BUIAvQXHV5OR/5LIUq40WTHXK3PILOEKqR5IvBMx3WAtkFAi+
	 Rm7Cuzf7pC50w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3FBC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 06:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171713546282.9720.1700153028648084871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d9931e03da8aa3ee12585d9b13ef4379d7adaca4ef8944f52a1f878ca10bbd
Date: Fri, 31 May 2024 06:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717135462
