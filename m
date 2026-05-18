Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD8F175A9A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779123634; cv=none; b=Txw6sXwLkM5pzaGnkC219+pqG3osqpnf4eMyjBZYN3f17TevEKa80wVwa8gXvCobwKKm93aDjQLh3J8SkuVE8NOhMknkj6ANcDn6YwWhO1xx1T06qni3dyBV2Rlhz4FAhq7OB+fsYuT2ruQ5wew+sR9zmM7ikyaUQzSAp5Cq8c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779123634; c=relaxed/simple;
	bh=vlhceYyFjggfVwoy8zGPy3BZC6t6eKBhvipx1o4HqGw=;
	h=To:Subject:From:Message-Id:Date; b=Lco/RdgTKew3E3GblYhwoMEejry5/+dbLZXOa7sqX2FEkqBYedLiVIr7baQ+bdVWIYSdbR3MRlJ0RUosV8ZbzwuNGc45hqsLqUHtrddpxGd5E2I5B8mu35MNZwLuVTArIIj0apafUGueGh69JZ1h2LK1kcQ88Zij2DvJePbiYpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkCOoEHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkCOoEHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DE9C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779123633;
	bh=vlhceYyFjggfVwoy8zGPy3BZC6t6eKBhvipx1o4HqGw=;
	h=To:Subject:From:Date:From;
	b=DkCOoEHuaH+7JTAoh/VYMJwWTucHJL852Og623Cx7f88+/rvQ7oblzMwH2HccO/i9
	 h/PTFUsbGdWVLFXc8HMtq97voovCjSMu0c5LtBMtRFjx0uKczSLzhdbuCN2SNhr6Ij
	 rZUkUtbDimvk6bYa6DFSG8B2b8RcH2ec3yPQq1HhuCRcUv0pYpXnonpLP35nJH7M0p
	 dgBQhBl1DQiV6ilkny1y6Qm3MQNoZrOrmm4/7rlqdlzc+iKUBzbBYJr1IJLtTKBTNe
	 AsmBN3jucyzbF4dWZN0UosNS2Z4CP+KwexUEMpmCgMWah15LM6qyCpnstbvjfIiMPr
	 h4IXV1OC5rIoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA529CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912363368.7108.7246714718039643768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d90f777a5296de1d8f618375d5802acf47db9467c149385a2c15e34f363994e3
Date: Mon, 18 May 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779123633
