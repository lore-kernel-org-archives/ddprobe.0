Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279CD349B15
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774384494; cv=none; b=GZe+ngiDBWiNJLIcOdW+4VeYRQA5wShBuoh8uPCg1shmWa7U0GXCQ5vZwTtAYFnewryfKow0Yple1fVl+tNT6WIY/Rg/wkxlTVwiQpq3lpgnSbwBD65BhGUA8WI/67hNvHvtYsESxGBmjeXQg//TlWoGA1EdrTp4NYEL+HQjWeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774384494; c=relaxed/simple;
	bh=Sjp4kCwhNSE2wqpzkflFVeRP+3weumO67a65rxV8uTk=;
	h=To:Subject:From:Message-Id:Date; b=UwGG7wsfOiwQYRnOWqotjbLlfRg8/89WHcfvOqCFic1JAmGlrGOd9a8S5CqDTp3kKeHtcx6yil98rF25R4xKfxwDcM9QSjdqBJeU5wYTM/3xzhKitGWRHaRxmm1GxDItGnZoiN4Fb1lgExcao6PVQrxKgva/GbFBJGLYd/uzZks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAMASHgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAMASHgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B857DC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774384493;
	bh=Sjp4kCwhNSE2wqpzkflFVeRP+3weumO67a65rxV8uTk=;
	h=To:Subject:From:Date:From;
	b=FAMASHgYZMCdUJ3S+1uequS0o7jBSgaL1+6SKJTxvBmtH0qCvjags3WjwtJycCFeC
	 kHymAmTK7kyUJDHWuWLv/cqa6EBUB0Stp25pcNaTrSfkxuMbNHxYKUYdLcizUbVU03
	 bSnOy3O3DJDbManSJRtj2dF362ZdLeKJ23JorLTSifBm+2eny2wtba5QeZkfCWQS6T
	 yJ0lwmcpcc4yIBz61wPt1+wghFkJiLcUaju/RyAacrBmv7KhlhCiIMGu6A0IfIzbxb
	 2d9+OTQ3KQol7p3XgwlVtYtawJNrR9X67dT4wAmP+yYpbmIronq2w9ac5edkWEV/5N
	 fSL1RAS0ngdPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6496FEC10C
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438449363.12620.1817123754356356674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0699abd739c6482ea0829f57e9396a329af31489d6927949d9df18f107f2bada
Date: Tue, 24 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774384493
