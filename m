Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671B6110A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720487783; cv=none; b=rJoHpy5u7VgdT3Xdy6CxnolTZe1sGcGIv4k6Q7sdoinJDyXIQyRl5EC6wv4EzgSzD0nbmkcmlVjpOcxP0ygE/2hltmLAuiEEmaLRBce2jQ+lnjSdQqPY/LeRf5gaxCVqW+hd3wsxfr12kkYuuNGJj6oSDOAm6jfGQgciFHhQL5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720487783; c=relaxed/simple;
	bh=APhHAH1bxaDf0MGgu/BpL/oQnmBUIqkneYlnz2b+4Ag=;
	h=To:Subject:From:Message-Id:Date; b=edi2okSorXoS+s0pXUerPJI7n2zWa8OgZwaPKhLReZooLLgFDOErayXcFnMAa1qe9QyjhXFCwQSJGM/ZQbdDxKIM4gCcwas7vLqTVSAV8pXXu291pusK9Qk6dQ0tEohXkfxgUn/fYurSfFW+is6Q2KLvXi5HBgrRzUVyiNWiXUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUsL+t2W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUsL+t2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED876C116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720487783;
	bh=APhHAH1bxaDf0MGgu/BpL/oQnmBUIqkneYlnz2b+4Ag=;
	h=To:Subject:From:Date:From;
	b=CUsL+t2WjqveEOilsmLY3WJGVMCoiHS+e2xDNaf4b0DW+k9TiXXNyGRIhoI0tGMF0
	 cTNmO4PJkiqJ1nFeQ3bddm0TgCyQrFWeDTP/Yq8ecofLQ/GlnJTyuKB6An6QYYKR/c
	 fApqqXb17h6q37ofXqWEe7Mhvuys10dPJKY0P1JPU162Mmd/2IF1ewHB1CLtggnWZV
	 JxjqqopSvrsKfytRbCoOidKjPu/4oOllgS+uuCm9E6QfdokFeq2mmbBVI0kRrRETdw
	 IswkGjhkIZQlQhvJdSBXoEcoGEBuxa7CG9POcq/qnneDE8JpzVs0UYWz83qRp7aA5I
	 655bMzi8kJtCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE710C3271E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048778283.29524.10159180086527377372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad068c0734002cf586f6fbce3067fcc0f16bf1546ae1447b17ce64ce1a2bdbe
Date: Tue, 09 Jul 2024 01:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720487782
