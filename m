Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4992579C0
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748687994; cv=none; b=ottjlmFnDmSczAinRDe6IX75swwYtzoasZVH5D4IHPxVBrYW5i+02/J6NHwIU7iykyU7ht9xPymixRHx0XmxSrw8xn3E203pNpCjpduFQPdN12CjPoQXpZgvCJLNo2qUX4sZ7qGFGQtVOADhKKhCQcozt6x4GpyhdmYT4gSOW24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748687994; c=relaxed/simple;
	bh=4hYI+Tg3X69bqV/xWRYj/fPY0MEXXnUlEBRetoXPdOY=;
	h=To:Subject:From:Message-Id:Date; b=pPm0wvVwQPm96JqVvms68cjqMviEglhMYgQVTD3GVug5brAWPeVoiUc7OfAfsm3qBHsy7T68ecU5Wrcz1MAs+hJ1vBX8c5Fqef4sswZP6MqOsqMCBobg02STZADkmZM2uRX0dq65ZQaOtyhsN46Ntld4WcwyvndCRMweYji2LKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRiOxzJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRiOxzJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D23C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748687993;
	bh=4hYI+Tg3X69bqV/xWRYj/fPY0MEXXnUlEBRetoXPdOY=;
	h=To:Subject:From:Date:From;
	b=rRiOxzJ0yYrvjD9D0zQ8J7YkoKKMOIWQPycmrLrEURoQPztjkuLFThvTvymdZ3+V0
	 lwWilvd3So1UYeZnvL8rbpGTuWrq3im/VofzZOSZwXFN5JedpWx2seDgE0GMz0lSGL
	 sOYUBN57IR7HFLOTUzPbBQLc5zOsLtosWb6QSa8WX2W9ChQykKUe53yU58yISiEkgH
	 4WPGS6qlGu7LW3QZUidiEkdSsWLhvXDZD3D2Nu7Hb5Faaa0AOnO6F5w2zAneUp5mpn
	 z+dZhcdVxO9Wf7c8CS1CP8deJq7qTbHFG0h0qIuv3/VKX/tFj5R3vpYKGhBIaq9nZ9
	 R6HYMLLmaa32A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94059C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868799357.18144.3460622211089857340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a44f07f078a9ad66ceb4009b694213478287dd8ed9da79baafb8ebc39c21c8
Date: Sat, 31 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748687993
