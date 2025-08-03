Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D8833993
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754197794; cv=none; b=nngua84jIvbGG7B+eZYsjIXRMoAFbSrQVrgs06OeROcFNOv2qduxFg3hx6D+JMS9CkEIEyVH2nRDfuQ45vokl1tqfWq2CcE7neifffQ37A/dQ05g+6IUYpVAJv0UybVxpsuzAlgLYZQ+4qZkr9DJz287WLF6ndJXPjKg8/+HOYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754197794; c=relaxed/simple;
	bh=0m87lMNJ3dMdnQhNbw6pONFfYpe8FnAwRw+aQxJcF88=;
	h=To:Subject:From:Message-Id:Date; b=nQGE4Tv+ULP6xrwW3Zeqcg1vfo3XpGEgAKeG3kovaYIBbDBvOv8569AnQ6nEnr2vvB/ZBVa5avxQgFmqAX/b9pCmqhZn4VEYVJKxFAMMJBnXYevcQUaEYQk+tROu2WzxLkAyNJhuto6xGqi1lxjtTB0o/+JFeRybWVgSQojpUTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csDHX2XB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csDHX2XB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC45BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754197793;
	bh=0m87lMNJ3dMdnQhNbw6pONFfYpe8FnAwRw+aQxJcF88=;
	h=To:Subject:From:Date:From;
	b=csDHX2XBfwBMFTJ3x1igbJ8CqflaFAwdsf8XXa8YSxJ4/s/ZWUPHWwyRClNFl3Gr7
	 mEFjVlVuGnQdJC0I5BB5IBgNuwQzZI9WjOIxWRo0URc6VlSqI+R4EmmWegH15GoOau
	 VXorNFey1DYHNi9DnyqnMzyxjlEom1ZwxTRUhVOBaowcmv/BBR5bPuyv20N8yAYgC/
	 GpevFypEt9kza54t1HXgIGPSVH0aXHf+q7Xuo/u19N4/vLbW62Jo7Btk8l1Ni5r1iA
	 missiAHHaX9JR3lp8OTNs8unlk4b0pXzi9k5x1Db9bzP4XuLTPB9Fa4FAiTuhiktFA
	 0KTdsYow44cUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9516CC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419779358.23671.9126657744185387824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 833dc87fad017c4af29879bdd44482354187c1d24b922e90b6397095cc203235
Date: Sun, 03 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754197793
