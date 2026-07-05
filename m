Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C0F253958
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783289914; cv=none; b=rOQMvxzh0nTJH82Bpde0sJaWGIM98IprACOYG1Rxh03PA7X1yyP7AW/GTJoXvQkm8x2EIFMHfuI31JpeR67ntKAU4tPnNBvuC3XW2jgDLeG8ne8u0Ekp9vf2zxwIdM8skKXE+J6sJ3NX79+pB3LB+56iq2ELjLS53a23NhK/93o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783289914; c=relaxed/simple;
	bh=lwn/OSKJIWlyvNRcvFwLbQXAh6pK9PuLKALGYwfm/6g=;
	h=To:Subject:From:Message-Id:Date; b=cLNoBtmE+ldJbbb2+4NQvRncwHWFdn7wchD0cQDHnOy39VM2DnJR0VlyVYLy1v5j2PoQPfHYyKsmD/VI2k2dGEyvcHdlbua4DAxKuypAmhtcTX36zKf8TFXJNXKQaaBfSKgHuK44kNmdZbpAjyerNVQZ9T3/JcV+A+Z1/2bZt9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVTUPx9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVTUPx9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2440C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783289913;
	bh=lwn/OSKJIWlyvNRcvFwLbQXAh6pK9PuLKALGYwfm/6g=;
	h=To:Subject:From:Date:From;
	b=TVTUPx9E2wixF1yCdZApQpjgrSPNrAYqM84tWe3CPwX6Rz9n0tLiUvGj2Nl824tMV
	 JKdu2YFCKvpy5wanM6psIp1NJg9s5TwhNIW5ikRKRvsgDwIFMP8JOx2k4ivy9PpoOF
	 pMx1BjNK4ICKod6sWW3uHZfQztyvuydRGk2d8JsccgPGI62zHMIgcStOx5LQdvJjwa
	 MJJzSEdfu11Ca1+TC7wmoQB8lXDtn2NRMTRJ/sFUkDevjouhvuyMGN94gMtQW6ftBy
	 0kKpc8xWc+mGIgfaCqJx9h1Kxl4UQzWYFLoPbO5vpX8pI52c0JYgWONty60EvLyiLQ
	 gTzDFKHreXegg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBEDC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328991368.18582.8856412755529015792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0510ada1a29d572380a8262aac7c535a52bcb220da424bcd22ce6407f6bdf0fc
Date: Sun, 05 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783289913
