Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B022ECD39
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753385394; cv=none; b=N7JyMGwbGtgpYalJZ+rNknWQ5m4cYpebc1LKzrKOnAPbtUNtvAUUGxkS3tvHJqimxW2orfVfcPs7ftJqwJ8oUIR0fjf1Ff5X9IGHC76Igurbwi1b5R0Nwn/+jVhmN1O2tz45ZwL4yzoXg4IGQe5GhfPHw0/nhEPABaqycsDfwAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753385394; c=relaxed/simple;
	bh=EG9KBrWKBb+CpBKvfhXOCB/I85lsMQNRo/6Alt8ZK34=;
	h=To:Subject:From:Message-Id:Date; b=SMINAjQAuPlnYBcSy9if9ciAhh1r2wmbmlBZ+V2cPaRHlqO6Ob74XjhgmtuBzuk353U6K/UUNrAx2gZTnjhGkZ8iGj5zSvGEYYAvuB32oMC9KbmkWTmd1PufUQmhwz0yBIpFbOxzO2KPcSBWOCZpJQbA/SPoYRfuhgQzMeddA2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNGgXrJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNGgXrJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AB5C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753385393;
	bh=EG9KBrWKBb+CpBKvfhXOCB/I85lsMQNRo/6Alt8ZK34=;
	h=To:Subject:From:Date:From;
	b=DNGgXrJLY+XggpOPkGu53At/YXdawU5WwpdX0zyRqM/5GPOwMKEnVvGFWWQhpP/Kx
	 aAhcYruhOmAJ5SJFaGU/CICzBuECqO+y8IVOEitqm8wqv+eU6kozLg0CkO9mjgzyEa
	 XauL5gZKaUzXrM9Bk/ycBOGZQWKwEw2vjkdBOgSSwdjdTF7g6el0G0FRhg++Ki3Opn
	 MHbez6cYSq9i0yoVyv13nCO3Xa9eCGJ1RZDOzy294axJbrqys9SJKBkhZpxTldJ3v2
	 nqmrz+PJy2N/MI4p/H3K6iJLap9zQChsquWv9u/sBOQign9OhmQZvnT6+UwTcoSwiC
	 dNmjUc8vb5nlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91361C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338539358.32089.4213463128097157971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7303f049d71c96c02d86b68da57359c4cdab93c3e8a494fc21c4d960f51b3089
Date: Thu, 24 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753385393
