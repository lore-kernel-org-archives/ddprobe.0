Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1401C2C08A2
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769870634; cv=none; b=OSTQqAy/TgOaJ5nlGK8qt/wUw8yzVmCyTXv2pFY6Y+sy99PuF8uGKS5K2H/Qsh3uIYhGeGX8jdp7q/Ept0+Zj8QPX16icilTAn30iJEcxBhqOlIIGMgeV/VVgiivhdK2NkCEyB6lt362NcEEDWG9lHzJ7sK49h60fcctJy23m2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769870634; c=relaxed/simple;
	bh=QfP+YW57N1ebuofXMPeqMIpx9U1mlQzDeFowzogf4Ks=;
	h=To:Subject:From:Message-Id:Date; b=DgU8oMdB+hycTHGR/2ZNRmH7j1WTlY9lZXJVQdgCa6PgHzYH4n99YN+rNIXjIxMgB11AZDc8Q1UAoxpaVbRbxBvPHVDiJYflLpsyq+iEMk8usa7ZLGnW8v2fmjfDujk4VrZPA5Nw66hbBWs6jLu5DnPf9Psw5danzwPLh7f5544=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6vZ962L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6vZ962L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A444EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769870633;
	bh=QfP+YW57N1ebuofXMPeqMIpx9U1mlQzDeFowzogf4Ks=;
	h=To:Subject:From:Date:From;
	b=q6vZ962LFxL7kmJ0QFdC5zU7GHpH1YaF6fV0Iwu1Lkxtj9tEr9y+TFadMgZbFQteN
	 Y3Cn7H9j5uQr17vzwfUDzfNFaHVnmSISavf/nLR+BCjYuubbIPZYdM6TaHv/i4qEUL
	 WqXdYCqodDJI5B+z5IFownKuS4f+4UMVFAafpl+s8MI1UCJCLizxQF6gQbI+kuAkMM
	 mhvoc0KIkt5ByMo3XeevEUEsKZCYpIHP46rEgUB5pTEnleWzWCJAIQnyTukpzTg0Pa
	 I9fM4FGSkW7lCLGwTtCZdGetM5pHw7NCSOrQrmoTZESg4OsZL7PTK0GmDVx17H3zBd
	 xRrAoL8AhbbFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92758D79773
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987063357.858.1673933966027153140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58c185ed2b7708e59d1a2f82c6eb8241e0b751995e2de1c60af94371ab4b7d2
Date: Sat, 31 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769870633
