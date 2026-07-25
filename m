Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4415D42A82
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784995234; cv=none; b=quTmnBKxyHcYCs0fD0xktO20YviTQqp5Xv3bdiotVtahF+d0pG/bz/i6Tr8BG9iHwM17/BOyMz+Bl6gWl2ElaoZKxO9OpKxIC7VknJEBUjzxB0B34iEukDWO1S7pkYw7CBPWTIOs/sUUbIXmZVxYaN2ztW1OlC6v9yOD1CB6ArE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784995234; c=relaxed/simple;
	bh=OVzrFUwUoOX5isJKXooZIBnEmT/JsArgh0sqI/eIyVs=;
	h=To:Subject:From:Message-Id:Date; b=qRytbIR7WChU9zRirNQwTtDpwceQaMi6d9wjUj6bcCm77zmtSGidYu2655KfNeBuLp9WXOXH1UHVEc61hXl6giZvTDJBNUstwwojWaJDoHzfMsWO6N3C+pT5QBpFLaIIU8pUoDL/r0VGbVEIFVywnl92yBuWSbg6HE9vmvVKHfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P78Yz2bw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P78Yz2bw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C54C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784995233;
	bh=OVzrFUwUoOX5isJKXooZIBnEmT/JsArgh0sqI/eIyVs=;
	h=To:Subject:From:Date:From;
	b=P78Yz2bwQtpY2iljOp2S2rZuiW0WEEyMSmBiwnW+wVNVLDXZUpgAbBIakqLk0bD2M
	 /eD6m8ESo1zAbMbiUF+k/jb2XnTk3UQcqgOlm2UBsXb3h1Vjq+oO63uBOcb5b1PBz3
	 kCFlOXKsMjIB8tTVr6cid1mQJZl8RTRN3kNd3x6PZEQMRnumI04G6k5gWbac6FySVL
	 5kYF4FTNhztJ6ZmLxthItKJu41gccbyXvVTgGhPU4ZJQU87PvmI3FCsY7kStdL50D6
	 yhcPG3uzMmKASEazx4drnXtHzla09c/ZtQ5gUiHaSU9m9xjYqvNXrLjrIIzF+wHO5p
	 HLYYA3nbahPBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB703C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499523368.8432.176505891530276362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3aa6db461700eccfeceade57cce941876b609a5a6b16fc7d2071f016025ae9
Date: Sat, 25 Jul 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784995233
