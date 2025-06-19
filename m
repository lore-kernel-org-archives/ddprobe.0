Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323D92248AE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750333194; cv=none; b=Qfs8Vkt+GfA80zvfeREExIKc6NPQ8A6IQLTggrThIplB82+Z+jsHmvG0vb9Qd6ru/tk7aa8kR5dMIkL9/Egs+sXBLBZ9Pq0HZcbpQBBb/Hwbdekcpf7R8E+nc6xPHWOOOTiTTcdx1wAE/+T+zZmObQBvtTO46ejS5h9jpS+04ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750333194; c=relaxed/simple;
	bh=0PdCeh90aJ3BTpmwdnIZ/w6E8decXDi16TavxLQRQyo=;
	h=To:Subject:From:Message-Id:Date; b=Pm/MQ9E2b3DUSsKnjixFRmJ3e1H6JPHLr7xL39IXbu+1I2pseQdOLkH10KJZ2GZciQleTymd0uh/LFBwycAlLiWucf4DzHnMMkZB8fnukgW0ioYA2TC7iw+YPUf6LltMmzCxKMqHRsgTGqq7F2/8pSEW6wTTNLl1FnwDwnfwyKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eK6meMWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eK6meMWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3990C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750333193;
	bh=0PdCeh90aJ3BTpmwdnIZ/w6E8decXDi16TavxLQRQyo=;
	h=To:Subject:From:Date:From;
	b=eK6meMWxoPiFabtktxM65wNwLQ8+b1PRlGKzxcr1LwdRyNJneXljG78VvbfifO7Vc
	 rCsQI+1om7UK5eHPksP8mN61xcI/WueRsDNUSorKMeUJAnp/1yFnyOIAt6qw/SDwJK
	 4G1hWJ/JyUJQggtVCsbUf510q2dEfRkTy86Q0S36bnMSU/s8JwIOocZe0yygkwN8HU
	 wwMs1AFc6B3xUum0doWNrIvWCJ2PDn+MB/W4ain968dMsUdBgZidS70Wh2egPHQxs3
	 965zDUHCSGhz8qfU+yva2zcDwBhzrv+dc2y0yAqsO0AhrMsx7Bpl0LsxpWa2nWqo1k
	 r6zCP+ydXkDmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918DCC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033319358.19721.12931012273675340761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bad0a57ba0830fb6d4fb485ce9e32782658dbdb3af7bc2d9472e53f5e551ff06
Date: Thu, 19 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750333193
