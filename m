Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC381FCC73
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730791554; cv=none; b=c+UL3KasqhLC/gh67RTA8Wz9Sv1dmW6NdUc2qw3b7vR030TQ1e4uvlK8NPFuoaa80a9F2KHmg901y5jKQ2cfdsqYvsJKX+fdFbFRt9xttHLqHvCUL3+Gv1/dqnEf2grbU28v+itNqkrt8fUZfscEXC4spb9fHNy7pqGke8ct528=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730791554; c=relaxed/simple;
	bh=6aFB7q2V+SpFDTXpTKBzbyItJ1TJQUa866el9NwMVsA=;
	h=To:Subject:From:Message-Id:Date; b=rX25MTb8ueaanRHaj+Mys6vT3p+lRKz70SIeW3CBcCrwSNA2fMCUw6LYWnJ9TlFyMxIepgKX6OXIoi1smBpyxTmujV6O3c16xo+N+Ir7DUI9dIgx+cSmfQOwkzOXmv987J/r+OorrMiA6IVIePlcml44BYBGkdXM9nxpD2UR2kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJ4G1JfR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJ4G1JfR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A96C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730791553;
	bh=6aFB7q2V+SpFDTXpTKBzbyItJ1TJQUa866el9NwMVsA=;
	h=To:Subject:From:Date:From;
	b=cJ4G1JfRWwxZxxss1+MqYj6zgIb1tLWDk0D1P9EUbxSAkSSwFHTdp4HW63T6mSpI+
	 QHmT/Brrlen1TXYEoS9mgL0efiqN+SezMjDzb7e+qN7WbsbhMtjaZi0iKiEdAPEwWQ
	 XSvXrfzKX7qy1vc4x7tdEp8kjlQgnlAYb9JhoJm4tJxCtM9DVai/IpYf5l/iHA2Mwp
	 jojd4Rcayfo0QbH6Ywpy2XiZIHNLdFY/cYcDnXTxVokPDeVyV6T46ZH+Qj4GYA4l0h
	 MK5C9h4WSU6NI23d1Uf9kypwr6Wwqbbe4biIoA7wztuvpYmEVEiKjNEx2N+PFBamxi
	 lXiQ+2koCs5ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F8D1CA3D
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173079155358.30300.11413913541108176186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a4eabeb2c188f164c6d1315af4c4469c109ba620a38ed61c093362ea5dcc47
Date: Tue, 05 Nov 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730791553
