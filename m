Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614EC13957B
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 11:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718363903; cv=none; b=Aj0EwLefwiayYTif83KGSJiJjncZCO0zs4ymMXwruiZ0GetLgWTTT9IyZAA1kUW/fgZqxhy30pNefZOZFX3XOvjTrkP5K8Dki5QL0rGADhK+rj+XCEc/rFaw8lT6TeOJbKEYEuPDglhye/v9OXckNjMUbHwREGPpT1pGK47StDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718363903; c=relaxed/simple;
	bh=GjhCTBffSnCsrUY3KSk94AJD9Rhh7bvqSpBL1fjDLcw=;
	h=To:Subject:From:Message-Id:Date; b=WEvA67QXLl9OTZk1wyH3+LUmlmV72IdrHN8H4/TK7shSq+2d4NEGqIXB4Hu9bgho/2IeNTS1L8cASpCO1Va3NTros/rhSU0N53E6IaWGRht4rcczeAWxsIIFD29qkwBrm+KJZAEunl+90xWS1eGqizqcB68NWnpflqNpVhQZ4i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtJZGEY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtJZGEY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1DEFC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 11:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718363903;
	bh=GjhCTBffSnCsrUY3KSk94AJD9Rhh7bvqSpBL1fjDLcw=;
	h=To:Subject:From:Date:From;
	b=LtJZGEY283n+2lHKoLooYD1lotpFOf/G7Ica0xsAvPBAVTwBt9XLFa4zav6c6nQHR
	 PYShVxhwr1ZwBbILUKVL82HSeATBbeB9MW5GV2sqpars1qxx3kbTLO7J9DTfdM9F5Z
	 hrscIUwjSS/gcEo3UbSXHoGDBAlPPk4xnIgiVGPIQ4gbkUsM/YgqL2Yj5TslybMRYL
	 s43wuhFLIW7uB1n0WthScG9ShqsVfwI/M4wO5LAPqrCpmBfso87NjBSN8d10/O7QeR
	 /fR2Rtgym4nhVShfaOlrkjkIRBkvTitfoyyUe8HJcatCdN2L24974pdtycAoSuIE8h
	 0fgTJZ27geT7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D394FC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 11:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171836390285.8462.15942048763226241788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab732c5a527ca143c4e1b909a6c2ce8e9def146cc8b2e5c73a255e1fe4a4090
Date: Fri, 14 Jun 2024 11:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718363902
