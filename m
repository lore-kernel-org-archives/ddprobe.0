Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5672571BE
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774286094; cv=none; b=gfDSE9yt3AJW7pLEgFK8V2YgxCmMBlzMy1ROLCkIjQMQy+3ZZuquWxrRe8S45qxezuu/VARtAxdWbSPaI+VP9h0dnIqqIp2Fe88ShsCnv1+QKx5Mpl5akSMqP2mAN2e+lZB0hZG/2AWD4unTQM8d9qinHM9h3JCO44ccnZEJa6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774286094; c=relaxed/simple;
	bh=gTJZavLMQjbTzaJN3SEJCeMF8jigkfUBNHtgPkvVjhc=;
	h=To:Subject:From:Message-Id:Date; b=FeTAftT3GOVmzWMkvockYV3r71TujONF7N5edcQVqQ2BLV2sin6QEdo6LLAlosYXJbEG/go3bvnGNDZoAkT32dyGecCwm7ODfDx2+I4NeNJBsgGo4v+edPtqe/HiWSSjPgOHjx7VRgaw9AlyyI+UkTqpunxehCfOf1LbeJt1cAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljGx4Qla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljGx4Qla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DE9C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774286093;
	bh=gTJZavLMQjbTzaJN3SEJCeMF8jigkfUBNHtgPkvVjhc=;
	h=To:Subject:From:Date:From;
	b=ljGx4QlaJwDv598paBXY9Pcl015aRbf5iw47+M7CJBZx7Kcb5csOG0Nl45ZqHAx87
	 xj84TEyryNB5h8P1F2E9VWr9VxUN8edIZ6hIpMkxVRS9fj6irQqMwUMCI7mRfjRTbi
	 Kh+xhwpHh4aRve20ewpdihz32hBmwTBwPQjGO/CQuZFn6+3+c7VubMD8biVljouxTD
	 eWJCDp358PN2mt9017a/vrMPsv4pOQ/MEEW0bw1vqCzUJuSZL0uBpyIozZqk0qqUES
	 POd6gFAM0GKUNmuq2oUxwj2bOIcn4Y1SYRUX6RP3lJYNVkoIsu11MJjzAUNR10bXHB
	 HlECWE7o/rTNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92798F483D5
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428609359.26550.10507304747566496787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3be49d1730757def62bbebabbd42ca9af940ef5f38d4d72f2391bd9d74505d0
Date: Mon, 23 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774286093
