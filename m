Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5011D5464D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780680874; cv=none; b=WORS+iGiv/gup2UmOrWYPRDC0SuyWn+Q9jUay97D2fgMPcvrFjzv8LOJKFjjc5BhqUcpFieW7FI3rNp6ZCxZlUdY2A1cRs8niX8Z31X8vV1moiE05sRC7wxWJjoqKOb2u+mBqIqk8Omw/yJKhtJ8BEThtO5Ckhl5NAdiR4tDMqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780680874; c=relaxed/simple;
	bh=517dNp01Dq6jEG462Zril+gKU5IDECzjHgUnyTBpvG0=;
	h=To:Subject:From:Message-Id:Date; b=kYc9bUrtYHI9oNX9aymiSkzwJV9tTO14vokfVLzHwBmDyOJ2L6UE5t5l45cGdiwp4tdgtuBJJaJYlsiIfL/H6MDC9Sqk8zUreSOwNIqiAymE6EwhQU4Lp74I20HSDRtQYLWjrV0T4QNLtXPS496GV2YwzzR0/0Li4Mzu+hiNGik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXorzZ7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXorzZ7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C21C2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780680873;
	bh=517dNp01Dq6jEG462Zril+gKU5IDECzjHgUnyTBpvG0=;
	h=To:Subject:From:Date:From;
	b=PXorzZ7gGMCIqYVI2e5qCMMXfcDmRd5RWU7tLrjKhWozpzZeMxlir2p6XV6OfIqLX
	 41ziRq6ufpnyO6NtR5TWsQeeK+nrs5nbuAQD2K9xF/OzTCF0y0yEKRMb9IXBCAj4gW
	 Nknbf1F5I7sFIEdlXON3013MXokRq3h/q9z3TvxWZSJEr1xE6f0OSVSt3YaBA3aHBK
	 kTQizefAYyk2KMhYWWPocQZN/G1q5YynFzsUaYV5gTbx1YO3th7wpgzYGUOozeh/8g
	 qhVckdbkeGajAu3e8Tjx/FF6SClmfYqiOgQi8meLqoeHeaVHgUO6gbAIuh04LmSzha
	 cAopuWmfTtZNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA268CD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068087374.30524.2499876709298823985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5730faa40c7ea34b765eb8154f3e02b1f860425295fa897beb2b562f826bbdaf
Date: Fri, 05 Jun 2026 17:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780680873
