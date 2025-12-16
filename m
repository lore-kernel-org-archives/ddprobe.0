Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261A92F7AAC
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765895634; cv=none; b=L18d4a5ckcP4GJ9cffNdie/GaOwxm3hinbYLXMo/FJQanEwgA/pW119I9tFDuv5WVNeRJMVuZZjF4GSGXMQRt69QiwaJ9sSQbpl1LCOZzTctfX5fdW6hggXXK5vLdtL49/UM68MPGMo/5752bUmjUWoUjdclh2EXuGTwv74L48I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765895634; c=relaxed/simple;
	bh=RimLryLCq4xYS+PGqInQXsEpJyAOZqyVyn/xhRfrorI=;
	h=To:Subject:From:Message-Id:Date; b=If5kHcL5GaDfAfS9QPiX6/B7Wkdb5OvlJS2j0wBp4wEPlBU85A/Gr/4tWDJQOlLrxjsy2TrVbNnLbuV9merlNI1tg1mVQIl5D2+avgyJjXRb7mVdwYrJZi/h9qZUQQpog3RUoamfU4ImAypi1dbCep6f3xkPkkunN3ZP8RuXKm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePF9nN0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePF9nN0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2189C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765895633;
	bh=RimLryLCq4xYS+PGqInQXsEpJyAOZqyVyn/xhRfrorI=;
	h=To:Subject:From:Date:From;
	b=ePF9nN0v52R5L4PTn39tdipU7E15m7MKcud8FjEkAm5NZxiESXOxEGFZzned7qQVT
	 G0lfaBR++Y8DnU9lpcyuyBTPBnR5uvRCci5J31BdpI2uXBijsP+uEa35Wi+k4wR6ka
	 CWWXs9VUjmyQMw3w5a8Kxq9KEmIkz4v0Bia9KTPQEv7BbvLeyY+XDi+EwAz/ZZxLLy
	 B/TnaHrnGxttcUvPQwDGwnuSrVwKuWVILAZp1T63HQhTPOxgBsKlYoVT9CIzcGME7Y
	 RV349/aeP9s0jrxAjchuBIgXGOpYBiqSzH0Ulf+ubu4aPgYRnomlItlyDu6WqajDPz
	 VsaapwXVfRO8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9170ED5E36C
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589563358.11763.16412318966480611732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903412ac7c1a7b88b11e2344dd3b626a62b66c563120b19c0d5f08474ddc0c76
Date: Tue, 16 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765895633
