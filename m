Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4C717B50A
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780797874; cv=none; b=uAc8nbjAE4HAy7ujAPLpvdgjariRWYViul18hZAzbZm4tOf7hffe+KaYCdgwpSniJi8Iz1CyheL90TGacDA3S1gTA9AEw7M9s7FC/lLRGEv1fehOG1zDGVgXltxbR7HU8xhfG2xjof38vDAoaUAwN8v3lfe+vaQxKfBOsRHS9q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780797874; c=relaxed/simple;
	bh=HrDv6YxajTXdJT/5TcUsrlh/7xTSVtk/9eWlDlCHGOE=;
	h=To:Subject:From:Message-Id:Date; b=O0B1laFtURzY8qTbKRaFcmAIpGEJvwY0Rm2LUUCwU5L/YBWXnAZHucCu3onsE4KOAw+On7gpbnyAl4Qea4n4M3kJwaoxZNqxNQbyDsKuFsJr4+q7fAFJZ8X7uQuol/10dcy/S/YqdsJ7M8gSwleEDb4j3M7nCDU2eEpXAU/PeqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsBhdkqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsBhdkqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B14C2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780797873;
	bh=HrDv6YxajTXdJT/5TcUsrlh/7xTSVtk/9eWlDlCHGOE=;
	h=To:Subject:From:Date:From;
	b=NsBhdkqTX2g9whCKEOgtQD037E2z6iTsoYMcCUG/ZD//ElVkJH45Ob9VvzpHkJ4gD
	 JuZ+ctvqUo5ysUCxaV1gqn8SyiL39BKzczzWwOa2eFjoBBgQuh5TrEeHznaWxFT6x+
	 tfHDflgF+Ar2ATJt20ghoLcT995ArMfLGCx5tVazhFa+tGJEIO6OSD4zNJYnX7DGuV
	 2nMZRQRcAriYqTL9H97jU/saUdAFtHqyR39HHJWdkf01yD3BrE9GiljNEIvXv+cr7S
	 ev0wiVLmTaHWCeoTpb+KikIbPVyFd9ZKAtKA3xqBfDd06M2vrm4ud734AIWbCvEkZo
	 Kmh4ZvYzQNb9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1750CD8C85
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079787370.13000.16154658097008831725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d98d6c34b03fafe229bd2be70bf2777624dbf8d0514b92083d09c1d342f059
Date: Sun, 07 Jun 2026 02:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780797873
