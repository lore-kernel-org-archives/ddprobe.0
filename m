Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370C57E1
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742423394; cv=none; b=suOhlFDlPCBIFF+8wtvDVLH0nhnGI8RfgtbUCj6RiCylTmNpS6mSH52z5iEdVYS4vOnPT2RQveHNkN769hcnWQilMc+5H2fTLky4vQtlI85Q2axQ4cYxLFz3+Ajz4yls0/bMOplwwiKojy6xa4DW5IsLEgIjqaD769jeNuCfsNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742423394; c=relaxed/simple;
	bh=pWQc8+vNAok8j6HT9KLzGu5hPL0sZHYiLR6wiRTOik4=;
	h=To:Subject:From:Message-Id:Date; b=uOw6klwNVeXnBFO6g6uAyIrielPig/Nrb3dKPkFDn9RVL13xH7ySp0CfsBTVLZcPQBC8Ivz9G6r64COkUMwIKqs2AOrtAuDqJHE83WM1xQZCI0+McLfx98nhSVIwmJVTSQe6p5GvEK2Ycze0d7aPF90LpXhtAMu3Zok3viAOU4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSoPTK8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSoPTK8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0D2C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742423393;
	bh=pWQc8+vNAok8j6HT9KLzGu5hPL0sZHYiLR6wiRTOik4=;
	h=To:Subject:From:Date:From;
	b=NSoPTK8sgnvcSqgZgrr1v/r41Zw6D0kxHCL/gv5P3XM++e0AKikY5rqVfP8vu24Pv
	 UJ90StMPeFNxJY/U46BX1HxcjSYrc8Ck2m8td9Ff1wvJUO1/lT1OZu/UgU2Lgu8QY1
	 sjKGj/t/uo4jXER0bkirOP/c7CxnYPeUsH0L7YbEHhu5zx0x8KvcoF3WY9NRu5MSBF
	 oFMJviiAG8PjUgxThiYkCq1CBQO6G37Fphv6dmnsgqCY0keBvRqY5ADbjehN/DP4zS
	 JUivORDK4cCJLhO0VMVhin+pl4soBBgJDz76WfLAgMA08bNwLijVPZr1RKqP7lTmDl
	 OvPrz4JDdgPWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960EBC36000
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174242339360.11212.1554295119020213635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9770c29c65b4036744f03d0abec003cf417af4b2746b2efed7c28da1c9e973
Date: Wed, 19 Mar 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742423393
