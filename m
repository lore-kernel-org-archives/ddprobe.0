Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D6B36213D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780349674; cv=none; b=sbBM2cypO/dg1F8m6ck6pKWelawpCMT4D2ALgieburZ/XGcHZNLlAysLitugx3kSVW+JTecmRYTZa86xinqjKCXX82cH+f/PicdrUx2p5gQizDfaUYR3rKl+dYuNQZ5wBPmHfDpcHLsuYgQKnbyMAtZJx8wzhZJ8lNiBxzVLsgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780349674; c=relaxed/simple;
	bh=qTZIGVaYpPa/btVYy9jGgj9tRbwgidLQ8PdrOeaMPEc=;
	h=To:Subject:From:Message-Id:Date; b=cmVoj0JC3mieDaM+xyfSiFgut5xRDMUlKQdJGm5cHNGM6JG6m/my9fkGVeDO3jXq/oX//bmDjPWTBktdA4AaiWL2E5JcTssmH2CWlL2ogXorSnTIDC5A2mJoOBGLhzW/o7hIHMjz80OvnFBvzG58IaVdH80Z9ihKT25SJV4qW7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwXwmUHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwXwmUHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA866C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780349673;
	bh=qTZIGVaYpPa/btVYy9jGgj9tRbwgidLQ8PdrOeaMPEc=;
	h=To:Subject:From:Date:From;
	b=IwXwmUHa2XuOp4TQ/4Ja8f3drRQKf3u2UjRfUX4mELxUsE/usmuf5UzcDgKA1sw12
	 Hg26MlfjzLhXmHlmSy8UvHvNfEfv+XoL13RmNpiaFDWay0zTAXF1dgrY9xYy7zoWEk
	 JWjlKkhcVr02kjH57GfaVLFBzo2MkBJ/CzpDXoH9j+FMY8IJJI/sI6kz6EWNXGrfWJ
	 icVrPf3RvqUnr6gKiWuzZU1mqbaUzZPV4hNFei+3Dvm6/UqY2DsjuRLMg3PnzoI3cu
	 W9OM8L5J1DwRV002pZarS9yPg108DlFXkaqtE89yO0541PPlD+4LqsY1+McnJEulYD
	 PL3zlRs0EgY5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEC1CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034967376.23279.6546555990518070442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a25bb50077067abed82647eaedeea78a94a247a725b4860e46b1c2eb70053a
Date: Mon, 01 Jun 2026 21:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780349673
