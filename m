Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085031C3BFC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779347434; cv=none; b=qNqQxZIUzkHFJyg51O2SjLFr130I1AgqP1kfY3St+tsFEQXErs9QdJ7IwBGeXzMNQShseRvDVkRVT939WdVBcBB0qkeOhX0xZmaAw86kC2ZuQH/TK/EAlb+OlAkGdA8O068w7eU+RDnCS2XbZuRdr1N9WnZoUwayqCmG5GpQV+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779347434; c=relaxed/simple;
	bh=RnWNaykD2HSn1hww7hvgWxfeJ6zxfC6PUS71CRHyWXc=;
	h=To:Subject:From:Message-Id:Date; b=WhhQ+jgdXd21jpvAl4Pg4UceJhdkLYy3DsUodUdlUOPF9HQCfJh3SU7CeE6YxiqZg/jo/PF4NTfXmIHp9pdZgXjpehzXljwVqREya+RnyoofKy57Gmaa7BGWsT5x9NCpLY4vDohyYDT8PRWGLt1VXL5JHFdsW8El0T7+HHMCc0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQZL6Fed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQZL6Fed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0D7C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779347433;
	bh=RnWNaykD2HSn1hww7hvgWxfeJ6zxfC6PUS71CRHyWXc=;
	h=To:Subject:From:Date:From;
	b=pQZL6Fedqq3sPZb1KdeyOb/cXKI9AjSD5m8QoMdT/XqSwd2QdeKzC1nKDqrrAkmFF
	 sqzVcAzoU96jmp9JvCC5DvBxVgQmnWNKCOUKH9IKNSOQr/IDr5pKnpnV/aX4WvsFWx
	 Z5NIcBaFmwkpghJ9t6dPI/FeuYddDxM0qrgV4slxUmMW/axzwWiDQMXhZ5Cxp7Fk2V
	 WIVhFm65ElYP4DkIpeW2pABtDy9328QEdZkeW34cz8tuPq2ku2kXFkyaXKh2qUekNb
	 sr53vXOJTkBF2+VobfmPXNnoj0l7wJO6vzdmzsk8yedQ46Gv/TVKiSDgD6cZkUOcZG
	 qQ+egP7pZc+Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2CFCD4F3C
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934743369.13589.13791748182892832566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b897f18f462bc2f3bd73ed0813bea0b22b7b5f64a4213c2e5203088e50f01d
Date: Thu, 21 May 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779347433
