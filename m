Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4958036402E
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786605034; cv=none; b=JUz1oW0Ug12C4kwoqE6oNOWZ84zC6OYkqDDtenqLAbacs3LS11sWyg77LN6Iz7pbVeno6MFS/+MgSRGBo67yBbFox1Q8Vx42yRKoTo0KgQNX21RY58yP17c0cZ5l8oInxeR9AAyPBz4LTalQc3uloqg6S7j7euAQOQh7PgfnJYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786605034; c=relaxed/simple;
	bh=YD0NGMDic0PojjABug/6ZIBuME1w6E2t02hjRZegAA8=;
	h=To:Subject:From:Message-Id:Date; b=UKyIAy4lCLglRTYa3vl1WlFbJtBcrZWAIHdmsXddj8moFIYHa2B3cWMaLz5sRkBW90zBGTmMMWT9Sz30i1m+OvJ8vpOWub4a5jbB67AIqQkmaHC/EVAaV151TP/5UAFUOa7GgT6ARO54p8MjvXg8TV1UPHi3sdUc1tlrbdM1zc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kmee62DC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kmee62DC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB86BC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786605033;
	bh=YD0NGMDic0PojjABug/6ZIBuME1w6E2t02hjRZegAA8=;
	h=To:Subject:From:Date:From;
	b=Kmee62DCiHXQdYyA30v68tJf9BTHmwIXCEdankS/Ape4bh4pS91bQrHMtHWP69Meu
	 l+O01yrmScxfmC+L9NvnigXVTXWpDfsIEwIEpOXIKoEWU0ondUJlK28MmUaFW97HeW
	 ySXnFmikei5io1ugLs6avTbBV4m8IJ7i53EApf/+IODtPRFal77ttwID34b+qzRvs6
	 vIozzpemgv7GIn4DKSHjJ8uCej/LYkKoEkzTc3Q8BNYaTRZpsQ6iVO1UnLL0Qvp4u9
	 EMbNeOvDSgObw+jNzicZ+JDSkudtbQi602OdFP25Ifelf8NL5Wl9vh3GATjK2F0lHf
	 6waIoL5dRtUeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E11C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660503368.22449.8991581729066544487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c90fcd675fa1ea97ffea4939a3866ac5514f30b925393be3d0b56bfa837278
Date: Thu, 13 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786605033
