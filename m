Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC9329A5
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750208394; cv=none; b=LVpk9Ml9N0/Ougu9ftgzOGKhlxVr9sPUiDxfHBk0x5mp5lNOz8/QNV9bsAfle7VNz1uIW8a45+fwxoUenGgpBu9fv6YUa4n47YH+90SwvyGiLUUHYf2bI+69pMpJ+CXvzyfsDd+diGSYi0oBG7DS8DvthnKO3Q2KwOLnLfWbXHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750208394; c=relaxed/simple;
	bh=WTl+TdaZ0DKazDM3RPspAkZPpOLgW+YBo+QZi0VyQbM=;
	h=To:Subject:From:Message-Id:Date; b=TLsXDL/8sx+/51LA0RG3V55v/df8o90M2yge2NpV8cktOF2fMkzV5oN++UxXeqernQACnXmI45QVHYaVJ55o4bJe+HcecXfa/pIcCu2fOd19e96IySjb//dm+gD5SQOiU+ynG/iBLM9/fucYTvYKVijvTlYIibRh1tlb3s2pOuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrU+QX9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrU+QX9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62CCC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750208393;
	bh=WTl+TdaZ0DKazDM3RPspAkZPpOLgW+YBo+QZi0VyQbM=;
	h=To:Subject:From:Date:From;
	b=CrU+QX9isFchtFVNXyd3K2RhiVtpzTsoVJgr9sm3efFbSEA23ej4p7/KgpxZ4JMBm
	 sqL4AHwk+gsB0+lCqLcHEO11T6fFzwlspHriziz31hB9roRo7Bw6pTFFvuZoSLRoWQ
	 zlTaEk4CO2Duc0LfFhrZsqBlM3X6WvCzFK+giXrFQ2sO1cBr3ZBiQLWy94kcLopuYy
	 tYhEpGG9JY6xb8KCPXlW2/KZVU+hS1LejfqmZ5+oXsmezRNUzViHG7Vmf0Trbdyqht
	 j8T2AE23QAbNHvARdQYYgBwZwvqFoj6VKrC9ZTo2SkU/+bJMUrTLsGIgF9RWMAKkyd
	 JdFYbBSgAsnMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93421C71136
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020839357.18260.17632629423994543641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d64a150ebeb0b48a6887f0feb5ab86370146c70465e7447e1daab972600b582
Date: Wed, 18 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750208393
