Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC611F180C
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 18:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740680935; cv=none; b=nXERyvSpmQPd1kP0P2PKqpwve1fWnUgeKv7+LEGFfFrg4a014dQFr+gzDToJnmhmPx/uob/zD3y3bE9Vd1j8I96e6mP0wh4ScDz8Z2cTMwN/8we++m/Hn4GMzTYy/fJ6KGPpoyx+JL9f1iilb+skJY51PvPMzyNI+ti7iTe1t7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740680935; c=relaxed/simple;
	bh=PMwctBNFTx4GP2llcncbcT+I0G9lj8qDwWV2kQ8Scts=;
	h=To:Subject:From:Message-Id:Date; b=gE0KmhKrR5vIkdfiW5QfB7Chd6uNdXQa/uistkMvGzA9sPgbEkKwe9w0CqLMwBytRWTorsGFn1l0JQxBlY0sUQmP2qwdzpkZ23g0QevJgpWdlDvQfv4cy3AXgl0ecGozjQAVBbLFglfIk8Yi4q9L3l61lXh68z0NOzHgl0OibVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgu9y53V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgu9y53V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F40C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 18:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740680933;
	bh=PMwctBNFTx4GP2llcncbcT+I0G9lj8qDwWV2kQ8Scts=;
	h=To:Subject:From:Date:From;
	b=bgu9y53V9YLbC7yZuqpWyJiFO5kiJKKi5fcKtlYf2od9MziCA5fvsT3OfzWYDI1Qw
	 OEkb6LxR3x0oIzYSNc2U9N8tAz7Rp2EYHHSrnPEYx5Ur9FFLVUkbuUJ3QNTJoEIZbf
	 mYHofoGNrihSX1ylat/sbkMfHon+E5nadqCHU5CTZfFSEK2TflxcNKObLESAG9Vx6f
	 K/37tdso/y/t1U2kV2tzx7hPD22FrwadAWlQz1lBZaQ2sGGZJfs8pxR7LcoG10aIvr
	 /B+HmFtnrLtA9yLjIpK/YK2oFwvQQhvOqFEADHJ8cfTNxGGD05T2ZQCLiovDsVTMI1
	 DqyUnScYHwD+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98951C19F32
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 18:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174068093361.27956.6248788705267363682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd9fdbac516eacdfcc527d629efc5cc68e15130eabe8e82108fd98d11305c60
Date: Thu, 27 Feb 2025 18:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740680933
