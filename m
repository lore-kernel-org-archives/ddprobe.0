Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CB92A1C5
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726943754; cv=none; b=e5Uc5mmWeuAiKGGlkFStpiJhZV0eaZ60WK+aXd1R8my1e8FzrmiKEWokyvp3gsW3XYL6uQ4cfRFkvtY8X9sHvuZJBhI9BpOJtI0xPe8uFURPSw61e31mCQesXc+L/aS5WL0JTDSrRVyoxn2p1gldu13unFvlg/rKoHT/nVPD3+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726943754; c=relaxed/simple;
	bh=PCRxAn9evfPLsrP01Lis5umZrvSMzC78umHakZQmN9Q=;
	h=To:Subject:From:Message-Id:Date; b=RmRYtq3HPvDSyT42eAEFDBKbTdkg26fjPNZXCGG7CjJdA1pkAlLIEahqH32er8EsXIPV7yybpv624Y4U4dh4dNzAFxdvdCivH1zxSN7OMPFG0yrhw7ZLdQc5f/sRTJTEAxTY2BtrmOeIqgiU5mM0dXJ3vtAPCSnWqloZ9S+inq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8DraK1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8DraK1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9664C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726943753;
	bh=PCRxAn9evfPLsrP01Lis5umZrvSMzC78umHakZQmN9Q=;
	h=To:Subject:From:Date:From;
	b=k8DraK1yKLG131RQLtqJKeL4KO4V14mpq4Zk5Vhaka5aY5+hGSzEijhETg9rZMmh5
	 nJgJuAxXkOMPeNiaVG9+omfZnPhcV9nfvlAxsukdu0m5JhDlqLLm7rtKcB+TJ8vhUf
	 gZ2zMeNe0LGQc+lQJbgtvMeER3EI2Mto24PsQkJF3xoJP4Pn2ehXv1WTpX0HNadCHl
	 YaxygAfZl3VtnkJB4hdDb0sgW1yDg+zCCvXxJvI+St1h6M30JtgW++8XqdhtKu2od6
	 PzoovJgF1hk2z1RQGsP/P5X9CnsQ8Zi2CUDIPBk5pnKnRAlxHyHKpmkuQet9W4nY0Q
	 Stv//wdydlNxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E6CF9C64
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172694375359.28741.3329779549545057657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174536e94542d1ba4e9daefa592932cacbb068c63038187cb9c929820f06950e
Date: Sat, 21 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726943753
