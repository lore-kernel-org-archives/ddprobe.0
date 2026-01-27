Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DC417A31C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769488434; cv=none; b=CBqztxAJ5yTwJxr/Bvk5MI61ufsHLuHd2z5n1ttuJ+jrQYlHZdoxN3BfFmheJ/3wCy/koJ1uj8g843QSU/DrbgF4q729mn+PG9wrSLKJqFft951drE5NDQZL2rRj3aVgyKEQYo9LisRukf8qTYI/VWCsOnoQbwQ+qoGrLbARU+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769488434; c=relaxed/simple;
	bh=HMCj0e9rbamcQT2g2l9PQz5FW88kQIiSE2bMi2ahdl4=;
	h=To:Subject:From:Message-Id:Date; b=jhl0Bu0yzvyB/Oe+CsNhxaKc5mfbIvRvlFwCD0w+iluIYAtlI5AT2D56Lpa0H8pWuamLgjxHeJb77+Zb6LhVkzacRoPMVLm7VqF/NJGb9cjMBzVd2yAQrLwouE9SGh4RGSDP1n/X9+pEg9Wp5G5UkN/ULhUVpt0oMm7x/9aVBlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWKoLQW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWKoLQW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB329C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769488433;
	bh=HMCj0e9rbamcQT2g2l9PQz5FW88kQIiSE2bMi2ahdl4=;
	h=To:Subject:From:Date:From;
	b=hWKoLQW7uaFk7baqtLwfw0iHS0wqA4yfXl+kenLk14lSFEgaELuRmfJBgUMErEKgJ
	 uWrh2o2rI0eUsb/zYUtiBCOBsTkIXyEVrQtv20Vembymmj0h8f5ZxKT5HYOW7Bf8kF
	 xgpZwJYR90bzJeLWbwxUiMtoB38cXmykBPWkbDdIXrHNf9TurrFOsFDTzBb3YMalmS
	 Ql3vab+nvDoBFaEDZfRmUM+SS4AxXu8yirETiJHvPs0GlWyRdAYJCLaB5kzMVQNXSZ
	 8DdMuaj2gxJ68Y+a0qidKGTOFoE3QNC9WIVi0/c/O+KpYeNFuIJR/qX9XflLDCuPAZ
	 twDZXzII3dhCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95249D2592C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948843358.4001.8035129282985507539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8826a1b962e2dee25920b5eca70e8b6a3ab599db76595bc9f20b13e01fcaded9
Date: Tue, 27 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769488433
