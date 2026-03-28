Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240C8375AC0
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774688094; cv=none; b=tKakfR0Q+OFgj1SuiClYhDZ7f0XjovlbU3g6xXXgXq1ZZIrrU0ZOxMuBAcxZ1Z6EcfgJ22Uvgsiae0SpXetv0nV2bEcwfCKjMg/m2opsFDKUDIgPDx9JUtuXIWwCF33OxcxgoJwYQb21IYCVjaUKlYiGPpMJ5qsWdAC14I/BuVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774688094; c=relaxed/simple;
	bh=RWzGWxMeDHvM/iJWLwkITjsGgk242H11y0AZ3VeYQVA=;
	h=To:Subject:From:Message-Id:Date; b=E00zjf/2qr+1oTgx80ihkO3RthfQ4MYtg7FW58cxF4P//5KmZQuCn0PntWvoc7mtt6RxEwWTgFTp+rxzKMQNiXnbR9AogVuB6krjyFrPNaGrTvdH+PkZAeuuALPjheMbldTS0B2TXIbTJNNbkdzSYkSYR6H9y47nuDtFKauINmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNJm/s5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNJm/s5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9492C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774688093;
	bh=RWzGWxMeDHvM/iJWLwkITjsGgk242H11y0AZ3VeYQVA=;
	h=To:Subject:From:Date:From;
	b=bNJm/s5s5oAmWcv7DQYIeOey7s9k4qobSj1uM9O2btuhHZx2JAl900KVODaq6tVua
	 T6Rbf2cPg0tD141Y+Ddfgi6MwIy/6iLe7mQRtGNsyjQ0sU1Bhz0kHZWFkSOfLxPw/t
	 cvpwKqFYpmTLOIhg9DmGWS5RRLTIC3U5bTsFEahR39aFy/dw4k7AzxehAREydCxcd2
	 WmRo4ni958NJUxuVcXftCOaQQULaldosLLJC9GljRUHClkr0JdXclT+6yz4ZNavv4o
	 ZE1w0G/1xjtQc/m3B/Wa+IOb/fL083YKdvvtP8ERpc6CidceIFpYlpKa9xgk5n78t2
	 ejf1z35PjS8ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D8C10F2878
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468809358.26280.16814651477211228653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2dee3561c362d32f80a2ff0ed6e197e1a753bd7c5649f090a965b02cb3d843
Date: Sat, 28 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774688093
