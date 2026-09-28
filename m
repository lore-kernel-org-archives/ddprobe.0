Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2B24D9F99
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790608234; cv=none; b=oSYqXikGavG93ex41WrQpyBLHcF+1k1FAFKfNOa9k+JvQdVx8MK9J5mQOyg+BcA3Rn43aQrnpF8Lovdyn13qatyX1KO7TmrX9tSGj1BtdYuW8QbWzHF8yevKmepfCM3uJcnAudiWjvcAu51erKRzNJElyHLUJ/E09LWe3c1W1Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790608234; c=relaxed/simple;
	bh=NIAR6x/LPdcIQntDm+Y7ddV+CXlq0BGjbKhsC/i34YI=;
	h=To:Subject:From:Message-Id:Date; b=m1GpGYuy2/NWA3LpNsGt26r34LNawKzGQbDNcgUtNinn49yrVk9/3f8J/4amEU+3sX/D18ZApG2T12d7lBbGAnUg7vnI0Q5QaJT5ClUXIp+TaFjqjjuYRMrpcawWEDGBH4eXWLWiTwul/V1BJkkfvpi+4MhX6hMXeT1TEPRyol0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dddMdavf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dddMdavf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF7DC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790608233;
	bh=NIAR6x/LPdcIQntDm+Y7ddV+CXlq0BGjbKhsC/i34YI=;
	h=To:Subject:From:Date:From;
	b=dddMdavfyVF3r+uc/3JVvHSmRM7gtwCEt+jpj7NSGDrJmmFgSi6CLPnQdzvFX2wZ8
	 +A5KYh+bWcRHum+v2tple7TdVFBTHH4p4F3s/DvHG8Y3WzFVhrH5ntVEvNJ/OLKnHO
	 V+oFJnK0vYXJ3g/WJm4IP9aEKZ6xvjJUnIlx7EnGIJ7O2AI/uu0qb8N/mFWwvq/Jlu
	 vY8OHUcVW4C8QBDPobECrfn9+vZBRttmeRlr9IwZAoZQGjwtcnklOxGgEALjdJGu5/
	 TArH29WFwAo2UsBvE3RVRnrXEFi8NAvf1phF62+cZ3SOhwNZuG53OeY5/Mkm3T2DqI
	 u8TFRR0dh//bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC0FCA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060823370.22855.7582180837744991245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d705a8b7b544c9e67abe6c9e6fb0126168be8131d2988c0f9ff0ebc7bb7ff86
Date: Mon, 28 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790608233
