Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E43130CD97
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756246794; cv=none; b=LmOk9R6dmSl2Y3ptRUeoPmy3oab2091gHpXW31S5Qnsm1U43lu6MRArQW+bUqksKbFNasT2g0EGeCAJpbvcs9zSORsl5kgdv6UJmlE4pASn6lxbqkNFvtCDlcLf1ZB0Z9xjKFeQDVQD0EaYC4aGL3A4Fr6svujMH1RVm1yTux2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756246794; c=relaxed/simple;
	bh=IC6mwDSF5AExEcn/KSO9u405UU4gmW1b9E7/qWgTci0=;
	h=To:Subject:From:Message-Id:Date; b=OHbEgzh/Y4vLV2Jy/PBCT87bOc7A0CZn8EjZM8AE3DL4yRX0Iid1Ofp7dELkQ0NziCojwz7YQgsZT5eYUWfbtADk+XyGKRwxFniJKkr1n9JMEfO8V2Q+PyzthNT/OxsP85DY1FBjo//9pzrYj4VF9KZ70jkwxH4UtebI1SnKUR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ay/iPf+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ay/iPf+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E8BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756246793;
	bh=IC6mwDSF5AExEcn/KSO9u405UU4gmW1b9E7/qWgTci0=;
	h=To:Subject:From:Date:From;
	b=ay/iPf+B+fSAveK1sqjCgn6jOlGN/IlQN/gjagcPrVm3dcsYjoGSIkVnlCWpIz4uG
	 txVfYWGDgUoZYEW3PC5oQ+DpJG8vO15/D7AutjJ75n0wQgu50ZyZIrLznCoKhn2LLi
	 lTngpH6u1DPVr1UikwM+BYIU7+fxbef07r11xJix6kHM9jhGDKWDRcIfemBMAeKvHg
	 YFr2Jv4ZLhubuNHJbAeoIranqQKUIstbZCok4SzJKsmz1zGV8lELCjAirve9W1dSyC
	 Qitn+jz16JOArAXc9tCt5RXVy9HJb5zh8A+OZcNT0PkUQtL5/YbotWADkR6V2bL+bi
	 r1Htk2CjA0F2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF4FCA0FED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624679357.14768.13856718481598267537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b72c6a273d675867183165de25df8d1cc09088b59fc9e3d3a8e4950b836a699
Date: Tue, 26 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756246793
