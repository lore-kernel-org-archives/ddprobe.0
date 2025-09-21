Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C944C6E
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758433794; cv=none; b=aXEXdycy5gqTxNVSBN1t4DfvQyM3i/INFvbwZV58ivdJ8AlhYMiT62RsCNjW7pOs0SDMRocTiJZC2ymiOtP0NzeLik6e23Tc/RLDnn3PcWjrAK/RhUXJZdpAq0TtYN0GJaGKL3H8WxurmSU2UVz/8hjd6/byt1fnAYAuAhmJ1VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758433794; c=relaxed/simple;
	bh=4aRLGkvZpblEE0A4rq1mFtqsanTNKDq+MAhDV0h7Abg=;
	h=To:Subject:From:Message-Id:Date; b=V5jc83rGAQkdSfdOgC5hmdwsOTkh6trjhOxBxhj6C5B33i+RrQbwn5CDOrwQmXoKOibYLsO+64qp96z4SP5LZVok7ZdgIiDCC1S7N8OLROvqahZvgl06FtQyrfLaZ+E8xJv+F7YB38zDeXA5ixa+YwV46vsiGFVIZ+EWbEgNn3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nn+bYXqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nn+bYXqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D32C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758433793;
	bh=4aRLGkvZpblEE0A4rq1mFtqsanTNKDq+MAhDV0h7Abg=;
	h=To:Subject:From:Date:From;
	b=nn+bYXqF2LVmjnpPdvwTWIdnKrhovCutle0bwM2UDsfXyqTuo/AKSVTANkdmhxiyr
	 n541uW0hDamYLRiHHTJNdk2M0bAXJf29a5fRpTI3lblYw7Gh/tfcywpCNLe7yj3zWq
	 uClVF+ASxL0SPFEVN6dg3Rlw0Tk65ktH1MsZn0LDZSswQAWexoGhWLQ4Oved5+Ixvz
	 8N0mRGCke8JNkbj7tRTZlYFheu3RQJe5mB+evbC6PnplnXpLYQIYbVwjOpO2weSC51
	 7IZhDCV9BMmfVh12GpDDbHKCtxCve5evsXtUaiPAqGZNB6IjCqEu1wk5jN/RId2Avh
	 9zjISaColdTHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91079CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843379357.7626.14054482580212017088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81a3457c3d109ee42df91587ee33cb2bca290299f471a9990b17236e279e467
Date: Sun, 21 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758433793
