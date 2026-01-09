Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0C928980F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767938634; cv=none; b=K/n6oCSG1N1o975qZ3B4ASwFu8MYu27Tb57qqSnK0WQcjx0MsLtEmlC2ZJyDqWqnAIAMxW4lfJEAqkqJ8pmKP/GxFt2VVTolt6OkWLFeRk4WXiYxcoYT5IuvGaU0v7QSwnI16I9akCP1e5hIYgGvMIlexdcR/3gwpdhw3YRjpuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767938634; c=relaxed/simple;
	bh=wNOv5WbKQWXa8OcrgI5ocrcceB92sb8KFju//RvFDr0=;
	h=To:Subject:From:Message-Id:Date; b=AHAyGsVGzNBiEXndcI7dvseDZc0ws94EV7ePPZNaUUNES7qp1RSQ13Y/KFxwByp3w7gORXMcDdit8Y3wvuFilpy64vek7hTlqlvBsCDXRJr0yGQCXv27uUdixo2MNw7Y89Ivu+TApJHxCqAm7nFphPXwYiaZgs5XK2VUgo4w1Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=As22xb0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="As22xb0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B86C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767938633;
	bh=wNOv5WbKQWXa8OcrgI5ocrcceB92sb8KFju//RvFDr0=;
	h=To:Subject:From:Date:From;
	b=As22xb0pFAZVxS6qbWoVGomgpIH1KM49w/3W8GSQmZY/Uatp22wfokHHtdlB6wnEc
	 yaMcVNiZS4KCJXwTvma2WHvVCG1mu+fsQ79whyyi26ntD8Ld2UxUYUZgjYw9Ih6ivV
	 RvIKBRs4ZKiUi2N6U1ED4xZPmHQDBC1ZxTCEmDvWDa13c2rcwbxrsZXNAW2BIS8Kt3
	 /aF/2k+EsZ8OHMRz9yRCmHd/00OqK441i65lsl/hYRHWCD68TC45lnpB6DxGxKD3aP
	 19ZVKb9X6hkWo93iFQSvN4z9FzULh13OYzNKFtQld7InC1qHiw8Sp6HUGZpedG/JoA
	 OJHygVnBsDWqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA1BD232E3
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793863357.16174.6181872148875672431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da277010a5d62921ed09aa39a1de912c0324b968c9f76f1e203669b82ad5d36
Date: Fri, 09 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767938633
