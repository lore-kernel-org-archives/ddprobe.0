Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C372882AA
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752240594; cv=none; b=DqwbhlT9kw0/C6slkHdUrvSyMIn5YDQtGrMoG9Yb3KUhEqZJARuYgqixP7Z4Pf/2Oa6lJUtEYi2FbQwohlWuyUYtma4KkyJdx7+xy9MAwUx2wSu6xBdMKzVKn/X5OWGSUbZgq0CUBubxalaEYUzD9sqqULh7Orpbx38a2XK2NF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752240594; c=relaxed/simple;
	bh=DExrJY/xbVXTMo0jyU0m94IaRcTudDsv/Jl7ce4Xc4o=;
	h=To:Subject:From:Message-Id:Date; b=jCf5OH5CdjesxcE10uz7nCY0Ib6PkXjXqaYB48Pf6M0gvgn07m2MpM9MZh2iTioGM/dwK+lSIoMEBBeHspao4vUJdSBWCpgh8nMX+og6ef8t/VeQMzQx3PlfZK3BKuvn6eUSU341tTDjZmv259VIuB4YzJBHFluzyKKDmE7eb0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfruSXIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfruSXIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1729C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752240593;
	bh=DExrJY/xbVXTMo0jyU0m94IaRcTudDsv/Jl7ce4Xc4o=;
	h=To:Subject:From:Date:From;
	b=KfruSXICv4HRdy7kwsNw5XqqW+2sDVdxpKaJ8DQAacG0JfbGEcC8K3w5Lf7TR76Iw
	 ARWXrWKi/N5s+oWXyY1rkDXJiFYMxdif4azP4wD6r7KvRW5GSPsugiNh70M0PIFFq/
	 NkXnageunmVT74mUPD0g7dkSp/nFLtUfhJ2t6zpAuQ4b+5s1tEzWl/7Looe8reEBlx
	 J4atsa9L8WxnZnPn3uajUuLUNwqXF0EY0ayp1PSRfApAmFsKRxDonX/H6/cwElXIGO
	 z2UpukLIlL9LBll6BESkxn2fjcNG9kXYhD+2kl2S8hL4jjYq1lF6I26rSkyYM8hN9L
	 PMFei4EvOWsjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90097C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224059358.8804.9732366345210534793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea8a1fc2eee1d036111b38d65ab48b7553b81944d8178dc5fc8b5a425d1f381
Date: Fri, 11 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752240593
