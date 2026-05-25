Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65793358388
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779688354; cv=none; b=AL9jZEFyCZT0QXIsvT7fIYdTE6I3VRQS+efVeQnda8+Jb9tqJ4aeCZu+liHd1VxNNdL91Uh9uQy2pnRiM4o15DUD/lCwbEuCnWsDEX0hcRgoF3j31HI8PdxNNO5rE/ks1CccJyWAITyBzQRrE/lU9Qq+RQ3aK89SDI3Ijn/PMtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779688354; c=relaxed/simple;
	bh=FT/3kkHk3hko38DESPGsSrFng+4AVHFgOoGxjm+qaD0=;
	h=To:Subject:From:Message-Id:Date; b=NMcPj/Iy14IS+NHLGhjFvKf/kssee727c7V/pS51DZd1cGNLccdk1j9ztOecaZ0i2Z1mu3gz7N+WdsfOgYD0Odwcmxv+20QPc+XOmdK70on3ExOMlk2Fa+5Nyj+xfuM53S8xqp+QtEsZyVoFEwFALLj1ulO9OToL+vOdeSwbTH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGdGLci4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGdGLci4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7552C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779688353;
	bh=FT/3kkHk3hko38DESPGsSrFng+4AVHFgOoGxjm+qaD0=;
	h=To:Subject:From:Date:From;
	b=UGdGLci4cdBjbUzLo9rcdSoWcW0bM7gQyjPxE1kR13DaZH9gMWf2dd+y5trZhhW/5
	 RmH3bqFScK5b+ThnjXzCyIGQE32O70VSvFfYVAZf5R6iFhzw7G2qc2Nl5KSJYxfTRu
	 MAfoCf9TQhsMGDDe9iS3EJX419IVJ1rJpsTjGUHYp1iTEAd6MtEgOt/6suRoGqaEDi
	 j8EJxM/m6wlYU7bMfVdSfafD+x/ZRDUk/2oO+w0JLErNApOmiwcODspru2dPYbp3v1
	 2uvt/BgUcbddKII8CwLUZ+qIh3ijXx/XskJoWAk0HoAyIlsVBA80Mx0Sml/B1xVIhr
	 xy/AdpRXbu5kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B019DCD5BC0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968835368.12452.2078504383950417995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148f526d82fe7bd92c28c972b0af3a6650b0fb6381facf21d9c4cd6e6e135314
Date: Mon, 25 May 2026 05:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779688353
