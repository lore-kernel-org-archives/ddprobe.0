Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337291F4613
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770860094; cv=none; b=kYHGKDmfZzdXhFcoLmRTqjAqYJZWOvJOxi6dXCFWhgT6X/FCjTBD8OM5kkDVC+L69mPvZD919bWA9grrEJxDGkKrAoNhXwo/NmfPP/WTiWAHMWa65CD4TZb3lL/DAnjzBzqzAhgFOqSWnHy/FVRDpoUbUfgtVr+rUoQLw21k4B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770860094; c=relaxed/simple;
	bh=rcrC4TyzSSv5/GrJtbzAdMKKtTe1LmQnKvPhN4GsYeU=;
	h=To:Subject:From:Message-Id:Date; b=CZkAvA2Qc0L1p8EUlZ4OuGegYm1Tl1gkqG2WXO1fWGpEIoLDVt4fmPwdYDoHNMmvPTtnLAfSnyfV7TvnstJxPEA1reWMwreHUvI5LdIGGhFYNivekRDMvs9ePKLVv9L/Qd9cXuth9sLSwps+TYuqsVVlnur1p5WzHD2/tMCQfpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gj/nzbdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gj/nzbdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1380C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770860093;
	bh=rcrC4TyzSSv5/GrJtbzAdMKKtTe1LmQnKvPhN4GsYeU=;
	h=To:Subject:From:Date:From;
	b=Gj/nzbdLbID227BxdxQmUpsN+2wmNrxDAcuIcSUTI8EldZ+97TMx/knOFxjAdSqnf
	 qnfGdhBIdbZsLkzteWUDFnGwo2RGC4fS0tkcphQ7GcLamrRXaJIVThgWpewDJRuvSd
	 q6NE/xjIQtnH68Y/qeKSPvSpu1yjjRKZdEUXtDBiwENGM6TwQS7vuMQ+e3KfnBFOqb
	 QqY69awssmXdYcO7f42elToiys/NfzI9UfwJZuWAqV88l26WUXzlQf4qgiJ29m0Sey
	 USIl/RZQ12GyFSNJZZwMWoIzWDQIIRAWnvxuuZ5qdvoQQiGXnxCJz9AEkif4LP/KfK
	 Z52VSq+7B0Vgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C0AECD6F7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086009367.4389.8306642937994637280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6595d00725fda30266f15a2d35b5fdf3c4d426e8365dcea6166ff1e71336c2
Date: Thu, 12 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770860093
