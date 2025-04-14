Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F68F2820BA
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744646994; cv=none; b=oYizbUv+YOp6zaAE/yK3OYvznqsjPvD5UreIfVXMngs9Wy1mV685VjL/c4cu9Ec8iuYRT4nfaDkmDUd7lgUt51UaB8srKVZbSVB1g+iq9UTi/qDeiK6P/EtfsiH4711EKUezsnnOYcEoDOiknt1ivpWt76ITIctMyVoYgdvEiQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744646994; c=relaxed/simple;
	bh=yt91a073iyzd81jbeGUI7yuxNKZgTlfngiNQf2Q5QlY=;
	h=To:Subject:From:Message-Id:Date; b=QzbGIMRzFY3p7D6TAykz52V1/gNJIkiAZ4UVxrvS25zK03pIUF9xonL13lXgm+kFmBsZF8SarkA/GGSbR1910mY1XAIiTBZzPyQxjDuIPdSpjPydAEFcHDyN+yrCAh/Kk7FHndgE3rUMEzSJjP5wreKWI4p+8mmyPm0pQhykLUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpUZ3qGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpUZ3qGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73F4C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744646993;
	bh=yt91a073iyzd81jbeGUI7yuxNKZgTlfngiNQf2Q5QlY=;
	h=To:Subject:From:Date:From;
	b=IpUZ3qGWDGil3gwnWS3QwmAFIJGVHpt62xt4yVFAJQXkYhi/G3IkiJ96heMn7SK7J
	 ZnIUcnz3nEDvL0bMGhbXdR8KqJvj4ErFixKl3IiRqI6Sc5hSZ3A78WiDRDsacOpujf
	 xrsta/YN97MKZzCkpY4IfQGIxHqOi1uacVrGyGlYrQYnetDhrzQFqwEW4x0+AJI6K9
	 kpLh7EbxNGCemV8hodjlLav5fL+vXBg3sMXSa/FMmIRSHqXbDU+UAqAG9GKEyFAJOa
	 q6sHCjSoPwfp8xagl23F35nh+rpyHhCORk6Fkm8R9ASOQtBtNlDtywgamDP/bQmm9L
	 q8eLLoXbdEpmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0220C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464699363.17172.17743787055590848019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e6f0bbe52060dff09b2877ba6cc2102bd72f7721814b6d1fe524e1efd10f21
Date: Mon, 14 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744646993
