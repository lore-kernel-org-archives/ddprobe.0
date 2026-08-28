Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DE73F1047
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787961034; cv=none; b=hWyUmJh9OpM+86kb5BvAooZWhc2eybkpu1o0jreSYppSjkxTbA976WaURAA1TpRaoLW486Q3T4RitF53/mziKrpOQoOFp0YmTZJsoA55orf/sH35paNh6WaGSpcVRALxHrOihVNJPosmLbv4TpZYMzRQ5ddOUZQdxZmVjukR40s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787961034; c=relaxed/simple;
	bh=URFb+gNyk8zOkpVFznYpwi60t02gJg3gTc5U6nluE3E=;
	h=To:Subject:From:Message-Id:Date; b=RizFdLpRjiKAq2TuljErz1P0BDFU6TgjvoZ7YbsorDs1ONVTW4m5/mHiCiXd1/wjmaDzJifP6vQv/g4RYshxW+J2OSFFxt3Hx4rJTt8HwQzRh5b87uiHLLgMSoW8FiU56wzYHh5mDTcI8aQESrkMpJ7WQLuSjQhuBscc81YdFjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ep074e2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ep074e2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FECC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787961033;
	bh=URFb+gNyk8zOkpVFznYpwi60t02gJg3gTc5U6nluE3E=;
	h=To:Subject:From:Date:From;
	b=Ep074e2sg9Lci4ldssrQljmUr69g67bFq0CQm48RAw2q5Ys4aKsCcWnjoOH+Mrnm4
	 4lSdRcxJoHZdA0xP5+DG1GsIupbpX3wOI9QrRoscjC9HImyEVtuAkwV1Sol9niOaAO
	 s8RvWM2KzcsylW0Hr/AKrISE/mcXUrzc93jQ9AjW4aHVU/LdrWD7BVZbHGX5/pNZcO
	 F/E1VjEvUHcEwo3wnNRI1HXGmwwNcwje8ElcOkccnG6uP3nvhD9Rjah5ZRElRssmZo
	 nARbGjaqxFUkSGMY5hb9BLcoQEU60GXhmC4dY98lxcNZ4BkScPjFgFha024JI+1PvF
	 VmTlnEmEmI0fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0D1C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796103368.16423.3103038396844500314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21fab4c715bd3bde8c2c0424a497a193627276789e50ec6d6f34e218b0fa60c
Date: Fri, 28 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787961033
