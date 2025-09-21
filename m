Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D1B2D46DB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758461395; cv=none; b=Mc6GI2PRlU+9PhgelF2eDzX7ny1UEt6nammwCGxw29JZZq9/us/aSKI5I3ygZi+o8wruvSMfMIVqaIeIcXQEYyr8CuBHct9STTbZXcESCDiKUU03IyM9OPyuLAOp3gcLOPUb0sk3F4KQZNMJ/U5OCOYfXTDbi4npLLyee47MzAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758461395; c=relaxed/simple;
	bh=9fm+CLyi5HZ6oUJu14+61uWGHaF5uEDXLq7NJ7957rE=;
	h=To:Subject:From:Message-Id:Date; b=D5cQxfMSQuCm94NuSosVgN0bVbTDxaoaG+7dFYo2VrmQAwrRqmvPwJpfUg1DB5Tk2zK3MljHwureljERUkMSUN4j/Xc3UFpt9qqpl0EHstjV4ZxdXR8vMgRmoBVJ04MEktj3rLsJCAik0U6HTfW085mSEp0RIvQ8/pYTbdnMlco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgkpfqYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgkpfqYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6787C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758461393;
	bh=9fm+CLyi5HZ6oUJu14+61uWGHaF5uEDXLq7NJ7957rE=;
	h=To:Subject:From:Date:From;
	b=MgkpfqYjuKhg7KfqdHq8MrgWkuEZj4cwluo50nwM5mCgWYC1rGigmEsdwjI46Y8P6
	 Pnaq8hM7AsCj86r+1Xa5rWcCUdMWVRaLlTudg0eQsXdMV2J8ESawPcsiFtxz1PxHgu
	 Xzyjr5n9oGTutUfyBm3bjOsclSJrOmgXWeD2320FG/li+bs2rgtZ8UwvVtWmn81lL3
	 g5iQ9tp4e1P3DrcxSmEKL5R4j928HMznWh09GqWStI7DdwOEdnBOx/fMitpr3P/Kd9
	 aE4R7bqvcL5L47/2wSodW1SP3pQzOm2tysVsspF0wvO3bLSt9NkqTsCSIXlSMVBA0H
	 OBGwu92XGJwcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F43CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846139357.3120.11670355568045358294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c297225e948c04687f9652bfbd5f8a0530484bd44ff38495e2f27f8c534100
Date: Sun, 21 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758461393
