Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104D8197512
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721901954; cv=none; b=H8AzkG7hwMyhohMspkBm+mbqaPk/ZCaxmDoVpFwctFFdLRus7eArWfl2JBuq/+CpTQi5hzxZnrKxQagGGKEeHgjoIUpVZRv1qo1kcN6VpdazQsm5pXUfDQgXgeWTkloxf8+ygdW2G50dbkanN0KZvs9OMkr6IFdgp56V9ZGEQ/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721901954; c=relaxed/simple;
	bh=DwWeax2cW5n+c6vp0BIqgEs9I6CaSXnpvbC1SMEuWAc=;
	h=To:Subject:From:Message-Id:Date; b=XhwQu6oT80Wip+A4ZqG4VcPL7mZnXP2LiGGOgL3io017llZ78R1fefmEEnw8pPEy/R5klf6NK7W03EhRNc7rLaLLMesuWXr/tl7zZRWIt0bY2QpgnrABUmOHpBRvgHeASSkuTtEffsMJ1shHuhrZm1l5/Ouz+1Aj5WamvoUrLtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3HMED7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3HMED7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A87C32786
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721901953;
	bh=DwWeax2cW5n+c6vp0BIqgEs9I6CaSXnpvbC1SMEuWAc=;
	h=To:Subject:From:Date:From;
	b=E3HMED7/tNi1seyB65RvP3t04Oop/70VU/TEf1vyzEKKlTWSMB8pk1+HiqTOx8DAN
	 DJWVu1YQOf4GnzQqYfKkyoZfgDEfMrUf+/SCcamiTzAzN733d7JY7QkefiulbaGAua
	 DmUVZBWlo6PwnSZIWM0ap2VYcgIOzytpagmnRl0Mqu+hfGF3fAPvs2gYzvUEX1bA+J
	 rDdqThziHdbPHA2yr2Mho/CUnYmCSL1bDuXX3+8WMTDLiDHf6NIPW3MzdLIHayzUin
	 dlyUvVUkPcHU24j7zm+fkCBb2mz3YR4Ae7dnsfsq6Z8wHAC8Io23+q59gulHwxXhvj
	 3mqJXQoIdVXiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950DAC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172190195360.26463.1003645621198936996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1082d034b6cb58ab8559e501b13ff9510879b3b9b22e1a4f287a11fc22901dac
Date: Thu, 25 Jul 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721901953
