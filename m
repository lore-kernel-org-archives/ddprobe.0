Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3986B17597
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758862194; cv=none; b=BWx2GyTpwS7rX8uysafj58zeND7nSLQ4KRAYG7bvwIMToZ6+P/36GrmM/QP9uxjw4vP4CoDqdgqq0zyn59GBfyERDzrWyEGjFOhdKpWyPlnet4vITIphC1c4RU53A5YQNE8i1po2ZGkUQwUx9ojrsnP1+M9ZUaaRxHkjfi/FiIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758862194; c=relaxed/simple;
	bh=bFHfaDowqh1XPtcbZmhTY1WwtXeLKXlJp5GjVs5YPr8=;
	h=To:Subject:From:Message-Id:Date; b=WWQFiiMWm2PaKkK1Hsd+m7U3qNwU7WTf40PxPzZnmryCmtcP+clH06t2yBZ0pmmNCAkTIm7GuuLRwWOIYF4pU4bPqopS4ZaDhOaJeF4V9l+SN7MLzH6zbfLb6rdHFEjePUQxeyfAVO9HM2nM5nVsVWDKP8QVbl1/nwckjDOXYoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=taQrIlmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="taQrIlmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF80C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758862193;
	bh=bFHfaDowqh1XPtcbZmhTY1WwtXeLKXlJp5GjVs5YPr8=;
	h=To:Subject:From:Date:From;
	b=taQrIlmR1p0AEVP8Il1fBvX2quLCjkbwGa72sWf3hs1fD6wFloqUODPc5QmZqvCuv
	 1sD8WdcfhZg7ft9CX7uimgJ14mMMWAqKU0rx0qLalDnn4iFjG+1/aKfWkcUMziJjV8
	 SuksV8bpQFFqgT8+jg7sRN0YwtxCoJRXt4rPRC6EBngGxHl+bA+pBVHx+kPiGwr0uU
	 z73IzGds/DDtPU5IkES9zXkaAYdyR/bE8nUswuEoWSjSib893FoeK2OKHt26C2Z5NQ
	 wbW9P4AEvWw8INhpp8iNYqdffmvCgMnpkhHWVwsj+7kelPEhZUV2uSYfAIUjh2affs
	 d3y3ExvKe/ZoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BF7CAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886219360.8130.14027667369814839765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a7f8740db4a9625039b571248a3e9e877a2dcc9c324eca3eabe07f44c9da58
Date: Fri, 26 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758862193
