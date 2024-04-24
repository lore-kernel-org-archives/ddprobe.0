Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC6136D
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 06:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713941423; cv=none; b=BYolnMELYeIQ+uoVxeXfMKyNJ495lxXeinfQ/Jv0O1CtFoifD6Nc5nngFovOQIQrkwMq8LBS3fHdnCdHAqL0b9EZ6k9sjfmpy3WFOs6G84WNMoE3nXQadHL1cn3jaK8vFSWgy+Vgl/Yja9kuKRKZCfvTkJ3TnTJmYloGMB5blI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713941423; c=relaxed/simple;
	bh=jpvi4z0LmfBLRnkGIDIk3mYPdNYw3iKN0DJZ0qoEKxw=;
	h=To:Subject:From:Message-Id:Date; b=qV2u4sz5PDQmlUHpOAXBWO88XjrCSEYo3aFLKegVW/3SuPIW9gE3DdWFvOFHdoycTLQ6VQG2vExy4Z0QOX64sToBcJsQ5cwkzO2RErHS3qK6jzldIQTn3xJqe/RcSgbGb9ElwWAKCtEhuhOIcWagPgZNzX2OYfA3cz3pQYGgv8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKwaDgoF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKwaDgoF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D98C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 06:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713941422;
	bh=jpvi4z0LmfBLRnkGIDIk3mYPdNYw3iKN0DJZ0qoEKxw=;
	h=To:Subject:From:Date:From;
	b=eKwaDgoFJS/hx1Z+viKHAq73Y+DojyUu32tr1+e8kHNXy1fBEQh0bXv/j9eICqfPQ
	 Lpzcegcw4KtkwrUJuYMTkAfoOGRyVWfT0/X1kFvpXm3t+wYfQ6+mmmP08RJDG49wyj
	 ZoJ0M0RAMJeGu8reoXHDP5/ysvz2vaO9IGz8ZiZXJlmfvvaw+vCW+rnPiT5hbqwix0
	 7kvVwinyMImobAf11wFqrRj/bY+3cMJiF79jnSxNDxz9dRNE37tUvO9JZkj+hC3Ldz
	 ptM7EvsFOJ2xbZa7yPvGuxpLPkRl7NQUFsq9mYbZkhD6hVm1FI98RzvRpAeflVjCj2
	 wxfS4mcpbUEJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25A0C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 06:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171394142278.31874.14887934472354547268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083a06bb76c8d25738e7787a9f18d7ab9e1da32f1f0d14f26cb67db0ea0bb30a
Date: Wed, 24 Apr 2024 06:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713941422
