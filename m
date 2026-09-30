Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389D531B101
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790759434; cv=none; b=PYE1LbDqykXRbR/Ck/emZUNXfOaoWDxnSj//gx19HLGVSjojcr3nY5zNL40QNiyqkJ1POIym/DdXFirLmdZsnTKMKbBowCTIMgk/jDtgQs2Vs0Kvg+wZqWTqBZo8C3dCgd3FtFAPQijNldphUAu8NL80uKM/LEMo4du75Ie9xOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790759434; c=relaxed/simple;
	bh=09wVnQA1eUmS2oMyIXGBCOXyCPH4k6TeajOkO4ZiiNo=;
	h=To:Subject:From:Message-Id:Date; b=o0GyDV63T3RE93UH6TMvNnxWSYr/JojfojTptgJb/jRvv8y6vVytxVSepYQCzW7+acYd1OcmzSfjic4yeYbkIOo7x78y2C8CaBHSyqN4klCVLZcPJXyPii2dAnQZLlHanw+7ALck99dbsT3rRNLfB97UXVe4EobjIl6MK5SXk2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoAOmUzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoAOmUzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7EEC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790759433;
	bh=09wVnQA1eUmS2oMyIXGBCOXyCPH4k6TeajOkO4ZiiNo=;
	h=To:Subject:From:Date:From;
	b=aoAOmUzkBKpA/v3BCl47GORMtNSCc8b7uelORNNRHXZIHTmvyDTyo/VDxmD5lnFzB
	 tDUuJ+qCn2iM7FFVYezMIh21QASkaHOxR4DOqJ/FkWAtnY6nS7mUc1iATteeq1Y1Wm
	 D3buCDL+Xl2OoEWAmPScRAHtS7xwjMr/Q0QCA2PrlOu+wJXQ17ju9gg3CVBfQ85Hc6
	 3LwkAu3Je1ys9jbP5rokdnCywZKUtw0U3csqLY4ILbjodx5z03APqW495d7kByjxUy
	 aWcdIIrfdmtfNJxP2GuJy8yGBmMhqcHeJmwVtwtknRxCtwz1MT5SdPzDe4PmdEnFdQ
	 S8COZ+SElP1PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9416CA5FC1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075943368.30909.14136789693646929980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9478e6dd4a80d7e2687afe052787a58d1b802d557e14e338432e477369aee64f
Date: Wed, 30 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790759433
