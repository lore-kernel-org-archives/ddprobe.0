Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BE32209B
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726150554; cv=none; b=l/iiPuZB+NxKlQaPQKO0XiJp4OlwaLKrfBp9uaoLsZD6KsRKsT2zqhvIrp3kbz07HbHRHdHRns3h1I3dFm50MjJa52yjxXFgy7neeTQ2mCAp7huDCTK/UPizHE/uyQne9rs/KlZWXsKbPtNUEy38lloID9DCIp7MlK0jA3uRaLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726150554; c=relaxed/simple;
	bh=QItWnNvsjmv0sQpfoEQWZp5j5pNGWt+CskfiV6nCWwo=;
	h=To:Subject:From:Message-Id:Date; b=A8Ejc+pYe3Kl1plt2hyiz6/ySM/mv44TIpqw0jY0qTVbnjVbK4WcUi1A5KQbTxejU60OGSt0eEX6Cu8StvFgnP5RkcGW5r7TsSIsquu0qMxBTdxRk4503BPC5NEY2ueYul7NHWkJlOBY1RZgyYPZ5CK340hFvKLq93Wb7EzkMpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vF9HmQ7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vF9HmQ7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAAFC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726150553;
	bh=QItWnNvsjmv0sQpfoEQWZp5j5pNGWt+CskfiV6nCWwo=;
	h=To:Subject:From:Date:From;
	b=vF9HmQ7sDP4jukrH6JYLxUrUqUe+qTMMjvS+dx77RhUu15amNhc7SDQDu6yAcGUmi
	 Ek86VAjhsY8Oe7mqLZFuoqfx8nCcgwmXTY0T9iWPSo6JbeWR8VbWSlC1miSuz008Ta
	 6UihdfaIflnzd8ovRcKKfLrRU4YyRX2bqzJMJqGOewxWSMBF1ife+iLENECbmqgaO+
	 u0VZ9qIvevP1OZoM0/alaqxj0514gxGaD5pyefvucnP/Igd9RRUJu9+YlNQpluptI+
	 9NEWT61zayWapmY8RkF3BkYo1xc08lM2pEwjQP1OdaYgAahXzu2JNdXmNMI9XCx+m1
	 VNyo3IY3/1mPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB17EED609
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172615055362.2534.2581088544365665106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf179e43401249a302064aee4279d9087819041d38f9744b3244bf2fe5e1231
Date: Thu, 12 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726150553
