Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7402A187553
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 09:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736672754; cv=none; b=rjnk7juqESRZ2vHJDoM2tHAxOHnMfJZbpyXr3Gt8YPHcQUpbMyt5LZnf+yRAGiU0f8DrBoS+8W8qAFxYnbxgUUuRdOB233Q67MdE49VGS6iKCB4oj4VWt0t6P5z+Kd1cU8UzwVO7xkfiN+qmWqHGRIMimZnvyZWOiGp23ecBT4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736672754; c=relaxed/simple;
	bh=HoEsBoNMUHlvS+4nKm2ras1sttsp2Ncs/2SExhzFZ6E=;
	h=To:Subject:From:Message-Id:Date; b=Ux76/Hemt32dpJRiif82zrv/Fp/jan7fBE5k/aeZaG8W8g1nRp/i3kkB1uBC2u6WHZJ/kpA03pUUKa6vUGBPHdIb0JHUv2aPCHSdBGfpu9rHxpuHXOqBKcmnRXIKw9rIv2CdMvO+9oJj9cuyaJbQqQ5Z4LvAbo3pYQ/c9G/736Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIYbGfI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIYbGfI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E87C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736672753;
	bh=HoEsBoNMUHlvS+4nKm2ras1sttsp2Ncs/2SExhzFZ6E=;
	h=To:Subject:From:Date:From;
	b=JIYbGfI6Ay46ADDpbbHwcCU91AiQi7sTAI67r8brrHwfygrVFsrv8MxHNE1KhDSxR
	 EALT2BY4Na6YDuB8lS8xLB3/8iG7PcUHS08TvNpHXMj7fH3jm8wB28esiIcPeE5Pdk
	 uyOFrOWeKjx/Pff66RS4ABJ7wi/Wd4wD+JlQOE5A0xe8zBnxG8UNtzlYTPlBF5uFL3
	 LyalpJ/flGl4sSghMLoauaREF+osRqogzMHAf4QZwWpYu/V6Fu1CFJS29IgNLzUHXG
	 LlsCcF/H1jqQx9wAJKgfK3hboqELoz1YLoZJ/k4WKpf89uk6HLi7BLAfRzs+6qpRVy
	 VeFuYxT3hSXRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4793E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173667275365.1503.8259198328990777920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65fbdbcc64a9ad2ecd1cdb23b778f05a43f5e208633920853e3819ff86dfbda0
Date: Sun, 12 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736672753
