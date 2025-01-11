Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0B31B5823
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736621754; cv=none; b=Qj66Hai56F1rLMzF17fnylUV9lWf4QMPcTgGAiiUR1Z3CRd+a1F8iGceaghbyTBji9JTExWqfO/FD9fxl9XPvB0uMWQDCjVJ2bQxIb0/2dFENvMbaGf6j3Z/FsdW4ATnGZS5BJ1yJEp70aUdpN2vLPwQ4QHkshhh9PmnXUeVI/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736621754; c=relaxed/simple;
	bh=shB46W1uil5bnsiKw+Ldkl4fP1Guengh0Me7I6HacsQ=;
	h=To:Subject:From:Message-Id:Date; b=vAFRAi2eNl6zAtRXOUacEjrOR3y/T1DtUzsfvONSpTG+AeiFBjoW8oLi0g9zIEX9vQYO7W4D9AexWfKOlkxtsYQDgFPGNG8M1KmCJiSCrIflSELmCsq0ANeXhJhHhucneLs+ybgXX1zsz4Es83Kp7qRQS/eSygjKpj1wJWGf/rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlaeJdbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IlaeJdbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DAFC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736621753;
	bh=shB46W1uil5bnsiKw+Ldkl4fP1Guengh0Me7I6HacsQ=;
	h=To:Subject:From:Date:From;
	b=IlaeJdbsThIbcdc+pgwx5UYCBkdp122zWinEGoQ6tRx7KjKgStKh7LY+EA9cguKAs
	 jt0RYAk/X6sVxlMd36ukU0bsH29UzkpprHEU/qCvexdojUXZgGziJGzA+7FPl13l0d
	 zJhmupSONn/6Wo274KR/O1vt5lTx5hyFn2/F+J9AELDVMCLcZF0ZHo/t6le/ylJw6N
	 5MOuxJCkBDoERZ2xo3X5YNBvsHQB7t0LYpHXqE69EEA10+eSHj36pkEemwL2/BrMOz
	 uYtQcpn7yhAcpHBhRM4fXADhkkJ/je4AEvdIaRekXhfEmTXs7Ny+YksDE69OT+npQs
	 fI9vpYjrdJbuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDEEE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173662175357.13532.15474876553089879035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c3121614fe172a4969fdcd6ad079d67e79d36e2af8db480c6952af676b98057
Date: Sat, 11 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736621753
