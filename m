Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271731FE470
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750631994; cv=none; b=RIpuZK88OzIaQ9p8e9xioxPoW7a0m/MQ9+1LGIHpfxzHdx0SGAeoq16mkktQG5QLr4zzxFqZ3IL/Ydu0tIE9p+B27/Jw73M+smHI1zPnzgCOQEUKdH3VQ8sp5fPJlRv1nqB36arxdpPpl0XUGRyylOtcshqhWg75g/PN7HOLrto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750631994; c=relaxed/simple;
	bh=/vcG/4AA5EyYNx9JHfgbK0ZVTh2yxfGeTbfTi6a/Saw=;
	h=To:Subject:From:Message-Id:Date; b=Nq7BscZUednguIbMGxmCg/R1j6XblYPeNk6s9tIvyNelgxg20CWCc9NMWG/KwvwBPwMoxS481ySRsNQqiVHDa86bFjeyH60V3fk/eaI8886T00RjimJHWTT9uCGe9jc24Szp71gilD5xcVOJ2qzbdRaLwDB3VrNJjJKE/wIRGTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJMQSlVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJMQSlVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750631993;
	bh=/vcG/4AA5EyYNx9JHfgbK0ZVTh2yxfGeTbfTi6a/Saw=;
	h=To:Subject:From:Date:From;
	b=EJMQSlVq4CAhKV7L9aWEq7nDuCD6v8Zcc1v19jTL+RFvftZq/rWKIxdkveLZicmnM
	 Ft3wSMNvtI2dJ8vS0LztcBNtnQZMMJEvLkUyTr6TnmPcYip/vv+jWpTKfjdO0oMAO6
	 8Hx3EE8GiluwfdUK06Ey9bGCi8Q5LhnU5f5OTyBGjBNx7NaXTP5juHE7xBiei2PLhj
	 r2WfMy3dsmow6KQpozUi5+TFHnspC1gLhCpHIP2m7oFrEmu1CEoYCqttUQVYcc+tXx
	 ar1qjj1Et61YDF4OtY2JoH8mE1HvIwAjQ4yUQeiR/CQoeUyU4Q1nqai7X2y/uANFnv
	 4YTFnto+ytUvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F725C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063199357.27953.3052398281168439688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c30401235642366d11db481dd0244a9d8d4f0da72cf76b807940941915735f50
Date: Sun, 22 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750631993
