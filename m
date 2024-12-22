Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370401531C1
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734895554; cv=none; b=BRM7ZO8fTj7K6GjWxv8KKUJvPtYYN8jxxT3pLh4Q5V2Ilu+QAm5kDDKlUV9HyKjKIccpb8AnF5NIfvUf6WgAerD9Dra9dwYqsQF+L1EuaVQZr7EvfIiQ3COr0EdvU8bF8nUZG2nnHwtsCLCyHCMg+egWc+D/s+8UdYc0li41wuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734895554; c=relaxed/simple;
	bh=XoXXk0bOTW2Bojchh7QzxaRE1kttKSXpbbPY/dKZNWU=;
	h=To:Subject:From:Message-Id:Date; b=pQSTYp20eZxfgzmQR4KDefM/WCwHOJjgX3Ho+S3s9MQasbno4oS/P8tBDchs9OiAi85bGTqOXaXZhudKkp1aScraoL2pbGI7b1rcapPxyv1qH8MmKTecfHVAmh/V1Jdevz+DjyJdD0z0kOzTEOrJztVxwthOC1tDa8rrCAPhYbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htRxFDuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htRxFDuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB235C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734895553;
	bh=XoXXk0bOTW2Bojchh7QzxaRE1kttKSXpbbPY/dKZNWU=;
	h=To:Subject:From:Date:From;
	b=htRxFDuhVubDOggZQ4//U/0WUUGw9nKVivq4uacMMd3ntOnv9iUPjTODGMqSTX6Oq
	 rskeo/CxvixuEoyMBg00fBaWt6klxoG7T9XT3vqjXCQSHQU5QMX+Bnd8rCn5xYrqkg
	 WAWwhpgeP/V4sFXnoExMVfSzT+WsGUOYJMyyDUJchHsYas1DoP/m/RYZdiiDJq0+cc
	 ZmbE/JmHe3KytzR+zVWkwg3ZExx5njeVm1UFH8L5W+v6n2Rw2l1Jq/bdhbpaVfr8q+
	 E0+baBZr0+FKScfw0UZz84+MH3mWPdl3K430uhMGCnaEXc3NQ45WV3SZ+IQPRl1as4
	 WjTmLBcAKwUaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C89E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173489555359.19964.17566354424653054816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d30001a4602a7b7c4c27d4947548ee09447dee284c5dd4cc4b09aa146d6a4a4
Date: Sun, 22 Dec 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734895553
