Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3237D1FC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768720434; cv=none; b=ahVz8gm1916uRI1QPOUgo2BMSMQiRzxgSsHeInrrB8xDQHkKHOYlskJvY0jmfnPZz0lcwizFK0jGnkgUQo/eiltXY1mFk+D72R6v2Igm8vjZeZt4g9tr1ZRod+/DtE6djv8NRaXiXLgmaBCsrtbfLfx9t3OiSkHdOZS4jrQDabg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768720434; c=relaxed/simple;
	bh=eIorVUKpETccyxxp7MO3By5lK72tEKmsKiI2RpGvbWA=;
	h=To:Subject:From:Message-Id:Date; b=POHOs3B29v2FiWVwhys2mcK5qFon8t+dGQvZ1ikbF95bwfMLTSXWTP2UlyxVuhtv1A4mGpxvjDJi73UuILJwJ8Yf9TCWAdc2YYV5mmCYrZ8cZLz38bkfbCwLcK6AMiJTPJSWFE7Yl9OBUdTTOngbq+bk+nktGZPMp8uzH1xxJKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWdGVs6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWdGVs6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6425C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768720433;
	bh=eIorVUKpETccyxxp7MO3By5lK72tEKmsKiI2RpGvbWA=;
	h=To:Subject:From:Date:From;
	b=VWdGVs6eNWxWMYcfcib8JJUEaFuFVnDwrsn/qM7zPY4LDjKu8jrNQi814GZGueQsx
	 BKC8K7DZIRzqzsb1u6E1tNHBKoXLB/VOEDaswGELzNGDQ9hhJ5tZCTKiJ9TG2ims8G
	 T+B8XVLQM3X2vrFZbN3WoTwV1qd2A6k77Y1Y+wNl+wMi7gMAOmtmotusTgDXxx6A1z
	 VpHfOSFGoz06/DhJ/BCSbJmHPBuEJDz//gAyGuqBI8+ytovqh3FBxM7ghT9YwEjI5E
	 7Ze330IAm5c8pxym2mgAXXwWTrahXklSvd1CDkEV8MGR2Tbg66lVwYbs1adZQdyOzK
	 S4qSOh29wh7eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9500DD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872043357.2583.7607418617089745002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72486611c0d3a701efd4ec5dae5686ea36d4f47350b776f19f0f99561229ea96
Date: Sun, 18 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768720433
