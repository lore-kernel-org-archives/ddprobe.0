Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17486352030
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783972114; cv=none; b=D4A3w3jTXyED2KumAcCnIkrZpHUxvsj0tdBIol62tWc+gBk3hLWh0dNlO2t4Ns2Q1ibHK9STM5n69sXIfvfffVsMWXx7es//ChBiYqQfv4Ezvtc+SUXUEQYCcZungBzUEAM+Qu7W5QlHfNyxIezleOcGyPVkNugen0IbOAH5DHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783972114; c=relaxed/simple;
	bh=+rPdh5u+UAN3QMoKU3CpYeB68/szTyNxBh8vKq1f0LE=;
	h=To:Subject:From:Message-Id:Date; b=S/nTqYfqDX6CfdJcblI1oAEASW76JYMA+RTU7ZkvVt0ND2uSzVrmEDfpp8e1XfAEcFX90lofHqDehUVV9lZJIZvIs0Y0qH0PSBzaC1MU1uQLfcZURMwxO9j3iyDSB582mvN6kBSIHwmfQLpPUjpZNTmG+PO3AKyrLABa98om5zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRuNcw2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRuNcw2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2BCC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783972113;
	bh=+rPdh5u+UAN3QMoKU3CpYeB68/szTyNxBh8vKq1f0LE=;
	h=To:Subject:From:Date:From;
	b=vRuNcw2lNYY/cZT71mZ/DlKJESz0xC3/IH3WCFgPZ4gl2Jw1x0W/AojFoktjsTQha
	 O3pRU9kWHLD3kHsdJSvLQbhUrNEQ/UQwmAg55ZdYgoJRPwz5Zkkn4hqq7HLj4zGkoA
	 WCOn4kDGO5I28cu3GkIHSCH0FFNa+cn//v4b5rIS8ocmequDGndHT2WeS0fbFrv2jz
	 74GQZMz90lvgv++8UD33KiFp00Did7vsQc8SKfmFGdAwC3B4zip3X+lSv0Uaz8gUhN
	 Vk24FfYuoCjkPTcHXgkPwp6PIeGMIwxCTDey4WKB+T9rhjEdc0L28mdtHqFEPMRQAK
	 Rq5zJSVzttcOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E84C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397211368.1266.11661147740860518091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332323569fdccac768cd0c2d693ee2a58c2770e831149b824403161db6665ff8
Date: Mon, 13 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783972113
