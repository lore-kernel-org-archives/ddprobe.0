Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8122A2C6BD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719742463; cv=none; b=qxlUpIAVQQ4EQTQCNTK1gixmJ+ljLIGbXkgRvSGG2xMoGy4Hrv4TBo8f6vLzBKtXcBmdfzbzJIH5NbFovclcVlZX/kEJHO84YjeDgWCRNTynRDkV7shc+1AhYQDLLLBKkQKtI6hFxB9ehBHY32hi/RwhQxysaGvCIGavRN1rbt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719742463; c=relaxed/simple;
	bh=SaMquJvORtVVa2OV0ne1pD8Ch6a2an9Am6C8/1ekVrk=;
	h=To:Subject:From:Message-Id:Date; b=TqNMilQUdqIZIctNi+mxuGo60MtGI2fuNE4T2wO7stCOGHnipR33kEiLQEJVLIGWtnasit7AQnPPspjKtpuQhoZb5DrtiKaVUkuCzdT7VC9+lA28bAB6HrBU1DUkayE+7yX3H3inTeJwljSLyYNVZfCvV0I5IMDOJaEVXuwH3rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8meGaFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8meGaFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4176C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719742462;
	bh=SaMquJvORtVVa2OV0ne1pD8Ch6a2an9Am6C8/1ekVrk=;
	h=To:Subject:From:Date:From;
	b=W8meGaFbYSJe2ULBUlwq0OPHcNKM24DurM5Hg4UwcdP3Pqgb75h3wL5POGH7bhw5v
	 SAjwQH8r6UXk6z1Lr9VeDJA81/rs7sZzp4C9rrfC0YA1a36gYo+aJBLD+epqppL6k0
	 Uppfy9shm9moUAGrcapaiqK59fc9jgGjMLFiYeVG9lsqi9mqJJn0/SVjamMn2hJyVK
	 i9ORWhY5mIMCK8p51r/uPsi8xdRoTDL0lCzPIXGlIACvd9mL8/aeEdzDBEUzLIS5/v
	 PDTLjlEaVL/7V+8WG04U1i3JdyqkPB7DD1dXY4fgRMUgFT/44pXkHvY9URbKeYOJYh
	 CTfm117MzK0OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC34C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 10:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171974246279.24469.15549679483027088502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c79ef7703479509eac9960d0f8d00f7ef204ef4d4ff5f68fe24680d1826c3d
Date: Sun, 30 Jun 2024 10:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719742462
