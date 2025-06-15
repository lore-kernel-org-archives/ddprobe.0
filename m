Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3158C28DB3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750001394; cv=none; b=CHL9BD6esCfIkB0kZTNvEU7OHJLJ+2IKBRu+KEcun4YKQtx4KCulznKpdZjApP4s29Qv9lYIxd0s3kPDh+5a9lYwIn8Vzr8oG+JE/nxf2VGTcyJUAlzfU8nvqwsCyEZdMb/ZhFKyXhNNl9/hfjwdXiZonQhElRnWLF8fJT3iVaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750001394; c=relaxed/simple;
	bh=KtwjTVANdml/uImnzqSe1yQxAEzYEDYfBgaucnT1q4U=;
	h=To:Subject:From:Message-Id:Date; b=a83iOx4ogUJFyt9Or1dYKelVzf5tV8uixa3lsVacApHf2pEwTeG7rSAU0rWdrA7DZajicbG/l9hfFfieoftUciExuUM8jEOFYKujr2jpAYuGcPCjBvuQgwaFssTey1F7Jq7Ux43CleSr4P7gp5hYly/yoF8R9oqP5DO1bOjXUy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pv+4ohZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pv+4ohZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89EBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750001393;
	bh=KtwjTVANdml/uImnzqSe1yQxAEzYEDYfBgaucnT1q4U=;
	h=To:Subject:From:Date:From;
	b=Pv+4ohZqiwrEWG8WcnYIbjmI0zmqNmWMsZjBRr3ja27DC69Y7m6XNG53C3h45aL5q
	 G3ZusFLUHb8q0PSsb+cOhlPE+A3PC+cfoIg+UWFhGn/V1m00R6APbql8rq7A6+lZXB
	 9jPub5fQ+rtZDfdQNq9sxVBbUzk8Ps4lu6PXWumZNAzRnfzFGQYF3zXico+in4Q51d
	 ANhd7bF51YWSbaAX0p5UnybMpmn25Nsgvm6Mxc5eJxJ9sac/bbZQrpD0OQAYeo1ecu
	 ppPW5/UvQzlvWZOBAki6LsvIpKtmvkS2xWdHy3o3Oc4Mss6mCj6NvUJffF/mflst6K
	 KStyVX1ZIqtgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974DEC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000139358.21047.6080344481661052391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4014c768d9128ae69c6b10d1d64ad0315769967726895eafb5ea332f31725b
Date: Sun, 15 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750001393
