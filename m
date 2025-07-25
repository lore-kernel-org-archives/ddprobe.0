Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A1D26AA98
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753424993; cv=none; b=rpGeLiTtqi57FRAdQO0ybgUMsoDqiANdFfgdyAjTrfs7ChgPf1gsmY5IS35JqbEGkivA1yhQdgrAd89tQayBAq5uKWZCTEMxoVHvMdFHBxRZXXN+wYofxO0g3FHKdNPwc8JEYFvLxSDdKXBAWUcQiNJkvHs1OlcqyaipidlaKmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753424993; c=relaxed/simple;
	bh=SIuSNtFNsQFLidWlVyLlgsURdA+GTcY5PsA/bOBYCNw=;
	h=To:Subject:From:Message-Id:Date; b=KQniz5i7KIb/V2j3Lsuecq3jLKte4lcBBDGmjh/3Ep2ZgcLTW4hNkSa8I7hFxhBJoXA7bKLXUAGozeGC5dwoVCq2M4KBBWzEHtlvZ3XiASWxpmNt2aZy6kihl4P16JDuDYzIbnnOeKR4UTPUohUwZnB8hA9UiuVsHilzyo7UKNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bekZ873E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bekZ873E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D25CC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753424993;
	bh=SIuSNtFNsQFLidWlVyLlgsURdA+GTcY5PsA/bOBYCNw=;
	h=To:Subject:From:Date:From;
	b=bekZ873Ee5ytZ7I4CiB5+p2/0fCBP3hOwM852JvFwywot+sUl28wmxvyd92rJ28mr
	 +WvQYBr8rHhYgWUx5gMxoKPChfciLNCqKgfjvF/2C0LpvCQszhHuHeVuMUFJzTBIWM
	 91KIMXJIfoac7YzN7O4Q6bxdJ/yVrs8mU4TNwVtdfbgoPeRtvfYU17mVdJ3S5OHqCq
	 XY/oVh5bQVqDUhamRSFBas6eNZBdSrDC6RzEbZX+vzAKzxQHPGYGxJY2XZKqY5xnaS
	 w4S6XMnupecPqQBiAjkinkg8n/ltlk83m3/pSy2+oB7AYgBfb2r40TspFDVUwYpnAS
	 AdJsXdU7zQbjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E05BC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342499357.710.12607664219203078338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac46f8c89b313dd57ee4309160c95e31079d5859bfb96c6910340ed092d99861
Date: Fri, 25 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753424993
