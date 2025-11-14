Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEAE2D24BC
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763158194; cv=none; b=JZg6IJqzWj1jS02LwjGfElrsUHZM0lTADnXqQJV1f/sM2SgewteWXpkprLTvQ1u7kX6gz8cKxH/wxaIFQbo20E4pUq4ybXP7NBAD7TJYuEbhnF0mYgyfC/DsV2mAuXouILef6PUtrqbdo90JkK3gCnXhauG4bjuO0I/ZHMasx/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763158194; c=relaxed/simple;
	bh=rwdJ/Vi5rmKp0j3osFnjGI+S8BbJS2Vc+uI6E6WKuhc=;
	h=To:Subject:From:Message-Id:Date; b=XY2UTi0i6YRsnnTxFfZHswwKQCAtKuOY1FvrKbqvIUOp4EtlAeHfusPxwNqAEhvu2HzSMOpWqaHKsWKxwIEVU9RLLCWwVJd/p9eR8M2k7hO9DhyJT/fOJFg7csxhYEFbivXwfWuZmzWb++M0YT2mrmqQ8bCNgYnqH3fvdPqtbx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRCi6QZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRCi6QZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE50C116D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763158193;
	bh=rwdJ/Vi5rmKp0j3osFnjGI+S8BbJS2Vc+uI6E6WKuhc=;
	h=To:Subject:From:Date:From;
	b=WRCi6QZJZK/tYOOcNQ6Edv8fYefe2WI5Q6DMZRabv3Af/kroqot13IC6TP0Qh2Zgf
	 RC6BeVYCQ5/fmJxwE5Xw5OatyCPvsl6AZhm3GRCVGnohrqFUmS/k3dl4KOkDfvCBFL
	 DqhtYJgeQjMNoBUb7YLBFm+d82K3ro4wCi0J9IglwIJnrMy2GNnm6xXtqXwRtYQuEU
	 5Lzgj6gn53zE2OTHUl1+EK0gIslhw5pDkeNXtNp7zEXejIQM/M8bAkAVJviO7kpkW2
	 GvcwOuWUhMcnuPjHYMX5bbwypPTVZChzFaE6fPUrgW2liT9WOBHaU2D+w4XvmOMLiF
	 iu7rjHQmRw7aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3FCEACD2
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315819357.24888.11261885809597528465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36aca4aa2c31e0c01f897007f6442ff355f625248894c94ccdc51cdc761f1273
Date: Fri, 14 Nov 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763158193
