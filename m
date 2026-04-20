Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0753783C1
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776652054; cv=none; b=nfV8EQt3BISv418bbB2Y2an7T0P2bCJco8A4anxrdBdTO9YRV5p2UeSRn9lmkiQzQZku5fdgo1nbSwrzTbGSQxJcM2G8NAbs2Itx7zPV0fTBdkIY57RN0A85ED7S9ZvGAEgvn4xlgWaPIRf4rmHLWd7BYHoDnSL/f004dRUuRYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776652054; c=relaxed/simple;
	bh=Rl0CFOXSGLCQFvEhz8rTQA8s7pzE4mKVn8ZKhFOkXFs=;
	h=To:Subject:From:Message-Id:Date; b=i1KQs+ODcYrM2CnttZZtd46/ahrF3AT1kbnUrzgTU9aQxoBwFQfk4SH60SRNGE0rzv+SyG2ByYGCw86xXJVUvhArAshWeWhoQyiLx+9lRmjeRopt4oTvOZZhw6yrJlPupe/72XQE0L6Fz/h+pxO3sC1phe26jt2ufUZeB6urOhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPVI7nbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPVI7nbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA02C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776652053;
	bh=Rl0CFOXSGLCQFvEhz8rTQA8s7pzE4mKVn8ZKhFOkXFs=;
	h=To:Subject:From:Date:From;
	b=tPVI7nbxlOJzraliXHQhMyu5ocRfoJ3kn7nbhQUWb+AD+4J+5BnIhYvfxKBEu7OKb
	 azZ0b+Q70mZEO95ROgOtoH3zurt2NzqGuvjP9jJpa4Z0lrBbJf7r9Ea9J/pFbjM4Xq
	 ye71BB1gw8So0sVysIZstTZmx7/AhWyJ96SY5yWFJb7ppcnG4LDZVkfxhKo13AqrKN
	 KiXiKeHeVA4e2ZiXvP1hoh8HIsZiKJ/HR9GD6loUbArHUPMgEibqvv2ckOQg+QfQs2
	 hJO1E/SicANEo94RPdz5fhaPzTSHgWzDRM7z31auxrsLDSnOQp9IY0lYbomgpZvObq
	 dj6hv9cgzktQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC37EA71A4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665205369.17545.8458312156737085313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7f96e33dbecb9f12fc6f623fa0214935394c41689117882408b0708cdff36d
Date: Mon, 20 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776652053
