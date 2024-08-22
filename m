Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CC228EA
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724355354; cv=none; b=Rk0nrLXT8LSH1zhKxCg1RjLJS7eZijDBlRAQ6g19ysBq66DlmeU2i3+jgC/lh1kvpuU8m3AkeSxEO2nH8Fcs0wHsB9JNyZh0jwYZpSO+ajPVQS/QgtPzpEs+Owz9wJ5PDZQC96bT0vvZT48y3BRi0LNTnqdZTyR1kp55/ZFajnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724355354; c=relaxed/simple;
	bh=mt2p8EoyStr3SwMoJ10cSadMdED7rJSQvCt9Y00RSFU=;
	h=To:Subject:From:Message-Id:Date; b=QzVHAWWZ38FZSA7jA0de6ecoUJJP4ix5F190xJrHj8Tdb09/b4TxnH4bhMEg8Uj4h4hZGvA4T1WmjV/tBi3Er8VxPq99DDAm6hu0IY8g27tI9QGT669FrsFexQ3BTCXvNVfu86jOxeqm/8g9K4dcv+60oUDTvJWNiOaAPk70vYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrQTVEQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrQTVEQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB26AC32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724355353;
	bh=mt2p8EoyStr3SwMoJ10cSadMdED7rJSQvCt9Y00RSFU=;
	h=To:Subject:From:Date:From;
	b=QrQTVEQRwQ9vgSacwv6RiTqDzl7Ms82vd6HUYFmKNpJI9B0244Ag0WF0oB1fsj4it
	 HCknKfRf7xjDfsZOw+XyKpWmbsT8c6/Lz4suEFDLnX5JElnlFQHeddrnAGczYwwz2D
	 TibxwSY9VYRjmEIq8nYPyVKhF7mO2vFG2xpskBZnt2mTdTBIkT4L0dA74/TUv5vb5F
	 KaA+5VUt8sHaVe8JZAA8xqXFA/Zt6pEfgsWbCpT7gEadUkSOf3M/gqcEkvHBsNaDYH
	 JW1JIcgE+m+5OIEuNW6FCAbLFrEHF4DAI8QIadf4hpPNqCqYqkcNGWMOSrsfQ7SHvn
	 Y8BusJuviySuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971FCC52D7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172435535360.28209.18080877444208767883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb92476e76dfdb5acc9c6b06d48918397f00e7109595c9d86c75defe8918c0f
Date: Thu, 22 Aug 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724355353
