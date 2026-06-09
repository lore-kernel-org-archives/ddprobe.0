Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45766261B71
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781048134; cv=none; b=FpzEhQZBhJjKO3xYc9DB1qhXphj4FWFAHlemZqlYgJRgzFWXnaXuUmBq7IpXEl43uyTMuavaZNwjHR7WfELlusoPC177kAtiYHoRuBkrgPFz9RzJ2TpDuDtUi46EvuIMGItxyMNegTyTTIu0f5U6uHnB1vq73murGuTbwDA003M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781048134; c=relaxed/simple;
	bh=Wuv24YfmyS87flApIpLfpmVJs68Q0ttMCzo8qerGEjA=;
	h=To:Subject:From:Message-Id:Date; b=LPbZRUWNLPHcyoPCqnjHIqztgHAmmtq78uarmUlGQ7EYqJb2e/IQxnZIgqKBY/1g7GQwZzZw2A/gMcfUaie2kyC1SL7V6b9zw4eR39VEka8BeNw+7R0llFy8/QuRCrXVJCQqzt7OrVIoqA4+qhrfe6aZ6R6awrPPq46Sz3ivLCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTFcdAm6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTFcdAm6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C981EC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781048133;
	bh=Wuv24YfmyS87flApIpLfpmVJs68Q0ttMCzo8qerGEjA=;
	h=To:Subject:From:Date:From;
	b=QTFcdAm6EozvTy/BUWE5wxP5q/X9B20DOnSpjHOsuQNwnBpuEF3JYBTFje0HbplnB
	 ZDdkHmrFJCQ39My8J42ABX1eg7Dz5ZNFt07MmXNrzFYTkf3LnJ8cRfYWeMqueL93EK
	 fFb/jyrsmcUvYkxts67fP1iuHO3wHwUxfbCu088IjeIQquYlU2d+U9prBvlU9MsoMA
	 diaxcokp8vxZaA35UAsygK2GalW63bz8FbkLhvaThYqUGD4Vme/kYMtQCY3kiG5lEZ
	 E0bj9tcV1XSp43Nc1TXiw1pMTXUQmjiILa8vImT/NUJFcpYre2dlOCYGcw1Ft2Bknc
	 kd1aoDmJqRz2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF21ACD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104813368.21888.10867917814794278412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ff67a2cfc5866666eb16fc4313c267702c2b8abdebcf806e53b4ecc3d27bc3
Date: Tue, 09 Jun 2026 23:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781048133
