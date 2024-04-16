Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BF512EBE1
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 14:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713279563; cv=none; b=VcdnAWjgaKo4+miCUN5eTrpj6LcZWl3sEaVUKFFw/Bh9UnS3BQ9Pmr8GxLPVtwFNwc7Wm1aOkwg+nh+T1SRt6Lza6//LkzyV6/TTuYe253IiXrC6mA7OZVD/pra1mMw726aXf30r0tDr7iqmgkURbMOFu9bB5V8/Jbe2JH581r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713279563; c=relaxed/simple;
	bh=SY+fpKAubcSbua/mPsAC6sEpPmUFYuD5HwiqUsHvlJk=;
	h=To:Subject:From:Message-Id:Date; b=Udx67i4eC488029iAclFM1L9UZl01iJDc4WipIY1c0ar1M/PJTxRXt9XyE4vbTgqsM6w52pnn95324Hfnz38XoegF8+OtDBFwBLSZcbNooNglbsYIsYjSByxbBkrbWhCaGY1Wr+RT0Cj+o8DRSrdx1E+umCECH6F++ZMJ5Rrvfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIct2cZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIct2cZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DC2C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 14:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713279562;
	bh=SY+fpKAubcSbua/mPsAC6sEpPmUFYuD5HwiqUsHvlJk=;
	h=To:Subject:From:Date:From;
	b=bIct2cZw7SYVL+W+2rhyhE9wYeNAXlMpBN90FKdfd12S+AeZ0mxpvDQ9zcWZq0dV+
	 llFILWKq8qEfloJv6hISC+g1j4qPa8KlaCAtd4PVomW5d7WfmdfmfzhaXxzryCGo43
	 STRw5wfhlwpFkfgO5RSz3VbjledoNxCkQ+6T3tRQrep6etLq9ddXPh/7F5Ia83nUXf
	 AQI796Z9KHoGMbXL7H1qKgI+7HRP2hdx9FX75k0fmKXtgZlLCf7aN6hrSzfSoRbCLD
	 P+3zn78vh6oGX1OQ97pHIuLZIexI0y70UnxNV4j0bZEeXnf1ok4ivXIWTknSYzidDU
	 IVu6PMl7OIGpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4559C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 14:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171327956279.10939.12028296103496158797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c902412b91312f2e2ad1b84e6bf6d34809358121a990aff53c85411b4ed791d4
Date: Tue, 16 Apr 2024 14:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713279562
