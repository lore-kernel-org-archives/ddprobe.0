Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064D730BBB7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769781234; cv=none; b=LfWenJhSUrj7fLZpfCr8SnIbwdpuuJkjvyxXXEv/zrlWHW9kUB/M6tRMg//i3Ue/yRpZcszIJFjNremtOnC50ztdH2kKaMN6r9eanLfuGZ+fEoh5oBc1aZULb4ZZNY024qTOuM5wTYEnFlkKpG5N+QFfy50eRgqCQs8cRM8nLbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769781234; c=relaxed/simple;
	bh=H79MAOuhGbC/u9NhINeI+gUIgEqgFzwwch2yGz7xHF8=;
	h=To:Subject:From:Message-Id:Date; b=qYlhWU23z1NRT0DKGITqkAAx7LMYEm1UfV7b++QxRis/2+T9BMbpnuU9r7ytwz1ncC1ZY4lrjJK5B4j+bBsy/7wt2FAlfAr6Kmhs/RyDNNYx6OrmR9GmWfjOS8AndPxbLMWzla24K4o6oAv+lAGS0a8neRC9rXssiAWEqVzo978=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYCgwLJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYCgwLJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5F8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769781233;
	bh=H79MAOuhGbC/u9NhINeI+gUIgEqgFzwwch2yGz7xHF8=;
	h=To:Subject:From:Date:From;
	b=HYCgwLJGynDckvCikKkgBJSfeaH8nv5YstGYDipfDT+mj0kYDRT0FkgYS/a5u1mQ2
	 yBWuM66vYrWVZrQ5kH6mvhFxws2+9A1fYfDbXqtkKo6qPpKu4ZDQLr/lXxsn9+C934
	 pw5s8yLd6IJ7VgtaRr6+M53yKjbYGL4niNLqK3wchaTyJg30X8pHRZ98y8ZUitAwgR
	 usWyxDiOrhShkr7DwI5rMFUuRjDxtZykqHVk6d664Cm7p79b7uVzabTWnFjj3vXAIY
	 qsebtpc1owI6pxkFdYvzvXV9Wdsu/eyGCbFpVXfcCgDZ8PzzZpQv2JJtG4exWABZUR
	 cTKnC2WcSoqwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC97E6BF11
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978123357.14228.7643950467503027866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c4bc4a23976a7f99fe8e6994e47a1b7c68d6f132eae473fcf407140e1c2570
Date: Fri, 30 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769781233
