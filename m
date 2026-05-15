Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D413F54A1
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778831434; cv=none; b=nZfAyq+6hscuLetAqnMa3ss6Yo83y5/mYoXhQN1cD348RtxsAIKrK4PdweiHE3+85j0K3jcj+Vjv4wed1OobGhansn4lycVEOmu8HKKYF9H7XjSQpaDb6Z+YxILJ0V1fIMi2u8XB1pbBYV9REKcOOmD9MXSfx4JO/wQcRyhayJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778831434; c=relaxed/simple;
	bh=o1wAzUm/2+OXwEqgOScda7KH2qFIiqaS6y9Z/x1sKkM=;
	h=To:Subject:From:Message-Id:Date; b=czSYuLrMKdOy/SH3pytgbh0wyzN0E8MUGpQT4bLtqVMxnFN6dY2PIn04CLLQVqznlJIpesSGKdqlgBidvuY/oUtxIOg0BIHxEheHtqr+VvkfhCKLV+SPR5QWSoMXWFy9SbdEsQe0yS6LVQGEW/1xXpq0vaBTTL4W+DW8JvdXx34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuB7fM3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuB7fM3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8990C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778831433;
	bh=o1wAzUm/2+OXwEqgOScda7KH2qFIiqaS6y9Z/x1sKkM=;
	h=To:Subject:From:Date:From;
	b=HuB7fM3PlsG+qt9rDuawfWxQnV5H8Gw++OaYz7y5raTREDim48ackj5JEhQHnS/Cg
	 HPun6RLgzjpj3zhsfno27pIMy6IlWWpELFwetON5qrk/YpbvEdmyl9bIjzS079/Dge
	 P43uCLPqjObpuzPM/U98vU/jgeTcrIj1z/5DPaP0zVGT7KPQPaDwVsa4l/vE09246H
	 3hu5MXzVGspSnvwo7gVHCCn/yD2LOFOYJnyGK9yTxhTFSYpz1XpDp+g2U4cnNxweQ4
	 4EoEHab0E43G7Fi296kHWYMjbbCPI5zom7Wj/m/mzQycDmr5M9krltAa6eY3zeF/Af
	 +91RV3bCPczbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB214CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883143369.785.6141912753870635112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9776ef4e64aaa5968e98a8c1497ef4e956f62cda5f497344f5625f7b9dcf590
Date: Fri, 15 May 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778831433
