Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155EFA929
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716244343; cv=none; b=cIa4hBjYuydGdDuk+rNX1+gwzSVC1QsjU81sg8al0FcHE463JQeHR2nZaelXASAa1UvBAiZbLqB7zm4w9st0RumnagO2GCyBAPEwnm3rcmnoSQTdrulgM9CWV3EYOQ7UWqkgoJZUxa4jKK9iEQvi42OCz0dwzeJ6N3WCjDFx+Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716244343; c=relaxed/simple;
	bh=A7HRWwd9Zf7QubUxCueOJ3WfUwfst/k+R7ucGxnYazs=;
	h=To:Subject:From:Message-Id:Date; b=Xu14xAdfOzB37KRuR0M4+vN0XPG43kyIVZ0QKzzChGUND8Acz6XR8awX5g8VMsbyqAXJ+wfyf9cnkgR/4CuZDWrSXCy8UfrgUdBGWK0/KsEARtxzQBulyEWLyY2HZ4iQnIuUDaCL5tx7YlwFJNAO9PXZqFc2igkNJX60ZLb/RqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxPLQsjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxPLQsjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0EB8C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716244342;
	bh=A7HRWwd9Zf7QubUxCueOJ3WfUwfst/k+R7ucGxnYazs=;
	h=To:Subject:From:Date:From;
	b=CxPLQsjzuL2MZeaJCxVbOLtXQWo/lq+evgLMAbr9c+0TzYqunILdLbEU1d5Hfbo59
	 Uv2CdOou4+JMPoUZSXp1zurmCzanxxng7e4eAngnLHXDaDS9+Sg+y4pa8QS2qMO1ww
	 YIjHPW3Di+SRif+klYf30w617I0Qj/ipMjFcSt+Zj1+SO6Y8tRIJr4Wi6ye7n+G+gl
	 UNLmoSwzfeaC8dIaWl557D9xhRURYYuLh097RautSkDqppADTHViRRauo3K/27R7DR
	 nDD94Mtw8AnDLntdzRbqglZnO3s3dQtMtT1KcQaxzMkyISti8hpZyTYX1xM/s5+Ng6
	 TJ0hir8NT352g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BC5C25B77
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171624434276.21534.13875250171800780719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a762715c1edb2c70607e64a5206fa5367c42be2d23073b9a866f05e440260e2e
Date: Mon, 20 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716244342
