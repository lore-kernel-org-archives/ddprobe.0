Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC332F3621
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780149214; cv=none; b=YHIEuSENgFqyo/0DsVwLzZ1Ks1/k2p0h5TmlYwkIRVAAUVtHbe12KTMyeVX0/hyKg7mFq83Q+grJuLaKcq/2PboyF6eLfZQOjTBiDTsL48AqZuyQgt2WkH8VtxFsCimXFHouKr+yF+eKgC8r37Hb1ndFPQCjNmlvXki8SlEgSYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780149214; c=relaxed/simple;
	bh=rm3a1HB1YowX9nhGdT5mgTjNp2X8TX47OQ9QSfTu9nM=;
	h=To:Subject:From:Message-Id:Date; b=e8bHUgeIOiOJ8qLA6Tb8YkiLaAm6OvfYFIqQmh7oMuYePgF/D0hlOQp0S8Q5NkTszfRAfk9LWAAWcMWbKkSMVsStxXXW/PYvN/Yn3qpsnE/5ETAQaBWNiFubCtGzfjpD6TbM3wCXSDjt4ahb0j740dJQHuZABksHU/QIAxIFpZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLE3g0c1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLE3g0c1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EECE9C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780149214;
	bh=rm3a1HB1YowX9nhGdT5mgTjNp2X8TX47OQ9QSfTu9nM=;
	h=To:Subject:From:Date:From;
	b=uLE3g0c1GivdVLds3/qAAA/ifZfk+/Scwdaut07L2fiXjFhc2QqZa3mfFtXvC2q3g
	 75CI4EFruwy891Q+yOt5FsByUWOubXlCRsTgoUasuyBFokBazdycHpMVhsC1FPOQfm
	 cBPshEaPRhb80ZF5799A9fM5E3A0Vmv8kfWJBVhPkAthQ3QtPXw7HML7KVeKPSefUU
	 yqwDT3AtCHWf4BO4Sla6DyA22hKu92gf0dPv13TqpYcYNLeA4GtkATwj/g4d4kdlXM
	 7hz2asuZqISWEZzqkl4wW91JbWJtKK+xY5Yh+04JqYVXWmeiNSHHCU3qMo0xrCAcrO
	 1+Vd3NNtEStfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64F7CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014921378.25000.12409053442696919680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924823ebee469a0df4d259337b0e6c41c265f056aebd27bce05acebbf965e02e
Date: Sat, 30 May 2026 13:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780149213
