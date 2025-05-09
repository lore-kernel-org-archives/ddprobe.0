Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D872CA6
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746764394; cv=none; b=XWh51oAt8UPKMoDYMR6Kh0tmH21rZvWylhWB8juRz8JQ7lcMkmrLYqXlafTxcKzxMy7rNi8MPUuSk9WeJ2YtlIC98zMJhlNfQRZEJIdMhbYQbiF2PyIOXugXcCwkSLXiDQ9BW85zCyPwBeoVByc4Q1R/MBgJFqbgjrHNoqGbo4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746764394; c=relaxed/simple;
	bh=0J+366p+kkkm0UGcfRBjj6moz044n0J1/1wyQceDg/M=;
	h=To:Subject:From:Message-Id:Date; b=WIX+Vp1zSVhopRj76rQeMecbBEeoDb5pnfYRv0v9wD0Vuj76bpLYAyhTCSisPyysKyc+TnNmHuLKuTtMRX7wDQzh6yIUSvJWbHlI9LLzwbfrLmLhdE7MWlj0bVoNOXaSC7PMCvj+g3miT39Eqsocw1Mue5eq/Otha8m3DXoYYWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1tjbjOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1tjbjOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7738C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746764393;
	bh=0J+366p+kkkm0UGcfRBjj6moz044n0J1/1wyQceDg/M=;
	h=To:Subject:From:Date:From;
	b=S1tjbjOWFz6C8du/IilrNnOycYekzAiiRRUMW3UG2tkjKOxnat8l2TPZV6wqs7Z84
	 LFnLJqtdPH4yxFl7ThjxAinv3u31/W9lTSosSi4lNi/NfDakP6GasiufKs9cG6wIeG
	 WYVAntSmnLik4FI0a6LrOvqvaIqZPxsTsjdLWfelfvW+KQAaUdHtGwoROK20xmxOoy
	 Rk9VrK4mvK0nj+aUIu3t7qp66nta5s89OrYBV1YbSMaUaivC4jkWnVytnqLJ0I2PBP
	 UOV2sgBvHdm/Rl2NtoE9G5tsMif0fEjubpHvj2tTJgKVM5tw3VaYQ1kMliWUp/VNA9
	 ENFmXA9AsVmTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92842C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676439359.7819.1713171799434645957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e7ee53f9193319eb0d8f8aac1d781b0ae447faa9a42017a3c89614e15693d2
Date: Fri, 09 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746764393
