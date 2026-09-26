Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D55A31960B
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790459434; cv=none; b=SE/zjh6cgm7vROtsUQQwO1v2xSxeySm7/R5cg3pG3/QyVMZzSgjpQvN1XlIrhcM2FwCVGfCuBF/f+FuFJWLDI+Ghwef9hNk3vPniIBgnlsFskUNThGlUui3NF24WsdENAMx3HfuI+MgFZ+N66Z6Hh4nodQPk2UXzi0LHaIjBRcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790459434; c=relaxed/simple;
	bh=pVBiylPewXvXonyidI6nR3RjKLx5LkKec3S/5fUeqHY=;
	h=To:Subject:From:Message-Id:Date; b=SSDFW1F/6rpwIFIQlULbX4Bo7V38qPs6G2FmhfW5Y6Sh93QsaiN56OYX1FkmsmY2VtwPw8pX4XJb6AtEbOOm5SIzAtK2fsEGi4RpLt1hcbzXdkZb0kIWCcJIQPkf6Q3GiYTy+iEeCsXbp/uDmxamb5eIbz/LzMehMYQD4C5pqKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjuNyZ6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjuNyZ6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38DEC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790459433;
	bh=pVBiylPewXvXonyidI6nR3RjKLx5LkKec3S/5fUeqHY=;
	h=To:Subject:From:Date:From;
	b=PjuNyZ6GJuPFBKHdCtQdfsghvpg+wV4yVeISg9gCsiu1Re8MUblQ25HwqJfEKcKoE
	 9iuHyQKrDxKIjnP77i3Zu+O5Uv8sxSaVyfooa3K3yt2VIO/rCyoZIacdU1Y3Jk+0f4
	 FS9abJQ0QJmpSZgX7DF64yAGTta9Q0T7Bm+ih855nqOA7mAHra1JMCrCLLrFEGjTYI
	 vg6NpTShLTvhtGyXGuybYASQs8pinWZScjXhg1SkXrXV/6BIAmHL+5bSPe+no23xuW
	 U7Jd0aL9rIm2GDXqD27/pVB8SJpt/PozIS6CH/ie6ZStm9YB3dnUxK7zBPAIgjKzKD
	 VnlU8k9letfdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3558C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045943369.10945.2730667160676014953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 269c32011027d3a526083dec13a629fdedc5aa597c7ea5136089326c4a74013f
Date: Sat, 26 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790459433
