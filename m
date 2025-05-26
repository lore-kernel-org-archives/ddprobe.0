Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF5A2566
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748275194; cv=none; b=hkVu6NZx0ZMVUAvx5XVF35Pcm+17AVDaW1wOElNFzMEVmOZH2ej8HihpM2BAUH3bPeFfHvmkl2vRMWoTOFvTd2UfNxqa2uAbKCATVyuEX4+2yAnbbSg7EneeocXruXlnH302Hkb6035cilXb4iKOEg+2CSs+qNgmIZmQP8ApPEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748275194; c=relaxed/simple;
	bh=/8b6ApptuN/vl0JL7lNRmkc5wc7DsTCQDx98s2k0/24=;
	h=To:Subject:From:Message-Id:Date; b=azbZwSvKH5I7zXLLYoT8bYWf5ESA2YJd+AR+BwI5jokAFNnX44MlGM5ufNZmIM5eqeNHyAZuoXaoSr3quC7lTdpjzMejNp7sNhIURN2jGa29nNazBSatJ4km99L24pIS614CeueAzVFQlSy/h6ind+FYJaLr9WZPAQwiCInSo0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koLD7iZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koLD7iZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F2CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748275193;
	bh=/8b6ApptuN/vl0JL7lNRmkc5wc7DsTCQDx98s2k0/24=;
	h=To:Subject:From:Date:From;
	b=koLD7iZ45tOXBkHffwfqwgNDhHKOeX/IxQ3bl69Si4TmIcBTkqHkL2s+dHNdIsHlD
	 aKnGvwmFnzdsNCA9ioGrYaP1gRQ/1J9MZvBSnZFzAAf/d874TcQ6DlE4R5VawMERlh
	 b7Vf0GcnxNTGupRwlslbaZoynetZn6w5fp+T33nAhf/czw+ZB5cye0rCAw048nzcKT
	 lYtzlATk5k9mIRdEHJIv4zFZFMMe7Gf/lgsl7P1XWGW74g5eJNn7dKjAUSak8HbE08
	 l9CA+dor+ZgUflmfKYWqqhUcmr5mw3Jn5H7HfgrG2aq86rYgGOJiRMQ0cnU9h9gpPj
	 8dJ2qF/1xedOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3FC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827519358.11702.9758196763664978098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be181fb9dcf8cad6a06aae05b1c8fe44260aa2000f3940545095192f6a4a19d
Date: Mon, 26 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748275193
