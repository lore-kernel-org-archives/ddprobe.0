Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28270221F31
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754518794; cv=none; b=eXQu9bwFNmrMcpTt8th7/+fTGvo3evXgnDJLB6tylp1C8runjnzdLLmsJLrbVUEtofo5eRdblgI3YOYEbLz6zKQLPtzRBsmmlA4i3LcdElDNPCnQewJFBzeRRW2p5qKhXSSTtIwh4WJ3xpjEyNRVtHZP4fGecfMQrKHc0UtcJtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754518794; c=relaxed/simple;
	bh=QSBAXBHG9k11SY0tT4iDp3jQnYyfK08fVDQDjkE0c78=;
	h=To:Subject:From:Message-Id:Date; b=X3Vnxx/kn20WqBgz6yx/j1pqxqVURJNrDyf74MYXv1ZZen+N4u7Yh8EE3SqTlolTU12sMo7RyAk0z2KVtGtQo1NqDSDi4KaZdF4AW8qvMmcLbohS06h9do6U3wuBCjDDDmGoH7O576ncAjfBBBPxav3PUUaCzmo2DRZ0W0It+f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/tE+Rm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/tE+Rm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B5CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754518793;
	bh=QSBAXBHG9k11SY0tT4iDp3jQnYyfK08fVDQDjkE0c78=;
	h=To:Subject:From:Date:From;
	b=d/tE+Rm438eQH64D5RTPZswXrkKbk6XJ6nM+XyldDL3e2bZRIN46CzDgtfsATFy9P
	 EvFa0F1YkPdB+VsBL4Q2dHZX3l4N99960s+Lc3S0B4Y9jddXM5zx6xa4pivxVBGdaj
	 cUAK3oVTbP/6hvpfK8CiTMMFkAw6ip5PH2NdW+69BGVI0TFpUoC9jmwfG4FS0ICDyW
	 PIalrgdiJc176YdFzM7qp8NxUq10B85ZoJhYhdQxNgF1KPz3t68FRsIBt1ccLuHPQd
	 dljHhQEH5M5EzMHGEPyBrNfWYTKA3VMa8jx497wWLM7x2DuazQMv7pVBNNghue40gg
	 /w4DGNOHK53fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E7BC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451879360.15433.7800941811099575325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ad0b350bed997f13fbb4bbc650b47f22ef0be72383a51ffd740043c0b526c8
Date: Wed, 06 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754518793
