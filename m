Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B60820967A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736888154; cv=none; b=BVUQ4jAGBQ5GBYqpQM7tg0AXWOrZ2XnRPpbF/LAFFCQDIDyfwQscXWF7rlDA0qLqX8aucUu69MXrE/JmFP27gKytxAeX4qRQN5tPoyjegP+JRIY+HViH7Y3vLxiUyM2ISNQn+M2PALK0KPwlwTqKH+AFUXzBKp2bTI18aPdIxb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736888154; c=relaxed/simple;
	bh=MB09l+K5PL9kWEh3SPTm+ERfbDqVB4CqUlQ/qWFcUH8=;
	h=To:Subject:From:Message-Id:Date; b=Vr1Fa0yE4zXGU6lxRcjnHgkra5dZcPjU8okcjtFYamgdbV6okqVsWbnMp+GN9Gv08xqbgW8t1qA1N0Ww2pSCg/88vL9QSsy9ywqF4l9GPi14n2R4dSSdCTGS83l03XDPwtGa4MmbmB3oZZ/X7Kf9qG0pTJHcAEDIGgFrhSxI3gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvpM8i4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvpM8i4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F77AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736888153;
	bh=MB09l+K5PL9kWEh3SPTm+ERfbDqVB4CqUlQ/qWFcUH8=;
	h=To:Subject:From:Date:From;
	b=uvpM8i4GKIKD8RpQ09JYjAqEdByyIbo0LLomP3of9KOmYs5hDZnGaksi5Yrna2bzt
	 np6gh3rX2QkGhW0Y2yIbURxSa1xtSziWaEKr85JfeU7Ub3ZiOZhJhCmGogYMkXbjYr
	 kMsMhxRDd3HeopjK7rjaT1Rs0xHT/XFzLrLplAwwoE9KPG5KIcVgGaDJLj2QEdRKqD
	 8eKpICSi2tYTqt0w7eA8gp+/SRTGe929wxQYFZODoVLVdkvXxxAFDC/m8gFY4GJe65
	 ARdnRTfF5f35lqlzGAXthK4qKc3bAu35KBVOsObqSeen+dvjVJt1Zp2nIH8sOOiApX
	 L83hQBE5f8K0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9274BC02185
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173688815359.17001.7436128165391179515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d999fbaf2f45ff64f2f52f217a9e653d133fcca0ed9c5526796ac2a8616662
Date: Tue, 14 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736888153
