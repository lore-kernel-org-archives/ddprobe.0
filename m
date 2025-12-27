Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4F724113D
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766835234; cv=none; b=UglJzikpodnFQICQmGpjTBwSjJsswia1vfrD1U180jycbhE+VABY66lq9dRS0OWEof/l5e0kjN759nyk+pUfAcU0eHe7NzJbc17KkQAhdWI546LzzOKQmFmhsFHwTn5VoDDXxslTtsHvpGS8dTCOyWoWfCmm3vpL76egIicp7y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766835234; c=relaxed/simple;
	bh=hk6jUpCpxzbMGvksloaHFgcg4NSyv3I8AsnYb3SXbs0=;
	h=To:Subject:From:Message-Id:Date; b=foLyYXfPm4O2eecdFXQiBPQ6k7Lgx1WiWmyaXOzg2rr69MVxVnR14KtpYtUy1ZnF5vfWuTi/a2NhQ/i5YipCryfFNGI7ZnwtraPAGHGh9E4gPTeguocwAUTB5QNCwwSr/7NlHqCn7cMIBwhN/W6ZDMjZR0FhQDaj+XVfUMjZDRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSWfQ4kE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSWfQ4kE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FE2C116D0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766835233;
	bh=hk6jUpCpxzbMGvksloaHFgcg4NSyv3I8AsnYb3SXbs0=;
	h=To:Subject:From:Date:From;
	b=JSWfQ4kEULa9vzR/xjmenb97mt8lPDRcP+FsL+U6yZCvQ4ZktlEGB9uTITwT2BgqD
	 0fUs+NPDdB1/UnAW5mZVh5KnmaP2/7bHQjD6lTMu1bs4/4TXwbLn40pw3e4g//hYrG
	 bFaxbS2TB3dHrGDzSTSAEESMjUK4+DA93HX1fOUrfxOFGSWh1Wj+AouEnzswLCWMB9
	 ezAC28/2O7f2q+1KU0I1GKlGB/cBqT9T+P+IbTjpCps8NhWDrUlDrU6Dsy4L4VRAQu
	 KoLFjiUN6SdPaf6Nfp6s4B180Gm6oZzr+fLLHNEfXL6FDu0a4tyuGXmj/kplH4hG/u
	 JJOSbjnC3Mjkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98813E8FDDB
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683523361.20227.15048537532005382891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 173bd8a5fa8323fc5297b4d28a91a4337cecf828339013dc06126694549b9d1d
Date: Sat, 27 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766835233
