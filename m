Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5DE3537E5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781155594; cv=none; b=iapUgxDn4fn3YPE20mVLg/fnMVi2XM7rp64eiTSfHhNiRXktbfTtA+TgTI8A73Ko3W/aY3f1y5ijW0VO42wHBQ8A3r+PlgJQTNfIah33uYfDVSgSzv88G63bmoBkd6UPXIG4xuqNqk68CAHpRigeoOpwfO4TkqkRsH8oYcuwRts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781155594; c=relaxed/simple;
	bh=dgV4e3EF2IjboZAdnJunbSrZhtCV8lNuIsPnaiYyWi8=;
	h=To:Subject:From:Message-Id:Date; b=pP+RsUyp9zdEgHZs93/LdZZL04IrtRHqZUrvJ0ExP49YV8kE2NRL4LVU0sU/+sWWOkfBdasQQeti7lcYBkBHC7TVQKf2Jd9hM6VTllb+6mmuMNACCYkGf3UW5Ta/YmQHFYKOe9Gnrkllwra1pfo31Q/i3U6jUcVuy+GxCSR2hV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQ4BdMRF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQ4BdMRF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D1A1C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781155594;
	bh=dgV4e3EF2IjboZAdnJunbSrZhtCV8lNuIsPnaiYyWi8=;
	h=To:Subject:From:Date:From;
	b=YQ4BdMRF7DgeHYxPmiPXjIrmACnKOHhQKgzssd7vJ8IrzpG+qujwSsZNIbDbGQLuR
	 GvCIVjI+yqrIGMWxMJU4MoprGLAEA7/viKiMVb/vuyaMBBXIPN9hL4WBUyMKPx51dO
	 1aqx/KmMJAuUuvPwGN3dTczHFj14qP3/R9PG5IVs37ALmAGE5ewLOHvwYRh98tVG3y
	 vxz/WvYCSOJSwaqfFQiHAAlyv5GuD8JbfNRpTiG7wEAiDL2+Jb5ENeB3WXcRbPae1q
	 qbeffGAvAI+ylhqDz+COuJBQUokDR5X1ErgnKZow7C9gFqQFQOIwQ9ejKhPH7IePkW
	 LeydW9dearIWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB96BCD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115559386.9967.1773056350724689101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef357e12c5282279dd5745d8ebe08ca4c3710eb473afde84236a4f39a15f7836
Date: Thu, 11 Jun 2026 05:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781155593
