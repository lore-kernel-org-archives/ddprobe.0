Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBD3324B2D
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771420494; cv=none; b=u4EPM0WP/ZMUpjfXNFovIrNkD5/7Sb7ohEdFwQYnF7q+6Jj735yvv2A6o9F3Ys+bBVYt1yeZ2YTdMwf0381z322BUyB0D9dNuAeUN9wovGz0lVwO58RD2hJZPxtpj4BQnmSOxfrKz1Xef+zjN0eLxKVL1Pk8Ej5pk75+c3DlYS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771420494; c=relaxed/simple;
	bh=EP3pIyHh+6SUvLtvvcv/9EUwHIwtdfqvvvE8Ruwdojo=;
	h=To:Subject:From:Message-Id:Date; b=itUFSg+1x0EOwK1RKN8o+m1ngXxUlZ1/1xvTNNL61ABLEjYcGnulnDfSqxdawkbpU50SJUumoaglyiP2B7d0HOuT4Io72xECHYF80q8K41yz8ez2CHUJkvMBLIisEIB1IzW/+xTqNNplPcKCqAiQU5Go4Z1hG5TbE/MBg1ZEAp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxP31HCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxP31HCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A557CC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771420493;
	bh=EP3pIyHh+6SUvLtvvcv/9EUwHIwtdfqvvvE8Ruwdojo=;
	h=To:Subject:From:Date:From;
	b=UxP31HCWayGYJdsmv7dxGTWUi45AekyzSXFs2/yKHQnV90zjb8RHANRpz259AIi5t
	 7RCMaJaYbTOvShtUAhgsMpm3/qJmMDfuREwugNHIemUYJVj5wd/gTrWg5Tm9RU2zSQ
	 mU0Cwhn9nvwuCGcsy2EdXJRjKJ+DJjMTBCkb/FwVkUmwaC93eVR719G2e/WYQgmurQ
	 gg/yF9VXXYOdq47qfDSk3Qlm0V47br7XrbAaEZEbfjwhYv3Z27Itv+4meGyOYuLx+J
	 HMYl2MiWH4CMQShsWGib0Izweb7rV8c53OBTNNCrYYwksbRDUYICkyds6rce0E8ISD
	 /ePrZEeCYLA4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9299FE9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142049358.23661.11455368316870887517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c14d46243356c4e93674ec9fcc030c46d89952263d55c5142b3d5c59f48b742
Date: Wed, 18 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771420493
