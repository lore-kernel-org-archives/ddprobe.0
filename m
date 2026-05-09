Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA0A19EED3
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778330254; cv=none; b=MVxjlHsItQFU7sTGduLcIN+2NXVbQBi/xsnUSPFnJVU+C6eKwrUwesr4zwL4R7/f4GIQK3CjuF/b3tLn/J1EkK1Fwkp4LZ7iz5TgoTq2kiFk7od8LZOYwOGyTxoz0QtXhFtCw/8/i85I556VsRHrEy5X2iE6chQ3I+3Bol2M/4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778330254; c=relaxed/simple;
	bh=DJhyyp4l55NVHKUSoIBC4hVSiqqp21hoe7AkMET7RNE=;
	h=To:Subject:From:Message-Id:Date; b=OoJJaVfya9NWi+fssTBMZdIR1INe6ZUqpGbkDwJkN7N7kmHEcBFfRMXqmUk50N7nCqFH1e9u70vXfWU/7CyiW7Tjm/rs+pWtNxzfbbDnV3L03D6/+4BQEhlSaDIPZPnWjk73et5faZnQcmM8tr9g71PSnnCuFskGCIea3kTgD0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvnXsLCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvnXsLCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 21125C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778330254;
	bh=DJhyyp4l55NVHKUSoIBC4hVSiqqp21hoe7AkMET7RNE=;
	h=To:Subject:From:Date:From;
	b=mvnXsLCz7C1FPigE5wVlE0jxvRJ3Gc9FS3WCIkKV3jFdOVP73ybDk1u4IlBqziJl1
	 A+A12JXO8Vn9EuM8kpAe+IU1XUnhMaFtBK27vLQXHui1XhNZGzpeBUwscbK3gYTJL2
	 x4fzxRsvUBfCc/ExupWtXRoGIzqL8Uyi99Yo1t+DVOZo0nbmQNNmOgTMaB8FfSCh4M
	 SrVPJbWGMXEURA9KeWEUgkW799v4JVIseW/PrYyZv8S2T6cZpyrbmgeEfM9EUYDNi+
	 GmUYIl9dFT5QgoqfAmG8m2RuNdjVCDT2u3WPnoMtgpmRZ/lcRKpzVdA5W2KWUOqNwQ
	 +SSSKaUwWhaBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1251CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833025387.22339.5236740939627640955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01b71a9e51a3640b40dd1443c22b201ee9b0af0f7590526fd28213e49701914
Date: Sat, 09 May 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778330253
