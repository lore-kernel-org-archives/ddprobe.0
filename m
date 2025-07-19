Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3D1170A37
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752934795; cv=none; b=MnA4k7xmgmtPqUQJ159YYjm4+gIRAhBHlPHnHgp7N7sOpP4KRPUbzUMk6SOqn31TQDOFHY52qoUulRiZB+Th54EzWC5Vcl/88uhlHwTCxwzewxnRkTxN6CXq2qLZhrsHX9jeVBRU2Qs3HF0KUSPIkhXMB+htSsRt6lL0SCUaCIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752934795; c=relaxed/simple;
	bh=Uz1dGp9q+setYee2cVKcOp0e3fUZyc99DbemG/Pm+Ps=;
	h=To:Subject:From:Message-Id:Date; b=YdjOINOUBOEZ+rKGIjWwuTRb7LyA+m7TEwHzOlnzvueXkAl1kglvqCaorj9fUGCYo4tTlqgtbJvPUWxwpL/mDiPw9k2PTz6pAur/jvsDAF4CpHnJawjQm4i8XqkT5SLfYugvj4MPtATbAUQjyVLUJC/sLQoBeJwXXcV9B7rxlXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bS86R7F7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bS86R7F7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ED0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752934793;
	bh=Uz1dGp9q+setYee2cVKcOp0e3fUZyc99DbemG/Pm+Ps=;
	h=To:Subject:From:Date:From;
	b=bS86R7F7wkw2v3GL6LweCxnV14CRNhBYflMUqk4qAoQk2BOpdiL81sbdSiKP1LGM8
	 CJZ0imdlLNuOkD/3TXDM/jsKWrHAzMxPWAsfRmtaQzDXhf5DX97YWaPAFhmTDLPTud
	 4om8ZXCQJST8w/h86pVi/MMtnHW/PEqIXEOMmDX+G9bnD8wZX+7rC6XFm6XH+yGklq
	 O02b+zLW6y1Bag1PFpTMzpXjcubZh2stgUkmW4XN/7tyiZmQdEg9bnEpjbbOl0zBfm
	 VKY4PJMsbVJYRdAb3kaAiijfS3tPMHhOukTztP31tQkSS1kuwVAWqz6hWaifTazNsq
	 xAa33ER/SzBxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920DBC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293479357.17533.17381104451840119354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86d42144f34d9e0a36b599895c2d1e3f4b8bdf627d4deab8d158e9f5c0bd13b
Date: Sat, 19 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752934793
