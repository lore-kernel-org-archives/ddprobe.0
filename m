Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BC8280A2F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757765394; cv=none; b=RJlG7FFKn+WiT7oSOeAnGeuxNbIQCcVW3u1pF7vSJBG6zFD138us4VQSuHFdc98pXFIwzbjkM/mfP+s1CYIf+WKiTwDcCkdOPvQds0kcJZ929//eF82idUHJj3j0xvNg0I6JytC9ISbyJZ5CO0rfFpcDlE40vsN/hKRQjpu3GV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757765394; c=relaxed/simple;
	bh=ZhkZnO9kDDv0TDzgycOY2v8IKcxU0FMzW89X7nc/Ewg=;
	h=To:Subject:From:Message-Id:Date; b=ULU4aqiSefR2hpvqRpzMaQ+hKmR9QWK4z7v8HyZTcDT1gS3M3P2b9Sh3i4xtofwOq4hZUKLX/yhExlixcCOB4yFDKK4Fz9p/aJM+CRYp49KfofkKPXral/ztRwXAKrpZuIWgYGBoh7d78ueOay6tP5H45lX3e3vhhtTwQ0NufGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iriCvclK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iriCvclK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66CAC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757765393;
	bh=ZhkZnO9kDDv0TDzgycOY2v8IKcxU0FMzW89X7nc/Ewg=;
	h=To:Subject:From:Date:From;
	b=iriCvclKru7l4BUYARPanYysRAaiHWlXNQDVbHvMPfNV/DjyMduOX1haAacww3rIr
	 vKrPhAV6ile8wKEdhqyXDg9GinTKeKkPTa1aMHy0ytZkwxNE86EBheCkGK5M7RNfJE
	 vRYYV4OJuLrAc99dsCSEEuopd+4p4k1VLlSZ7L7Ut/uwYopYzfYzvOsGzCEa3+Pb7i
	 Zk+qXGBVfXsZXdCvQ7FO5CH2IhiEIbzfcx/AQqs/C7cQCjWu9VhgwfS0/0pVh/b4b3
	 x+QFfCB+d+Wu1/wQRRlZhEyPKVEgfFdXFV6X7iMOiJ89zqQb+CwQnN0umydx7gCSXu
	 bAWvRHmc649OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DE9CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776539358.12895.400389786062975128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1a738478e808de64f0c36cc9dc7499b2a1ebdbb6bdcf45d5cedaf2ed7253c2
Date: Sat, 13 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757765393
