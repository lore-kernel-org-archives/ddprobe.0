Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3397D653
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721479554; cv=none; b=hUG9YTzfOCWUuBCBy2jTq2EYtKqk2RB3Ku5k1IBohER3fnULcNCALubPn6hfq6W1pD0BPsnyMGpTKuTO0AvzzQXg63vfBS2oTQwyBIOc/iVIHvE8iHyQ1D0CNOai82mFtg7/5AOivnV/xrJx72PniF629RSZ8Gg+MPAiQDUuOfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721479554; c=relaxed/simple;
	bh=EN+KOPa5LZ+oH1MuM/5i8LJWI6Le4en++yhfUNHCnws=;
	h=To:Subject:From:Message-Id:Date; b=a7Zo9h/ZXmbVZnbOISMXgbvgdtf8C8Q3tEyV5lBIEwnf/CNYNxPa8c/nF+agUsbKIUjADupEKSVz+HCOw5Jpf7/QZAjN1OikmfgyoB54qyRGSkTad7vCkxC1J/j0cqauySEwO3eRHZZSJuv9sWSZwLQtCr2zNNwCdYUsdKgHmc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFx2Bh5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFx2Bh5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29AEC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721479553;
	bh=EN+KOPa5LZ+oH1MuM/5i8LJWI6Le4en++yhfUNHCnws=;
	h=To:Subject:From:Date:From;
	b=QFx2Bh5Ai4sK/JHKa7odHDsP2Q7M5AsOmO/gdWlIOmmIixR33oxC/UQ6oMvpeD1RQ
	 uXvuAKj9MtPK6F/OBPKFgOjRTX9J4P9kGrGP+tcmE8SWZQXnUAVjfMRRbenoQMKDMj
	 MELWi3WQZ+OwkPdVNaZmYAoJ9A4roW5SYSWTcy1+Cl8GedLsRW06E+B4uGcFChjHKy
	 vHov2jUMnHxXwkfvkyzRtdiJkNysMoHBLwoNICFabgK51ftON1/sHrGMRAfD4WR7qR
	 cheV8UdjvR/NRaQzHwY6WqZm7wDG44Fe5sTaNc/zuAGDASh2nj2DuqBET0EU8W+3FO
	 /pt63LzwbJgcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97576C3DA70
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172147955361.3633.17260764884396976753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89870b9d5c7a4a0101024fd159d039be2bc9b64e7a0fc73d57c85c86c8d8b1e
Date: Sat, 20 Jul 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721479553
