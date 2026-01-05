Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E39E3128D4
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767601434; cv=none; b=OEWszWx6N/0F0h3MFBC0p2XHGkH4SHGNOA9GWMonbQJTpd5Yt7UBQrRNsSuEptiyR4sOcDEkZrvao/DV7ctfyva0G/g7pLaVhW5PfajS8x6tDOZPNejEkiMvumQN5NbCOfLRTRU6cD5hMq47ZFrTqFCtkrWFzl28TZIMAxc7+d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767601434; c=relaxed/simple;
	bh=8LFlYCTo0gZwOrcfQcUNyl8CiHkUy4f35eG1N3BAHcM=;
	h=To:Subject:From:Message-Id:Date; b=aPzYHIBEnPZRxfQeoM+Qysptr4oEDCFmdV5sP4aTPcewmGl1jyKwRwKw6PEd9+BRphLLRggaCEt5VOSNCGRTCUkkoUTKjag93ytiOxuPexLDZ6GYg0hgepfjhAQCcL6iWJiu0epfjYPFyek3SlXJwWYHxTTSvyLIDrq1kwbP9BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCE5/o6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCE5/o6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40E4C19423
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767601433;
	bh=8LFlYCTo0gZwOrcfQcUNyl8CiHkUy4f35eG1N3BAHcM=;
	h=To:Subject:From:Date:From;
	b=hCE5/o6c6SSFrdfXS6gL2s3okB//6I0P4nznrE5JuDCKnjD7lJ7vWCbUnMOCy0fss
	 snSSTVvY0E9wicv4DeqPQkuptGkPehqySLMVWRFzXJLSKPvuB3qEktjBk4RFLaKXAH
	 UCT6bQjbYxElqhkHg2kHXPNH24HxZknJqPB1LUVS7dTyGSx4jibAppGP8OWg0XqLyf
	 Hd29fxRqeetiwWTUip1RyNR9rNXlD3riHyUD9+GO6IZ6DOzaa/8VCia2SPvznlKStP
	 UKw+HeJiTgq8egLFiqPMRinxS1iRK+II1qaaR3Eb4euNnIXH98GN+WHCvSBSW6K7JJ
	 04mJ6R1eFosqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D50C2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760143359.31210.8376978879144793239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63cf3c3e7bf9d1bb468ed4a51eeebb2ab1c7bad20a97214b1ebdf0a0a93bbb9e
Date: Mon, 05 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767601433
