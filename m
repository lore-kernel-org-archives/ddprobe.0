Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D14525757
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722536754; cv=none; b=dOt95sLpfIti6ZLtYYFOP3Heo0LfkPfsbpXuR3FZsh8iSCLODE8kxq6TrdZfU1rFzZRNrH10teXsk5VyIic7nuZv5yVwy+A7142kZ/6ZJAzkXWScUAsVqkerbh2Qr640J3ZbkKpCGL6i4rLJR11U+o77Sw6m+SOjGCmdL2VCtV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722536754; c=relaxed/simple;
	bh=Ss3jwhUF4w3mzWTMkoip6YpGQsMGmQNqY4gVZmcvpdo=;
	h=To:Subject:From:Message-Id:Date; b=tpph0tgRiTm6fiVeGN4b1z/CPAwRjKaFbqlHSEy/T3W80qCg1ZyyNJXeQD6ZnREVsgLgy5a+e6M30/V6IoTxTrEavFxoXc2dq+ocMFZxMEotS4FHBSzOyQzz+GMKCoMdvwHal4bEPaBSxozhW6rT1bAmQmG5opQIpCrmRXg13DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/V44hJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/V44hJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B164BC32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722536753;
	bh=Ss3jwhUF4w3mzWTMkoip6YpGQsMGmQNqY4gVZmcvpdo=;
	h=To:Subject:From:Date:From;
	b=i/V44hJgVWi2xdsUpeey4Crqal3t1vDOsFZghrzn9vF4EYclSFY1ueq/aGPYAxYqk
	 q9nkRWa+SUEMKj2qobPvYqfkpTKyiKHau3RNwBW2v0n6jytvVHSetW1swf86VAazRV
	 vCmw6jI882wd3wgI4Fnks+PZ6zRS3GtbeZavQ+sjlqAqttXwLr4a0QKHIh5xXEhp+7
	 FMNaGqDInkqKmoNJv1plBM1OkInLnSlzQpMjRtNTawIWGXDZ33MBKtWBoZ81YelEvt
	 NXfl45Vv5wT9dpi+ZGF1tZhPn1oDlkMBQFsjd8ZHNch+iMw2bS3UcxiR7OfGugp23/
	 TpGmAr96n57Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3DDC3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172253675361.5264.7401107140060893421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b6c3fbf250003a56e08d2965218724fd935ccf5b35ae6a999fd3b55fa6a2e6
Date: Thu, 01 Aug 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722536753
