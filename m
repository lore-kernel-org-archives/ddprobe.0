Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3042338FA3
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723269354; cv=none; b=hZBL8llp5eLf/sjdFVyuy4B5XecGPaFVHcXAhaXYe7WxH41Ppn8xd79LRYnoE4XRnDjSoZorVJ5nDGNWAtXbSbYOKfBlTOcqwc73ceoFjtbA8Y/0UItkwvapadW8KQbxEYHGWD6mHR0FAqO+0e8nm+AUPKofQkYpEgFQiWh/1+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723269354; c=relaxed/simple;
	bh=SrMskRPqxBhYTvteLy9RiuKI0okQ2wALLW2PVnsvth8=;
	h=To:Subject:From:Message-Id:Date; b=ewsV/9tdPteSt+HBYmz1jtQUUNVoLiXrl6kTl9LCfrMg9t7/fiSCBXHJ24ozIlDtWmtodCya1ftIGQwjm545o2uwwCpFVWeQBuyThhbQPUKYx74dbiGYZbQSWYsyBXVh2eNeIXz7uGDoTkNhEQi2KTuxEKvDJL/IzBmK4HOvndU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcB1tJF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcB1tJF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5025C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723269353;
	bh=SrMskRPqxBhYTvteLy9RiuKI0okQ2wALLW2PVnsvth8=;
	h=To:Subject:From:Date:From;
	b=TcB1tJF8aqCzTwiaO6RSoRzN4N+o2ngFcCo7jgD3ECfSwGN8/54zN9GIOcj1FVUz8
	 49QZzVKH29U2TnnvcusDuTJmq2JmsOOerY2t9AKo0uQKsmpP7prr1jWTs//xrh/og6
	 k6IWMV59gme+va5QOg3072omSxfjQsSHdhKOZbk1kUJK8IwpEEzfggDq8Z1M+gLVSY
	 uDJ0Ig98IP2h5x4/WRLyObSF70YZiU5nCaWTVQJ+mKVV8omIbmYValLCVptJbF7zIm
	 5GYRmjMjv+DThO7pb5D71xbM8PzTrH6mLkOAQDIzBw7m5GZOKXDSfRV51ga6XF+jB0
	 C1zY6XfqVs/dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08BDC3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172326935361.3015.2750003435721049897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc93ec4b19b36ac3a9da12d5ff78cf4325863fc1e06d4697638ecb613e223b8b
Date: Sat, 10 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723269353
