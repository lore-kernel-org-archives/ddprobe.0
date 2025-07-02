Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16203195
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751414995; cv=none; b=ddRA0EoUVG7XCjWruxrEjuQ/oJDshrw0m6+KspbIQ1CNlBhPO2U+v1aqQYKBEIXlXeZSdrYTOJv482mFC6JqXXBOVYfpMHO7ezuG32r78UCUM2KNPQ9Rhvh7REX9WwxxmVawUH8IW75/I4wfpqnxecmCc5Q+4HiP9v+RpH2rP3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751414995; c=relaxed/simple;
	bh=wuRansehtE9NYHspjxDmBUT9DOVXcb+Cd+LZlfet48k=;
	h=To:Subject:From:Message-Id:Date; b=OxVInzdbdAjKz9dgHCE9sgaXjPG7QgjIutSvWMY0wbtwKDuFFYeUv4JIQZMfHrz+3YbFrigjx3ZZjeh3Qdo6PbrC+ptFs3aMFKfNWcRC9rTswAo520aKDBVU9FUq+3Xi4z8szoGfKfwTXLqxkjBQZmg21uAyr+9FJsVqbcJRht0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHtznLk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHtznLk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B03EC4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751414993;
	bh=wuRansehtE9NYHspjxDmBUT9DOVXcb+Cd+LZlfet48k=;
	h=To:Subject:From:Date:From;
	b=WHtznLk7b1GWCVYxsdiY5ok8W+KxLKjUAc/5wnt/Y02x98k3h0ecqDNPGB7Q8As+O
	 NZodgF6nGuKHENK77WSSBRUwWWn7AMGXGRjatfxY7LNoH8NMkz16f47tqUBJrUrKUS
	 Bjr4+x3M0Dl31t7qdQwc+cLayDGyGJDNel8wLy+tkHUI/wHlrG6wx5Wy+7rhEUlLvY
	 MWHH2azKRYcGam2hyLbIXvsUtLqj8XNDw2Tos2zKd6gCLYjg/PZQ3MmE8DCB9Cq44l
	 53pEmuj57gS/HGiUklm6dLF/BXOSqmhdoibLjcRL1KV/dZoFhFguk+aceVsDx2pSoY
	 wEiNs5nCpnguw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12EC83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141499357.13501.5045828828307448882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a25c59884f2da7083368113389d7d9a1703686d10698c4f56ff2d53af33a8336
Date: Wed, 02 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751414993
