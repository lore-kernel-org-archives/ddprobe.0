Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C7F125A0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770481434; cv=none; b=dM9OYBUKYMW4Frcjat3TsYz+cIfSOj4nT720JwRgHyMMXb0z92QyxgJBASiNxjMK95wWBeRipJWQQCLcTDNS0XwXpHNT4mOtNcyFMjtrV6cM5/hscxRIbWm+DC2t2z72CCTDmuS3BUaOswp8ooUi9GxccDBcgoMyGZ0i/zjLuIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770481434; c=relaxed/simple;
	bh=YWDDQViC/LzrV9OUNf1kixCQoVjg1OCXlDTIN745TeI=;
	h=To:Subject:From:Message-Id:Date; b=o0kRuNv46sjXOtFirgX1WvCm6Sh3uFkap14aHFomfYtG3aVVIjW+KdD6iUyT0mM2KpLWZFPHrEe5BCh2iNppyB8iLq06eId6u873ylZJI+gj4AV4lIodMPxgivIpj7t5HV1jeVpYGOAWcPPJkE0touiTABIoTen5vYNvqRpxI0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jg9QQPZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jg9QQPZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8348C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770481433;
	bh=YWDDQViC/LzrV9OUNf1kixCQoVjg1OCXlDTIN745TeI=;
	h=To:Subject:From:Date:From;
	b=jg9QQPZxhvkqv3cPsaGgWHKsnjTf65uDEJrkMozOdG3d1k3lYySrgwIL+1ihAejpN
	 Gxb1ywmUeZWlVDuDpnUMLIeMzyXk85o31luX06/xTAd6Y1QgadKm/cEGiN07hxgwZw
	 zb6agZVcoIQJcco6S5suAINCBER9mNyefFyvjWjz7up5ExEs6OvtGicnF8hD/T1ctg
	 3EDdgy1x4noXAidL06DNV5ELd5Hma/jZdrVgykAiPLyXgg+dGFG5Z7yS6dZ8no3Mdl
	 JT/P4IwgwwQt1PJVId6ihS7yYD8MOYrUAoxkiOb+3hEyzWJZ22nApwQEQi12dsvgiB
	 5GrH6egRU/T7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FC9EE0AE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048143359.31393.9488863468055403910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66714fdf8fc26bf6f372ee3fa12ebcd6baa0dcf34e70bb4da9a01d2028fbfcf
Date: Sat, 07 Feb 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770481433
