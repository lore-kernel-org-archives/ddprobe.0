Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EB730E828
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788119434; cv=none; b=q+7FEZ8Ee/uXMpO3QQEfx39GXYXxcy1WiAfKkvm+B9nX747HGkHAd8aHCrel5zyhSRzx9z8sJefobUPXwmA2gLE73DLtcZ3JAypTTl+7Y5dw9AEYURxcBLQQNcgxOKJAE2WJA47CxTLLSsjQJV/UNA9gU0jc1FVa6satooiQ56Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788119434; c=relaxed/simple;
	bh=Laf0F45i2eJJoFwRra7cHHxJvobniCb4+0ZyyVo+/3Q=;
	h=To:Subject:From:Message-Id:Date; b=PB+xH1zKESPBt0VGxB/DH2ltQGQHxnxs7oG7Gyf94fdSd8Kzr70vipADM1vTXra5K/Y+ScvgTRCoyMoyxnWC8QeqknpH63e97pIerMq4dPrFC8/uPxkc00CuJrnV6pGVwEftjXxp6dNjlfynCeICKl7VO9UNJ7pGVZCZVufpZ0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsDf0M2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsDf0M2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5EAC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788119433;
	bh=Laf0F45i2eJJoFwRra7cHHxJvobniCb4+0ZyyVo+/3Q=;
	h=To:Subject:From:Date:From;
	b=bsDf0M2cp/8l9BtO3GgTlYF+j5bGe7yyT8RPfwUH8L8xDP+YbCr2e2fpEz4U2NvS+
	 7cpJQJOksh0mDqqWkksj8em+jToXLR5sNXjFi44BcWVLIyb4nZfj2x4HjCQYoAm3xe
	 Tgo5mv60YZOgBABaIaRg8Rj9m/pS2FCBIsVnfeGBn7eRnILG8DdIBjhA2hFN7+oHkN
	 OmdepL6lXShY5B2ufCrkNOlQNDlQKdyjC9KhZr3R2TzFkRvObvPS4dkmPOJDiqOmMx
	 AeFvH06BuXr0G2H4RuyZnXNafarTC4pSBppEjB4bSsGQcKin+indi/I2kvqAmERv2k
	 DZMPkODfY3XvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2353C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811943368.2644.6994307754025631850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9bab6a803fab3d0b933c45ec9814c13b203c343e750f838265bce4c4a093836
Date: Sun, 30 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788119433
