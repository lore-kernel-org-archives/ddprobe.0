Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFA75475E
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747024795; cv=none; b=Yr/gkVs+l0/2liRkPPQL3IVqffZREFfqZsODjidznxT8yilYE1u8aTX0+7er1X68qq08AGn6Oe7n/QWsBo7N4kNU3hQDRfQi8nn3k/9hhTkEVizPfX4qhHeh1iyPThN624QasialX1fnsiPSjEzXaOLC5sjrQdAAgyb3gDWJsqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747024795; c=relaxed/simple;
	bh=AeBWCHdL3nsImb2ZJEpGomLANiP4yAH1qKWpL0lIRR0=;
	h=To:Subject:From:Message-Id:Date; b=UjQYhMkc3pi9GUr6Ih4jJ8rRGF/7UsQ4ycxTD/MdQrvTFNmVO0IbE3pWzJB0du2hDX7D09xpAdd9s/uSgUJmdfwNChF/GyNYcQtkDPhjZHmyOg5fA4mtlg8hNd87rboKut+te/F8NFDhQjg3mQGa2gIOpIymyRejQ1NvK7Jm048=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTtuPxWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTtuPxWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43F3C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747024793;
	bh=AeBWCHdL3nsImb2ZJEpGomLANiP4yAH1qKWpL0lIRR0=;
	h=To:Subject:From:Date:From;
	b=KTtuPxWwzwjtB6/igYbwF3MPa1tCU7EqAiJfPJ/wsjO8aQhvl+BfMPJVE/qJC6UZO
	 r5YvGQCNXXvFpoEd554wEVX4HiXHb3Z0NOiImHgAoZOCMXJJkoSu1gK9X1Y6Hjmpeb
	 ztYnSULVckW7S5+WBMpY/gDZP9fe4iLoN7NbJUGQpthuU57JUVanFX2jJCzO6kUdEI
	 OAAMsWTtb6qRAPEDM3X6kfR4tZn74zbt1Nis+ijDidsWD71ImOgGKOkU+MdiZyk9lj
	 kt7SfvK5gzx7wJzrs23A6Mwzg+AEDTnuScuobWTeoknGAHUrgABA5PaZwndScoJjWd
	 MKXMewjbVEt2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A0C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702479357.450.16897905948854583327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0169bad3bc0276f6c46e09b2dba4cd9c1f696beac3e02bb286e0a3bef2032de5
Date: Mon, 12 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747024793
