Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE572E630
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711604297; cv=none; b=NP7FZhFuunCtq69FSGnXey++cLKifz4cCqxPveETsw3B1SFSQYGs6X8N8z62QfqVnrTPsWBqqKfP0BUMFuWWBCdNzFwoYzacD4r8pHSU6Fcz/W8o57fxIWa9ww/m5jEHTymcACREnRgfSLNiWuSN37DQ+A4DZyUO8+1LHawC3Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711604297; c=relaxed/simple;
	bh=fCiLV2qsJjGxawL+TTpvT+PifyWx6Zuj/GR8P9uLl0U=;
	h=To:Subject:From:Message-Id:Date; b=AwPMNxZDLePPT6r0dLYYFhHeBEpfe5WPtI6I8aMkAFg7cVZiVHPGwJjJmKYo0d3NPoxfDRxM2JP3/6pHHVe0Ot26Yf1ZyoZUdr5FHopIeXhddfVUAh51Jzc2743xLODdpTrrPSJDxgP+vfSZWnIPnUP402VHpzThCZa/pGSzYXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5UUuuIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5UUuuIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71161C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711604296;
	bh=fCiLV2qsJjGxawL+TTpvT+PifyWx6Zuj/GR8P9uLl0U=;
	h=To:Subject:From:Date:From;
	b=m5UUuuImDSQDomplztxAeWCOpw7PGUXN+U2jmvni+/KJSzn0nRTUv8d+S+lLKgxx5
	 F1hyZKF1q7SnVUb0u9tJokIYEgUWlXmh33CecVixw8VI7e/Yy37X91hPnO8QxZS2Id
	 7HLZ+GM72JYPO3DI7LtihUl1qszP9F21nkg7As99YdbLnotazQTjDkXCf3r61QCHKb
	 s92eDoX1mD4E4KEknY1XmqManQ7i5sB6oH2ppYtvoynkDvkdlzTolCDRCKSrRiASmx
	 kwl0xGes4m7VUPSYrSLxBwTLdXtQm+b7yQLNY4G48GW3DBpIc2vOQ/f+zaXviFsiAD
	 92dTL1ktVfDTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD58C54E67
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171160429637.15467.1189592748199485388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a508203015cfdf8992a1a9cc98c37b23e7cbbf3b09c70af7238ef2a4c712ae3f
Date: Thu, 28 Mar 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711604296
