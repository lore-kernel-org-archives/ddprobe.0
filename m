Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4E5182D2
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758518994; cv=none; b=WhhB7CDvckCXmIK6qa34GoUTLbfMj8Tp61Sw8rYfZTWBES2PRXAkXj4txguIBntdcPoN0mQNRBBLk7moFFyb2PItp0xLNRZcCch6JDvfjiTkkuWCmD9ogwgXj+34CvK5b1q/qzA4nkAmBP27JAR4h7O5tuhR9DKCpcrMdqXh1OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758518994; c=relaxed/simple;
	bh=QYNY1OjImRng83CkuYsZYPuW6lQVxW59aSQfkylWc3U=;
	h=To:Subject:From:Message-Id:Date; b=egRx8L9p7oWOx2t4rOvhjY4nvpl/ekmXaJH/KzYS+5wmVFQIdsQHSaCetfeR24Uv6S5BegZR2iojCXBsCa5a0VH9tcoOxnPwV7n1ks29hASFSOTJUNfHHzfxTi4RNfNA7ap/EX1L9f0kl9YRKVVHuSHcIvXW5Yh05MF6OTn6y1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxmvLdAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxmvLdAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF70C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758518993;
	bh=QYNY1OjImRng83CkuYsZYPuW6lQVxW59aSQfkylWc3U=;
	h=To:Subject:From:Date:From;
	b=ZxmvLdAsbFrBr6sMeaMVC+bJQHfNhfcVlChvQ20IdZcfnPMmVGejCDrB3gbh8emcX
	 nUeys4WgiH75hmFDNq+jIF1pRwDa9aFtrkBmO+5+cY60UmrtnjfYHSecEuVFMXVTxV
	 lfwuXrFpjLY8V11K16MzP068P/YJ1qEIeO2ezP/VD3J4J9KMSW5cA77n0lQ6y4+bHe
	 /vKCJ+4td4BmKqiDwqP67j6kMxA5jVn0gRJFvF1jw2pCa4sKUld+yYqJ7xqh/gA5Ml
	 xqw3V1wCmcZ17GcFXoNiQRDPSlcM7KhwqLAaBRG3RG70mgq3DnmbJ7Eae5tQHaxP/M
	 SJXx4QXIkaZ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B0CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175851899357.22355.15816044049489848467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183106dd581f86130a1b7905a75962fbaed1646013a6ff169c51267623414456
Date: Mon, 22 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758518993
