Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3370E2EF643
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756742994; cv=none; b=hsJ8DEus7VWurNsWmBpvrcZGvGglreb1hEyVGkbBgUkKXwUpj+8vFjDucOndTXDaUPFFoAUrcWEDckHVButbWhJtfysHU3RWDE9migJnh7P2cWWj7mZIzGzmuvIPWm2zWqijjop9XAV8Ujw/GD6Zzf/pN2E4ON/SS09AzmrXSz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756742994; c=relaxed/simple;
	bh=hprOEoSar/cmbGlA453gjTPR/QGsHQvAnnWR2Y9ROGM=;
	h=To:Subject:From:Message-Id:Date; b=CUaUGHUAWHPddXE7GJRe6RxQHcP2WqXjcEHNEO8y/nUguYlDKB56A8+CpoF6kWwnzOTlxyDRC+giK6N5nEJwG4GfjgcSC/BE76a3T4UXH4Du8QCNGsDuky9ZcRd4+sjmfWYAzP2QvdiJIZ2zo6+5qg2114Tv59OTSyVJTqmxRPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwJXezp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwJXezp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA5C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756742993;
	bh=hprOEoSar/cmbGlA453gjTPR/QGsHQvAnnWR2Y9ROGM=;
	h=To:Subject:From:Date:From;
	b=DwJXezp4pl84PFtXDgT7nbx+C2wRtzAEy9TqWdgG8bCP8FiMNRSpl2hpmLg/OigTT
	 Zuys38mqnve0uxbG7yljnzvyDwK6tbTpqFi6XkfxfrwEovG23/APXcAQyGjsDXhVW/
	 eFMavnjhgCJrH4LY3lcv6C4CDlbTL8m6IJjNkw2kFQchJn0RC4eVcRJIcvRrBQ8C8U
	 Q75IMe5L+91SlDzCWLeJgzuTKImXDQsq6JYXixYNiiN17gOKZRIQ+cTNUWHtOdRid3
	 JY3/g9YPIoELAG0abEfvPR53kaebi81U7F5patxqB8cggPbOKS1RqnVeUCwbevgFcP
	 DxQFZDOiiD/vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F7CA0FFF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674299357.20679.5463766659257933777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a90f93c4cd95ca45c9aa75a39540d2b83f846e2b6cb1604563d077ca9b982c
Date: Mon, 01 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756742993
