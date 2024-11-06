Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DEA13541B
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730868354; cv=none; b=p1lCj+00F7+MR/AqTaooRQyQcAIE7IIIxkMcCIBTSDcCEIhGsdtnO2ue0U52B4C7CxjuSKTeb8vNbL5y6YeQfd3LUxgy/Mbf1efqD29snRmIRHpWf+EI9OWcNYzEMlxOP77uZYdGkBU64xZIEN9OmQ3bfB/edbtPlP9DK9V182g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730868354; c=relaxed/simple;
	bh=DtT6Rk8WlqaovvjUZjgiQJbP8XRsPKANtzC44+gWTkg=;
	h=To:Subject:From:Message-Id:Date; b=XJL7RjZZXoZmDeif4bRLyw74PA9I01PUJDE8fHh2T0OuIyvFOEeLNr7Sv6XGgBNokF4afhMkI+YK5UFbLvxQ9iPUTXHTvG3jl5udzQqq+qAY/6cv+wS38gnAta8ugh9VqTch3BTuTzB6fLQjEAwVfk5c7joBuV9qSN+IfsCjfrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwgQT8kF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwgQT8kF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4768C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730868353;
	bh=DtT6Rk8WlqaovvjUZjgiQJbP8XRsPKANtzC44+gWTkg=;
	h=To:Subject:From:Date:From;
	b=QwgQT8kFCTBevAMi55c3q29ABhi5ei4RGnVcyxjF7QXoQ2ahs+BKJGmsYV4B5hTEK
	 cLffzCNl9HOYnmOkUljolLKv+ElRYypwHee1bJbnun1pSzWjkEJcB3NXPWfj5Ty8cC
	 CXrURCBqE3RqTUF8YQzbrg/0YoEihFGSO3ZWLJAgs274HvhfEsFqz1lo0lwr5bb5cb
	 PBT5sAcs28M5GZW7PQNPC8r+aP/O9Y/n8UXYHrIYm8up0j0iEwp3Fb3ruHAEd0nZRc
	 FPx/s/ofJltqmIvKd0YP6uF+pjxWDqhLd6xK0w6ZmFjEkJdD6o66P99WMvcbmzCaqU
	 Lag9V3Gv13Vyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0445D1CA17
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173086835364.19168.12202898518054594235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f88df25e20cf684225fc47c1bad8a6a29e92818f4c302a1cd6009c1a7ffe83d
Date: Wed, 06 Nov 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730868353
