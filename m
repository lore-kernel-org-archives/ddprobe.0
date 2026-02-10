Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1574933067F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770711834; cv=none; b=u4wWR+gW+IcF2REc42VqUpmlEJzjXrz8PQx4XG/wv18hnJj/BKRppyRBrvhmeu60328c5gStvX1EDMulWLYzmspeDT8GYJQtcCtC6EXnG6Eplk2b0xfg296/8MN95oRgL4IzBaT5o9I6NoDaYC7XibU1Rn2mBJUAN0yEVjfgTv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770711834; c=relaxed/simple;
	bh=5LERDswkbqAc3qHcmr58BJ5/n0vNA+oHCElCFiz0xCk=;
	h=To:Subject:From:Message-Id:Date; b=Y3JlFT5GREQY336yUJgOK15eFFNnUeSgX4S3MhPnr1Z6KytT2kfNWBdaoDcV72ySzdHNrZn5XM+yimehYgmtENidZaEnpUXzD4iVuyRALdjA6JgniCcFUk0b7UL/2ZQtuXuZEDSEfML+LO0DHOC72R0suplYBcKUriT4cnXY4qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbgGTkx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbgGTkx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BE2C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770711833;
	bh=5LERDswkbqAc3qHcmr58BJ5/n0vNA+oHCElCFiz0xCk=;
	h=To:Subject:From:Date:From;
	b=ZbgGTkx5xeFRxc53A4S7k5rhjUso1WYtLB1Dj+ASO3TfgyGym2MVrXnIdtf9Qf7bc
	 tsV/cyJe/4Gp8Mq0B6qO9kAGO7dnOeU2rNsIWiImgaOq6oVd/mo4BD4y9ZEC1hCdbd
	 n+YFj6HPrTdY+2me/ksjtwQceevbdnO713Txtb2dqNuNstViM2o2/XbGWMWlp2stwH
	 OYzvElsCcC5IQ/c8FOLqzbFFLoGPH463gIigjlT16W1CECYttGowiXj/6VWEsNs68s
	 ep4XYelKm9BjSPvEBgKyozEPmAW67VdiD9vXfSlLjS+uCiK2PvayRqFtn3dAFoxxye
	 +ZqfcgDGMixMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92764EA3F22
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071183359.20947.17423005466034599034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8d85dc8eb9236b3c1e39861a35fa647994724018cf66c5d92c1a7c417aabe8
Date: Tue, 10 Feb 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770711833
