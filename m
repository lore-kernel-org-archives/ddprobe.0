Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C950B330650
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774303493; cv=none; b=S3CVuiI7GbYvtSlJL5ITyS/wbgbFfp3KYlis6n4xtMboBRoEsLyARofvoxR3V+fOxBC8hVHzReY5uKAPWxgtElYgK9vBdBSfPiaZ/i+WeVEWXHbZAbegEBhEblzNcEje4RP+65dPXuAqm32uC9oKPm2tNHlE0MXIBgpLEtSnPUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774303493; c=relaxed/simple;
	bh=f3noOTCqfnvH9VDQvoChKh/hLbz1S6qENLnXGqFvW+w=;
	h=To:Subject:From:Message-Id:Date; b=NheIYnszxZZgKF3EYohPjcaicIhNCZFogCp2DZdgmq3BuoQ42SoJKoOz/xIZXdup6ybmQ9z0xZTDhqz0AZNA/7xmfESfQw8+KozJJJhSHkNFsUtnb9l+4Uke0bEyw4MG8XFVtjKA3yEZVzQYM4ZVvnIpf7G8zU7yXxxD0cYYeyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBLvZ6YU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBLvZ6YU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6BCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774303493;
	bh=f3noOTCqfnvH9VDQvoChKh/hLbz1S6qENLnXGqFvW+w=;
	h=To:Subject:From:Date:From;
	b=eBLvZ6YUUW1dlXS4orrQKZ3Ru0AXFidPbAtox7w4T+BAN360lE98w11NX1/HZHMgT
	 s3tci8oqA/AvCZQudIjHZlqdlZBI5tIVZwYtSpXJ1HY/9Dk4m5TBxqHjvkDD3bRDIK
	 EfixpMgeq7IvOmCj6fgvYPWKSFNKo/aLHlLMDvu95GFBX6WJ3jeIZSlYehk74pgNRn
	 afynri5TlO9LJTOT+RJM426Pv+oVRnAYB5+RsYDnmdK1mEuejzw6Bt2svDDTIU0EZW
	 oGnS610XK+cmk01FbPS1jbr1PRb+QuUWfsClChrJ+Uk4Eiqs4YFDxyvGE0zCHJl4J4
	 wL3gdF4L6xmpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951B3F4613C
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430349360.29834.5186374064890707713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed1e429ccd711f852349adf99024b8640ebdb1dd4f474142e51045a7ec5ca35
Date: Mon, 23 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774303493
