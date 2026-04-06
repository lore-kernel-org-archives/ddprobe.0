Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3224C4A07
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775453734; cv=none; b=tRuSJT7sMsPkVMixHiJTI43CLhBvKpunT4eCXR3gaTgh40f/sSEmX3lkQGzax+/vtXlXVAoKiPqBiXQtBI97/SdWoxSSxkRCqfGgtz5VFLyLY6gLGOYdvCEP1eqUq0vrVu5haUjeFD9OsWWbNns7vDilL2YU6qpRHuD1u0cgyDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775453734; c=relaxed/simple;
	bh=19bAxhx4GuU6fXJBTGv16SFaVcF6ZZ8qWVe2XHqbuaU=;
	h=To:Subject:From:Message-Id:Date; b=mQNU/koc7qHTDQmNHlmso8QMOpYL4TGn/KdmQndbx8rwNXpMLp5bM8NVbtr+adJ19VwexP3q2/gqG0UlNGhGxhvOsBA76vfX2OXE8TKuAalTpxdPGqxnbRtGh33sx/PiMz2V45lXc9cwOLmcXr9wlzNBFD8xbS4TjHT7esqblJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qI7hwZCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qI7hwZCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7455C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775453733;
	bh=19bAxhx4GuU6fXJBTGv16SFaVcF6ZZ8qWVe2XHqbuaU=;
	h=To:Subject:From:Date:From;
	b=qI7hwZCt/4wibx/dRSfotaxf5Zi5UCdsvZEucYHfleuMfxv2RShVs40wfJ0OFc56u
	 HAA3182iHBq1bd9OXYO9CgdqBd5dUCGvPhXgMvjvWGdrtWqSArysPlnptU5KR2Ja4A
	 sbmu1f7N66A71Ey73gJTtrlR0F8gqAjEErnIZ5lzZ9y5QI0wI/08VxMSlZdfwhUglZ
	 XX1vFepk2cE1LMQde8GB7+8DwIIxc33IwKBP2CbAD2oMJG1DD3ByvLoqbRfcFZpGbl
	 EeiRJ2vqh4jUHSKqEnyEuO335lCp6pyfi+RsU7KQP98kGJvyNuyYxNKQbW3rOCprIU
	 3wWlAZsCaxlUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FD3E9D83C
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545373370.14489.2856696923243287091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12dea11f8d5c13373a72eb582b15817dc9644b61821aec7831c953e890eac1f9
Date: Mon, 06 Apr 2026 05:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775453733
