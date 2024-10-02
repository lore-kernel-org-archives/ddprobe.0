Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D549D517
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727854554; cv=none; b=SVtZgw5SQa6YX4d/hMtM2P1/b2HT7vczElREthnE1s/b5p9qo64pCiZnG+bh0v/urD/l48FKybFB6q0DvSs+PUGpuemA8bqXRy6XlS9fxt03gEMFRAKNETsofnbDfk8xHQyIyvULbwFqUIBpnbGa1VTvgD3B7Vwlh3OW0qUNjYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727854554; c=relaxed/simple;
	bh=4F/bdA8t+FcrD4ggpfo1ReHilJZolKLi5/EGMGbHZWA=;
	h=To:Subject:From:Message-Id:Date; b=DpFlvPt8zM6IO4u2pgDDzqZJCc+dhJnUvlNOYtnKSvpMKsiahclQG/4ViEkcDINFels5Pqlpu1/s6ZHoDjoNj8aplgi+lEmyhGQdslYgQWzV+mYm79d3eBJcAM+Ja/+9LiZoGMSCALLfq3TS2b2NNTuk5D0DO0e/ZvViofXCorE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4k/jgWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4k/jgWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6084C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727854553;
	bh=4F/bdA8t+FcrD4ggpfo1ReHilJZolKLi5/EGMGbHZWA=;
	h=To:Subject:From:Date:From;
	b=Q4k/jgWRlArGvDD2eyfk0XtQPcyfUbTjtRTIcR8UdrOM5L2Css5qFyBzW389BdHvo
	 VSH0ktgzvY44euLxxTXTw9S62gTDAuNZoaekjM0i7qJeMgpxEJeklHsJ68a0isHBd3
	 AGGkj0CK9SfPYlv43KSq2VyR3/gme7sRqlMel2N/MSZLOYfLlbQs6USRY4Kxyvavbg
	 wxpo7K5YX55WHEZheXXfu0FC0sqRFdn1ygJcWp2XRC/Qy2LOJo1HVyDiFMrqovfFgW
	 XKZt/NjxHxucrh2ebZxVYyyUmpSgE+KunAX5pzVHKBYd/ZOsc5ZQpsjGegSShbWVvE
	 SEQFd83o3cXRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94454CF3199
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172785455358.22343.13026023883883203565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3356a8cc490e44e3d1cff5688c1537a424aa8682ea8429f57da006c8c69e9ba
Date: Wed, 02 Oct 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727854553
