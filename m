Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC8C1EB3D
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748169594; cv=none; b=DnzBE2pm+vdwpVp36wL0Jpr0GUHffDXWFhvJB09ht71vXMQch3Su9EcW7VrlOj4Ez6WCBnbdAKH/dRqsHGYb90yLpe3rmptepbRmimRnypxYVMZgkPVatchTf0iczrTO7PI/S0kEBDyLLayhELuye45P0nVtW0VqxUtMye1cP88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748169594; c=relaxed/simple;
	bh=g7EgWxQw2W1rckJ2llgUiN1bRtgQi9zB4ONve7JE0H0=;
	h=To:Subject:From:Message-Id:Date; b=XK7CjA+Zz2/oVCoY9eCCPTZwEsH895YEGn+4JJD2ipeG/b3Cs41Q15ehGyrni1V8jwL+rUBxbJeZF9AJAY1EZPK7tTtkOa8YzLOhuzU2Og/qwgvgto06F8GYXTMQKq8SFuaAJJjBr5ENSovR5aP/PhPR32/lcSWZjmpzeO63kiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RC2msK+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RC2msK+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B18C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748169593;
	bh=g7EgWxQw2W1rckJ2llgUiN1bRtgQi9zB4ONve7JE0H0=;
	h=To:Subject:From:Date:From;
	b=RC2msK+GiPClHaoana8N9eQ2yB8vCgs43+fZ+DgNjtBu55mXbqqUPargIjsR7xMIM
	 KZ0dW89lvFsdDYhpverbOkQ27KbRURvQJgwOZiCAE2ClUzRQzHMQBXemxR8hz8mZed
	 XVOH7aqOcUbjicRNGBux+pH4ARhkBTjlhYJBfAqH+drkoJDdcGIT8RCyjpuGvrVJ4Y
	 Wg7HmVBBpsm1yDehTD8jeXhGrxa/eQKWr0lO8DnSxdIPCMzE5d5Pk3rq0hp4bYIriP
	 uYH17BwOP27C9Ddta7L8bLdbTjC4KzqQQx22Adj8sciX563NQ8lwHey9npYIk5BDF+
	 N2dIM3h2s69FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92709C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816959357.5499.4203659060618986864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0283c35d13a8e97bf7c6ba535c1083337d9244ecff4c66f765db7b001dd85e93
Date: Sun, 25 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748169593
