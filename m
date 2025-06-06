Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3951F27453
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749170994; cv=none; b=adSNZtB4hVT6ptm3zWrphQkNl6v5lq4OhVbw41JuZOvAFwphoniPN/D3oMxWHSFDtud82/HKYw5R9ie9OkQbGZ59FwBxhwGdocniLRkctYcU6wrGkv8jnRvBVCYwBZdEJHxTNzwDcWvE4VMTPI05k5s1OscfV9BPukRVRcpUovQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749170994; c=relaxed/simple;
	bh=reGXQdJqAqdfTN9/2we0g0s0iOZeEIHXcVM88AQyycw=;
	h=To:Subject:From:Message-Id:Date; b=F1f00nSVr8zziW8/Y8yI7y45JiSKVigyg8+L/I9HpLRRmkLv4gJHtrQraDOf2lzPtKNQ8zS7jY4zPVjUqUyLZAbdEeIxTW76LPkITJnEU8++ap7sqsT+DOlOBd+1L7wSQU7OywIni7ygZIBKjHjM5y1SO0K/nVv0B8A6hUAIDIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9Pc9PxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9Pc9PxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9022C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749170993;
	bh=reGXQdJqAqdfTN9/2we0g0s0iOZeEIHXcVM88AQyycw=;
	h=To:Subject:From:Date:From;
	b=e9Pc9PxKxLKAAqcTEDhNDIhiPD6YGGqUmoxLOvmEVy29eavNPGeK5yakcfImmv3JM
	 Om8z9lQF+gQ7Vzwq7Wlq3zKd40PP0dQpISbk/N3xhysk/xS4JisJrgonrz2P8rIEbd
	 up/VWaPcAZSrG9iSbitDvZV9I1xURuxaC16tzjqzTTScTzfbcDU7z8bx5bR1oQKs66
	 hFwOyvE7g3t6hH/duEZnvsL0FCGcjwrdNltPbD3ZRheyPFXG0TYLnIj5wA0gO8f1Ax
	 dlhtfkc+F2m1ID2thCfrg1j4MdtUH2FP4x8qMEcnbA0QkRUwYcruzy5n3NsBESc1Vb
	 70UF8FggTASNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934F4C5B555
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917099358.27336.4524834760030476703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8c285e421d308e4a8cde4041937bfaebba0b98cce805dfe1e143d0fa2d0795f
Date: Fri, 06 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749170993
