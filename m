Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522D91C28E
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743934194; cv=none; b=P4CqCKdsTpQBMMeNfZexzXz/eIL0eCJNgK5GDlGMz7gnqIrViv04h35ihsCy/6W0XlQdtpwF+dqUfD6RIPwBc8d9p9OG3Rxe3ZfLx2wlK0ZuS/v5ZBg9UVj7sOsORMIBo2dS1pPdaD2Yf6wxLsrXH5NSMvP/+etm9D6xRB3bHog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743934194; c=relaxed/simple;
	bh=TDxG0NtnqtTQrwnMkzzEYIQ6E0GAei3E1kJS0P8IevE=;
	h=To:Subject:From:Message-Id:Date; b=etvkth1XORP66XAz1EOre1qSXjM9DVJppvhxli4rtJcpN2X9XC/blOiy4ikjBFZyF5LXkoAymNGY+ImYaAPxXnLojaaaSMT+sK6NKSSiDAkDuWmzKr0AH+O1h3wuXqoslZDldS1Zb7iFAET8Mx+sFNtpTTu1GyPEAtNLW20EfRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upuEP/NN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upuEP/NN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81DFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743934193;
	bh=TDxG0NtnqtTQrwnMkzzEYIQ6E0GAei3E1kJS0P8IevE=;
	h=To:Subject:From:Date:From;
	b=upuEP/NN7iAaWzyaC1zqyfA0x8fA2KZfAD2+DTxIQenzyuyRflG6jx0hS05sZKjtl
	 cJ54AfnxoKoFdCNwpCDluYvKDtkMtAIY6zrgBa+IshlMvO6QCmlbrf4h3gmkpHvtav
	 l/Z3leDJ86U4Dhr3sbI0BZgWxjO/0ty11EUegE4zhRX1vMT0zsElcs7Pf8pI5yWNQ6
	 sgcZs/mrdcaxlyyHTdMCp52D4wcqFBoX/FAIWyEheuA4WDXEoA7hRYvHcrSKZDy48m
	 SW0W6fVZSeFuL5e0LHJ3HQ27G20O/DDRJMgeeiexU18GEqEo3a5oQ6XNIdFBYM0kMU
	 WcIzmGF8TEzhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CE8C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174393419362.792.6491421387450040674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c37ee7c54919d78b7786f7d8170437a5ab7acd7b4435c50526f539492d956c
Date: Sun, 06 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743934193
