Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB0121516E
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753210796; cv=none; b=QPtqBFyr8ny8yUX3AOplPXCZYlOE2s/HsQNdGiMPCIGsxH3jivriuxbWOSao5voSr1e2QQut4H4iZlzMuXOMz2mh98ma3cIjqZntvrWFnGs3TCJGxyyoOBxPjZ0N8Isqv4LOfdg+gAUj9ejplN0Fjbtk2SO/gciiF0zxGqAvyXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753210796; c=relaxed/simple;
	bh=g64jwAjNVp+i9vg0TUM9t07p3/MePwIhPvYsulhH/S8=;
	h=To:Subject:From:Message-Id:Date; b=BQUuao68X801QhAEnTbrMNgBmsdw3mAqCgZLnYDv7xR+hK10+60M9rATQvBiFhexUk/FcAuLHuLqzVsnOA81XoDXepBKFkBmx37nr0t7w0GS9Yj2ADJYyi4RjXC5cr+MQj2E9Pg2vQ3AD+/CzoZRkAxKwm7Hd2ko+cWr/0LpS2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3gFWwZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3gFWwZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CC7C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753210793;
	bh=g64jwAjNVp+i9vg0TUM9t07p3/MePwIhPvYsulhH/S8=;
	h=To:Subject:From:Date:From;
	b=G3gFWwZ2aQ3uSQ29revz1hWHqCt01SW539tSWvfdQx9ygdcRoY/DrejO4ZG8wY3m6
	 GwJ6Dcw4ah3FSfESDx72H84pAWkEmYUi17RGevvqzs6+FwJiTpvFlEbwE/ypao0A2W
	 gbIFbFowxICeToLlTDHXR9GY5aSugd9KJzS2/vBf5g0CmnBI2F94rDlimEdOJc97zZ
	 qhgGkDk3CoMywtD/lsdtbcqFZ9I2j/nln6xpNx7JQ12Hz41lXJr5Bpyi1fzdJAZhQ2
	 B4ZXKH+0x1DaygFD1hPka+pMVwY7iVuX2Y+e+YfyQchitpuY8rnDxvjt27yvruzxzh
	 EOYzI5/ODd1EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9222DC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321079357.31511.4233420390289410159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b148eb13afb76d9a4c4e6f1d86012f6609518018ce328991ba80fc27f2bc1d4d
Date: Tue, 22 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753210793
